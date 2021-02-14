----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo Martinez
-- 
-- Create Date:    20:40:55 08/22/2020 
-- Design Name: 
-- Module Name:    Sign_Extender - Behavioral 
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

entity Sign_Extender is
    Port ( A : in  STD_LOGIC_VECTOR (15 downto 0);
           B : out  STD_LOGIC_VECTOR (31 downto 0));
end Sign_Extender;

architecture Behavioral of Sign_Extender is
begin
	process (A) is
	begin
		if (A(15) = '1') then
			B <= "1111111111111111" & A;
		else
			B <= "0000000000000000" & A;
		end if;
	end process;

end Behavioral;

