----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo Martinez
-- 
-- Create Date:    20:36:19 08/22/2020 
-- Design Name: 
-- Module Name:    Prgram_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.all;

entity Program_Counter is
    Port ( D : in  STD_LOGIC_VECTOR (31 downto 0);
           Q : out  STD_LOGIC_VECTOR (31 downto 0);
           RESET : in  STD_LOGIC;
           CLK : in  STD_LOGIC);
end Program_Counter;

architecture Behavioral of Program_Counter is
begin
	process (CLK, RESET) is
	begin
		if (RESET = '0') then
			Q <= (others => '0');
		elsif falling_edge (CLK) then
			Q <= D;
		end if;
	end process;
end Behavioral;

