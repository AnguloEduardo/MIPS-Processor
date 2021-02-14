----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo y Belia Baez
-- 
-- Create Date:    19:28:15 09/04/2020 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity ROM is
	Generic (n : integer := 32);
	Port	(
		READ_ADDRESS : in STD_LOGIC_VECTOR(n-1 downto 0);
		INSTRUCTION : out STD_LOGIC_VECTOR(n-1 downto 0));
end ROM;

architecture Behavioral of ROM is
begin
	process(READ_ADDRESS)
		subtype word is STD_LOGIC_VECTOR(31 downto 0);
		type ROM_type is array (0 TO 31) of word;
		constant ROM : ROM_type := (	"10001100000000010000000000000100", --lw      r1, 0(r0)
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"11111100000000000000000000001000", --jr r0
												OTHERS => (others => '0'));
	begin

		INSTRUCTION <= ROM(TO_INTEGER(shift_right(unsigned(READ_ADDRESS), 2)));
	end process;

end Behavioral;