----------------------------------------------------------------------------------
-- Company: AAU
-- Engineer: Axel Olsson & Jonas Rasmussen
-- 
-- Create Date: 15.10.2024 11:11:48
-- Design Name: 
-- Module Name: Topm - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.ALL;



entity AlgM is
    generic (
    c : unsigned (9 downto 0):= "0101010111";
    scalingFactor : signed := "01111101000" --1000 gange signed
    );
  Port (
  reset : in std_logic;
  
  clk_alg : in std_logic;
  ToFDataReady : in std_logic;
  dataValidOut : out std_logic;
  ToF : in std_logic_vector (12 downto 0);
  
  satPos_x : in std_logic_vector (21 downto 0) := "0000000000000000000000";
  satPos_y : in std_logic_vector (21 downto 0) := "0000000000000000000000";
  satPos_z : in std_logic_vector (21 downto 0) := "0000000000000000000000";
  
  lastPos_x : in std_logic_vector (21 downto 0) := "0000011000011010100000"; -- Start value of 100.000
  lastPos_y : in std_logic_vector (21 downto 0) := "0000011000011010100000";
  lastPos_z : in std_logic_vector (21 downto 0) := "0000011000011010100000";
  
  newPos_x : out std_logic_vector (21 downto 0) := "0000011000011010100000";
  newPos_y : out std_logic_vector (21 downto 0) := "0000011000011010100000";
  newPos_z : out std_logic_vector (21 downto 0) := "0000011000011010100000"
 
   );
end AlgM;

architecture Behavioral of AlgM is

    type calcStatesType is (IDLE, CALCULATE1, SQRT, CALCULATE2, DATA_READY);
    signal calcStates : calcStatesType := IDLE;
    signal calculate : std_logic := '0';
    signal sum_of_squares : std_logic_vector(47 downto 0); -- Skal egentlig være 44b, men Cordic kræver 48...
    signal sqrtDataOutAvailable : std_logic;
    signal vekt_len : std_logic_vector (31 downto 0);
  

begin

cordic_SqrtRoot : entity work.cordic_0
port map(
 aclk => clk_alg,
    s_axis_cartesian_tvalid => calculate,
    s_axis_cartesian_tdata => sum_of_squares,
    m_axis_dout_tvalid => sqrtDataOutAvailable,
    m_axis_dout_tdata => vekt_len
    );


process (clk_alg, TofDataReady, reset)
    variable distance : unsigned (21 downto 0);
    variable vekt_x, vekt_y, vekt_z : signed (21 downto 0);
    variable scaled_x, scaled_y, scaled_z : signed (32 downto 0);
    variable square_x, square_y, square_z : signed(43 downto 0); -- For at holde kvadraterne (20-bit * 20-bit)
    variable vekt_dir_x, vekt_dir_y, vekt_dir_z : signed (10 downto 0);
    variable SOSTemp : signed (47 downto 0);
    variable newPosTemp_x,newPosTemp_y,newPosTemp_z : signed (32 downto 0);


begin
    if (reset = '1') then
    newPos_x <= "0000011000011010100000";
    newPos_y <= "0000011000011010100000";
    newPos_z <= "0000011000011010100000";
    dataValidOut <= '0';
    end if;
    if rising_edge(clk_alg) then
        case calcStates is
        
        when IDLE =>
            if (ToFDataReady > '0') then
            calcStates <= CALCULATE1;
            end if;
        
        when CALCULATE1 =>
        
        distance := resize(c * unsigned(ToF),22);
        
        vekt_x := (signed(lastPos_x) - signed(satPos_x));
        vekt_y := (signed(lastPos_y) - signed(satPos_y));
        vekt_z := (signed(lastPos_z) - signed(satPos_z));
  
        square_x := (vekt_x * vekt_x);
        square_y := (vekt_y * vekt_y);
        square_z := (vekt_z * vekt_z);
        
        SOSTemp := RESIZE(square_x,48);
        SOSTemp := SOSTemp + RESIZE(square_y,48);
        SOSTemp := SOSTemp + RESIZE(square_z,48);
        
        sum_of_squares <= std_logic_vector(SOSTemp);

        calcStates <= SQRT;
        
        when SQRT =>
            calculate <= '1';
            
            if (sqrtDataOutAvailable = '1') then
            calculate <= '0';
            dataValidOut <= '0';
            calcStates <= CALCULATE2;
            end if;
        
        when CALCULATE2 =>
        
            scaled_x := vekt_x * scalingFactor; --Udvider vores vektor med skalering, for at kunne dividere
            scaled_y := vekt_y * scalingFactor;
            scaled_z := vekt_z * scalingFactor;
            
            
            vekt_dir_x := resize(scaled_x / signed(vekt_len),11);
            vekt_dir_y := resize(scaled_y / signed(vekt_len), 11);
            vekt_dir_z := resize(scaled_z / signed(vekt_len), 11);
            
            newPosTemp_x := (vekt_dir_x * signed(distance));
            newPosTemp_x := ((newPosTemp_x/scalingFactor)+signed(satPos_x));
           
            newPosTemp_y := (vekt_dir_y * signed(distance));
            newPosTemp_y := ((newPosTemp_y/scalingFactor)+signed(satPos_y));
            
            newPosTemp_z := (vekt_dir_z * signed(distance));
            newPosTemp_z := ((newPosTemp_z/scalingFactor)+signed(satPos_z));
            
            newPos_x <= std_logic_vector(resize(newPosTemp_x,22));
            newPos_y <= std_logic_vector(resize(newPosTemp_y,22));
            newPos_z <= std_logic_vector(resize(newPosTemp_z,22));
            calcStates <= DATA_READY; 
                    
        when DATA_READY =>
            dataValidOut <= '1';

            calcStates <= IDLE;
        
        end case;
end if;    
    
    
  
      
    
end process;


end Behavioral;
