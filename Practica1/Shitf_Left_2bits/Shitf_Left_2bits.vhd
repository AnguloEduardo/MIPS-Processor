----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo Martinez
-- 
-- Create Date:    20:30:19 08/22/2020 
-- Design Name: 
-- Module Name:    Shitf_Left_2bits - Behavioral 
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

entity Shitf_Left_2bits is
    Port ( A : in  STD_LOGIC_VECTOR (25 downto 0);
           B : out  STD_LOGIC_VECTOR (27 downto 0));
end Shitf_Left_2bits;

architecture Behavioral of Shitf_Left_2bits is
begin
	B <= std_logic_vector (a & "00");
end Behavioral;

