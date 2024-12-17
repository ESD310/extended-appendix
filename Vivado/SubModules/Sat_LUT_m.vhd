----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2024 13:40:02
-- Design Name: 
-- Module Name: LUT test - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sat_LUT_m is
    Port (
        clk       : in  std_logic;
        address_LUT   : in  std_logic_vector(1 downto 0); -- Det akn vælge en af de 4 positioner 00,01,10,11
        sat_pos_x_LUT     : out std_logic_vector(21 downto 0);
        sat_pos_y_LUT     : out std_logic_vector(21 downto 0);
        sat_pos_z_LUT     : out std_logic_vector(21 downto 0)
    );
end sat_LUT_m;

architecture Behavioral of sat_LUT_m is
    
    type position_type is record -- record er lidt det samme som en struct i C
        x : std_logic_vector(21 downto 0);
        y : std_logic_vector(21 downto 0);
        z : std_logic_vector(21 downto 0);
    end record;
    
    type position_array is array (0 to 3) of position_type; -- gemmer positionerne i et array
    
    signal positions : position_array := ( -- Øverst er pos 00(10/10/10) så 01 (1/1/1) så 10(-10/-10-/10) så 11(-1/-1/-1)
        (x => "0000100101101110000100", y => "1111010000111011100000", z => "0000110110110110111100"), 
        (x => "1111010110100110000000", y => "1111010000111011100000", z => "0000110111001000001000"),
        (x => "0000001000001001111000", y => "0000111001001000010000", z => "0000110111000101000000"), -- negative bliver omdannet ved signed ved 2's kompliment
        (x => "0000000000000000000000", y => "0000000000000000000000", z => "0000000000000000000000") -- Not Used
    );
begin
    process (clk)
    begin
        if rising_edge(clk) then
            sat_pos_x_LUT <= positions(TO_INTEGER(Unsigned(address_LUT))).x; -- .x gør at vi referere til en specifik plads i vores record. Adresse pladsen er en int.
            sat_pos_y_LUT <= positions(TO_INTEGER(Unsigned(address_LUT))).y;
            sat_pos_z_LUT <= positions(TO_INTEGER(Unsigned(address_LUT))).z;
        end if;
    end process;
    
end Behavioral;


