----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo y Belia Baez
-- 
-- Create Date:    13:28:51 09/16/2020 
-- Design Name: 
-- Module Name:    FlipFlopD - Behavioral 
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

entity FlipFlopD is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC := '0';
           Q : out  STD_LOGIC := '0';
			  ENABLE : in STD_LOGIC := '0');
end FlipFlopD;

architecture Behavioral of FlipFlopD is
begin
	process(CLK, ENABLE)
	begin
		if ENABLE = '1' and CLK'event and CLK = '0' 
			then Q <= D after 5 ns;
		end if;
	end process;
end Behavioral;