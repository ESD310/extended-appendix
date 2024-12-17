----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.11.2024 10:49:14
-- Design Name: 
-- Module Name: Sample2TOF - Behavioral
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


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity Sample2TOF is

  Port (
  SampleCount : in std_logic_vector (15 downto 0);
  TOF_out : out std_logic_vector (12 downto 0)
   );
end Sample2TOF;

architecture Behavioral of Sample2TOF is
   constant correctionNumber : unsigned := TO_UNSIGNED(78, 7); 
   constant ScalingFactor : unsigned := to_unsigned(100000, 17);
   constant SamplingFreq : unsigned := to_unsigned(480770, 20);
   signal tempScaled : unsigned (32 downto 0);
     
begin

 tempScaled <= resize(unsigned(SampleCount)* scalingFactor, 33);
 
 TOF_out <= std_logic_vector(resize(tempScaled / samplingFreq,13)-correctionNumber);
 
end Behavioral;
