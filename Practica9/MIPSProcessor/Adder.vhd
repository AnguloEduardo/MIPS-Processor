----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Eduardo Angulo Martinez
-- 
-- Create Date:    18:57:51 08/18/2020 
-- Design Name: 	 
-- Module Name:    Adder - Behavioral 
-- Project Name:   Componentes generales del CPU
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

entity Adder is
	generic (
		bits : integer := 32);
	port (
		A : in std_logic_vector (bits -1 downto 0);
		B : in std_logic_vector (bits -1 downto 0);
		C : out std_logic_vector (bits -1 downto 0));
end Adder;

architecture Behavioral of Adder is
begin
	process (a, b) is
   begin
		C <= std_logic_vector(unsigned(a) + unsigned(b));
   end process;
end Behavioral;