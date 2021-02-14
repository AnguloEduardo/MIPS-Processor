----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo y Belia Baez
-- 
-- Create Date:    12:07:31 09/13/2020 
-- Design Name: 
-- Module Name:    decorder - Behavioral 
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

entity decoder is
Port ( SELECTOR : in  STD_LOGIC_VECTOR (4 downto 0);
       ENABLER : out  STD_LOGIC_VECTOR (31 downto 1);
       REGWRITE : in  STD_LOGIC);
end decoder;

architecture Behavioral of decoder is

begin
process (SELECTOR, REGWRITE)
begin
	if (REGWRITE = '1') then
		case SELECTOR is
			when "00001" => ENABLER <= "000" & x"0000001";
			when "00010" => ENABLER <= "000" & x"0000002";
			when "00011" => ENABLER <= "000" & x"0000004";
			when "00100" => ENABLER <= "000" & x"0000008";
			when "00101" => ENABLER <= "000" & x"0000010";
			when "00110" => ENABLER <= "000" & x"0000020";
			when "00111" => ENABLER <= "000" & x"0000040";
			when "01000" => ENABLER <= "000" & x"0000080";
			when "01001" => ENABLER <= "000" & x"0000100";
			when "01010" => ENABLER <= "000" & x"0000200";
			when "01011" => ENABLER <= "000" & x"0000400";
			when "01100" => ENABLER <= "000" & x"0000800";
			when "01101" => ENABLER <= "000" & x"0001000";
			when "01110" => ENABLER <= "000" & x"0002000";
			when "01111" => ENABLER <= "000" & x"0004000";
			when "10000" => ENABLER <= "000" & x"0008000";
			when "10001" => ENABLER <= "000" & x"0010000";
			when "10010" => ENABLER <= "000" & x"0020000";
			when "10011" => ENABLER <= "000" & x"0040000";
			when "10100" => ENABLER <= "000" & x"0080000";
			when "10101" => ENABLER <= "000" & x"0100000";
			when "10110" => ENABLER <= "000" & x"0200000";
			when "10111" => ENABLER <= "000" & x"0400000";
			when "11000" => ENABLER <= "000" & x"0800000";
			when "11001" => ENABLER <= "000" & x"1000000";
			when "11010" => ENABLER <= "000" & x"2000000";
			when "11011" => ENABLER <= "000" & x"4000000";
			when "11100" => ENABLER <= "000" & x"8000000";
			when "11101" => ENABLER <= "001" & x"0000000";
			when "11110" => ENABLER <= "010" & x"0000000";
			when "11111" => ENABLER <= "100" & x"0000000";
			when OTHERS => ENABLER <= (others => '0');
		end case;
	else
		ENABLER <= (others => '0');
	end if;
end process;

end Behavioral;

