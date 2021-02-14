----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo Martinez
-- 
-- Create Date:    20:47:59 08/22/2020 
-- Design Name: 
-- Module Name:    Multiplexor_2a1_32bits - Behavioral 
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

entity Multiplexor_2a1_5bits is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : out  STD_LOGIC_VECTOR (31 downto 0);
           D : in  STD_LOGIC);
end Multiplexor_2a1_5bits;

architecture Behavioral of Multiplexor_2a1_5bits is
begin
	process (A, B, D) is
	begin
		if D = '0' then
			C <= A;
		else
			C <= B;
		end if;
	end process;

end Behavioral;