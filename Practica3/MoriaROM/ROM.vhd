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
		constant ROM : ROM_type := (	x"00000001",
												x"00000002",
												x"00000003",
												x"00000004",
												x"00000005",
												x"00000006",
												x"00000007",
												x"00000008",
												x"00000009",
												x"0000000A",
												x"0000000B",
												x"0000000C",
												x"0000000D",
												x"0000000E",
												x"0000000F",
												OTHERS => (others => '0'));
	begin

		INSTRUCTION <= ROM(TO_INTEGER(unsigned(READ_ADDRESS)/4));
	end process;

end Behavioral;