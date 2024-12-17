----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.11.2024 09:48:37
-- Design Name: 
-- Module Name: PosUpdateLatch - Behavioral
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

entity PosUpdateLatch is
 Port (
 clk_12M : in std_logic;
 CS : in std_logic;
 DataValidOut : in std_logic;
 posUpdateFlag : out std_logic := '0'
 

 
  );
end PosUpdateLatch;

architecture Behavioral of PosUpdateLatch is

signal lastDataValidOut : std_logic := '0';
signal lastCS : std_logic := '0';

begin

process (clk_12M)
begin
if rising_edge(clk_12M) then
    if (lastDataValidOut = '0' and DataValidOut = '1') then 
    posUpdateFlag <= '1';
    lastDataValidOut <= DataValidOut;
    else 
    lastDataValidOut <= DataValidOut;
    end if;
    
    if (lastCS = '1' and CS = '0') then
    posUpdateFlag <= '0';
    lastCS <= CS;
    else
    lastCS <= CS;
    end if;   
end if;
end process;

end Behavioral;
