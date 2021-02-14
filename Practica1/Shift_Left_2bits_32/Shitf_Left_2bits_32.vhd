----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo Martinez	
-- 
-- Create Date:    20:33:56 08/22/2020 
-- Design Name: 
-- Module Name:    Shitf_Left_2bits_32 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Shitf_Left_2bits_32 is
    Port ( A : in std_logic_vector (31 downto 0) := (others => '0');
           B : out std_logic_vector (31 downto 0) := (others => '0'));
end Shitf_Left_2bits_32;

architecture Behavioral of Shitf_Left_2bits_32 is
signal r_shift : std_logic_vector (31 downto 0) := (others => '0');
signal r_unsigned_l : unsigned (31 downto 0) := (others => '0');

begin
	process (A, r_shift, r_unsigned_l) is
	begin
		r_shift <= A;
		r_unsigned_l <= shift_left(unsigned(r_shift), 2);
		B <= std_logic_vector(r_unsigned_l);
	end process;
end architecture Behavioral;