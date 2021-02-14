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
		constant ROM : ROM_type := (	"00000000000000000000000000000000", --nop
												"00100000001000010000000000000001", --addi    r1, r1, 1
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000010000000000000001", --addi    r1, r1, 1
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000010000000000000010", --addi    r1, r1, 2
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000010000000000000100", --addi    r1, r1, 4
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000010000000000001000", --addi    r1, r1, 8
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000010000000000010000", --addi    r1, r1, 16
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000010000000000100000", --addi    r1, r1, 32
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000010000000001000000", --addi    r1, r1, 64
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000011111111111000000", --addi    r1, r1, -64
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000011111111111100000", --addi    r1, r1, -32
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000011111111111110000", --addi    r1, r1, -16
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000011111111111111000", --addi    r1, r1, -8
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000011111111111111100", --addi    r1, r1, -4
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"00100000001000011111111111111110", --addi    r1, r1, -2
												"10101100000000010000000000000000", --sw      r1, 0(r0)
												"11111100000000000000000000001000", --jr r0
												OTHERS => (others => '0'));
	begin

		INSTRUCTION <= ROM(TO_INTEGER(shift_right(unsigned(READ_ADDRESS), 2)));
	end process;

end Behavioral;