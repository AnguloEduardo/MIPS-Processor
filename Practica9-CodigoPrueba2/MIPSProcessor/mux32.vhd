----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:08:04 09/13/2020 
-- Design Name: 
-- Module Name:    mux32 - Behavioral 
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

entity mux32 is
	port ( Input : in  STD_LOGIC_VECTOR (1023 downto 0);
			 ReadData : out  STD_LOGIC_VECTOR (31 downto 0);
			 Enable : in  STD_LOGIC_VECTOR(4 downto 0));
end mux32;

architecture Behavioral of mux32 is
begin
with Enable select ReadData <= 
		Input( 31 downto   0) when "00000",
		Input( 63 downto  32) when "00001",
		Input( 95 downto  64) when "00010",
		Input(127 downto  96) when "00011",
		Input(159 downto 128) when "00100",
		Input(191 downto 160) when "00101",
		Input(223 downto 192) when "00110",
		Input(255 downto 224) when "00111",
		Input(287 downto 256) when "01000",
		Input(319 downto 288) when "01001",
		Input(351 downto 320) when "01010",
		Input(383 downto 352) when "01011",
		Input(415 downto 384) when "01100",
		Input(447 downto 416) when "01101",
		Input(479 downto 448) when "01110",
		Input(511 downto 480) when "01111",
		Input(543 downto 512) when "10000",
		Input(575 downto 544) when "10001",
		Input(607 downto 576) when "10010",
		Input(639 downto 608) when "10011",
		Input(671 downto 640) when "10100",
		Input(703 downto 672) when "10101",
		Input(735 downto 704) when "10110",
		Input(767 downto 736) when "10111",
		Input(799 downto 768) when "11000",
		Input(831 downto 800) when "11001",
		Input(863 downto 832) when "11010",
		Input(895 downto 864) when "11011",
		Input(927 downto 896) when "11100",
		Input(959 downto 928) when "11101",
		Input(991 downto 960) when "11110",
		Input(1023 downto 992) when "11111",
	   (others => '0') when OTHERS;
end Behavioral;

