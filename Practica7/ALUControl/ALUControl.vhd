----------------------------------------------------------------------------------
-- Company: 		 ITESM
-- Engineer: 		 Belia Baez y Eduardo Angulo
-- 
-- Create Date:    15:58:37 10/17/2020 
-- Design Name: 
-- Module Name:    ALUControl - Behavioral 
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

entity ALUControl is
    Port ( Func : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (2 downto 0);
           jr : out  STD_LOGIC;
           ALUCtrl : out  STD_LOGIC_VECTOR (2 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is

begin

jr <= ALUop(0) and ALUop(1) and ALUop(2) 
		and not Func(5) and not Func(4)  
		and not Func(1) and not Func(0)
		and not Func(2) and Func(3);

process (ALUop, Func)
begin
case ALUop is
	when "111" => 
		case (Func) is
			when "100000" => ALUCtrl <= "010"; --add / ADD
			when "100010" => ALUCtrl <= "110"; --sub / SUB
			when "100100" => ALUCtrl <= "000"; --and / AND
			when "100101" => ALUCtrl <= "001"; --or  / OR 
			when "101010" => ALUCtrl <= "111"; --slt / SLT
			when OTHERS => ALUCtrl <= "101"; -- jr
		end case;
	when OTHERS =>
		case (ALUop) is
			when "000" => ALUCtrl <= "011"; --lw   / mov
			when "001" => ALUCtrl <= "011"; --sw   / mov
			when "010" => ALUCtrl <= "110"; --beq  / sub
			when "100" => ALUCtrl <= "010"; --addi / add
			when "101" => ALUCtrl <= "001"; --ori  / or
			when "110" => ALUCtrl <= "100"; --lui  / bUpper
			when OTHERS => ALUCtrl <= "101"; --j
		end case;
	end case;
end process;

end Behavioral;