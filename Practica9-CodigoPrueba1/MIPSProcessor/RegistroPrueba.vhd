----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:46:53 09/16/2020 
-- Design Name: 
-- Module Name:    bitistroPrueba - Behavioral 
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

entity Registro32bits is
	Port ( CLK : in STD_LOGIC;
			 D : in STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
			 Q : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
			 ENABLE : in STD_LOGIC := '0');

end Registro32bits;

architecture Behavioral of Registro32bits is

component FlipFlopD
	Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC := '0';
           Q : out  STD_LOGIC := '0';
			  ENABLE : in STD_LOGIC := '0');
end component;
 
begin

bit00 : FlipFlopD port map (CLK, D(0), Q(0), ENABLE);
bit01 : FlipFlopD port map (CLK, D(1), Q(1), ENABLE);
bit02 : FlipFlopD port map (CLK, D(2), Q(2), ENABLE);
bit03 : FlipFlopD port map (CLK, D(3), Q(3), ENABLE);
bit04 : FlipFlopD port map (CLK, D(4), Q(4), ENABLE);
bit05 : FlipFlopD port map (CLK, D(5), Q(5), ENABLE);
bit06 : FlipFlopD port map (CLK, D(6), Q(6), ENABLE);
bit07 : FlipFlopD port map (CLK, D(7), Q(7), ENABLE);
bit08 : FlipFlopD port map (CLK, D(8), Q(8), ENABLE);
bit09 : FlipFlopD port map (CLK, D(9), Q(9), ENABLE);
bit10 : FlipFlopD port map (CLK, D(10), Q(10), ENABLE);
bit11 : FlipFlopD port map (CLK, D(11), Q(11), ENABLE);
bit12 : FlipFlopD port map (CLK, D(12), Q(12), ENABLE);
bit13 : FlipFlopD port map (CLK, D(13), Q(13), ENABLE);
bit14 : FlipFlopD port map (CLK, D(14), Q(14), ENABLE);
bit15 : FlipFlopD port map (CLK, D(15), Q(15), ENABLE);
bit16 : FlipFlopD port map (CLK, D(16), Q(16), ENABLE);
bit17 : FlipFlopD port map (CLK, D(17), Q(17), ENABLE);
bit18 : FlipFlopD port map (CLK, D(18), Q(18), ENABLE);
bit19 : FlipFlopD port map (CLK, D(19), Q(19), ENABLE);
bit20 : FlipFlopD port map (CLK, D(20), Q(20), ENABLE);
bit21 : FlipFlopD port map (CLK, D(21), Q(21), ENABLE);
bit22 : FlipFlopD port map (CLK, D(22), Q(22), ENABLE);
bit23 : FlipFlopD port map (CLK, D(23), Q(23), ENABLE);
bit24 : FlipFlopD port map (CLK, D(24), Q(24), ENABLE);
bit25 : FlipFlopD port map (CLK, D(25), Q(25), ENABLE);
bit26 : FlipFlopD port map (CLK, D(26), Q(26), ENABLE);
bit27 : FlipFlopD port map (CLK, D(27), Q(27), ENABLE);
bit28 : FlipFlopD port map (CLK, D(28), Q(28), ENABLE);
bit29 : FlipFlopD port map (CLK, D(29), Q(29), ENABLE);
bit30 : FlipFlopD port map (CLK, D(30), Q(30), ENABLE);
bit31 : FlipFlopD port map (CLK, D(31), Q(31), ENABLE);
  
end Behavioral;