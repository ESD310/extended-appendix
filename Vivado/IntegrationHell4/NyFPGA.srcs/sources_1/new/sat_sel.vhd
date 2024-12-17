----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.10.2024 08:37:11
-- Design Name: 
-- Module Name: sat_sel - Behavioral
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

entity sat_sel is
    Port (
        clk          : in  std_logic;          
        address      : in  std_logic_vector(1 downto 0); 
        sat_pos_x    : out std_logic_vector(21 downto 0); 
        sat_pos_y    : out std_logic_vector(21 downto 0); 
        sat_pos_z    : out std_logic_vector(21 downto 0)  
    );
end sat_sel;

architecture Behavioral of sat_sel is


    component Sat_LUT_m -- komponenten LUT og den ind og udgange 
        Port (
            clk           : in  std_logic;
            address_LUT   : in  std_logic_vector(1 downto 0);
            sat_pos_x_LUT : out std_logic_vector(21 downto 0);
            sat_pos_y_LUT : out std_logic_vector(21 downto 0);
            sat_pos_z_LUT : out std_logic_vector(21 downto 0)
        );
    end component;

    signal sat_x : std_logic_vector(21 downto 0); -- de lokale signaler der bliver brugt 
    signal sat_y : std_logic_vector(21 downto 0);
    signal sat_z : std_logic_vector(21 downto 0);
   -- signal last_address : unsigned (1 downto 0) := "00";

begin
    sat_LUT_instance: Sat_LUT_m -- hvordan LUT-komponenten og denne komponent hænger sammen 
        Port Map (
            clk => clk,
            address_LUT => address,
            sat_pos_x_LUT => sat_x,
            sat_pos_y_LUT => sat_y,
            sat_pos_z_LUT => sat_z
        );


    process (clk) -- Processen der siger hvad vi gør. 
    begin
        if rising_edge (clk) then
           -- if address /= last_address then -- tjekker om vi har fået en ny adresse ind. 
                sat_pos_x <= sat_x;
                sat_pos_y <= sat_y;
                sat_pos_z <= sat_z;
              --  last_address <= address;
            -- end if;
          end if;
       end process;   

end Behavioral;
