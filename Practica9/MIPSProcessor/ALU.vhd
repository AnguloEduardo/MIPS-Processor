----------------------------------------------------------------------------------
-- Company: 	ITESM
-- Engineer: 	Belia Báez y Eduardo Angulo
-- 
-- Create Date:    12:05:30 08/29/2020 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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


entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           B : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           CNTRL : in  STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
           RESULT : out  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           ZEROFLAG : out  STD_LOGIC := '0');
end ALU;

architecture Behavioral of ALU is
signal R : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
signal C : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
signal D : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
signal zf : STD_LOGIC := '0';
constant zero : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

begin
C <= A;
D <= B;

process (CNTRL, A, B, R, C, D)

		begin
		zf <= '0';
			case CNTRL is
				when "000" => 
					R <= C AND D;
					
				when "001" => 
					R <= C OR D;
					
				when "010" => 
					R <= STD_LOGIC_VECTOR(unsigned(C) + unsigned(D));
					
				when "011" => 
					R <= C;
					
				when "100" =>
					R <= D(15 downto 0) & "0000000000000000";
					
				when "110" =>				
					R <= STD_LOGIC_VECTOR(unsigned(C) - unsigned(D));
					
				when "111" =>
					if (unsigned(C) < unsigned(D)) then
						R <= "00000000000000000000000000000001";
					else
						R <= (others => '0');
						zf <= '1';
					end if;
				when others => R <= (others => '0');
			end case;
			
			if (R = zero) then 
				zf <= '1'; 
			end if;
			
	end process;
RESULT <= R;
ZEROFLAG <= zf;
end Behavioral;