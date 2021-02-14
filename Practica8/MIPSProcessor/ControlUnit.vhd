----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Belia Beaz y Eduardo Angulo
-- 
-- Create Date:    15:23:11 10/17/2020 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
    Port ( opCode : in  STD_LOGIC_VECTOR (5 downto 0);
			  ALUop : out  STD_LOGIC_VECTOR (2 downto 0);
			  RegDst : out  STD_LOGIC;
           Jump : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemToReg : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC);
end ControlUnit;

architecture Behavioral of ControlUnit is
signal CtrlUnitOut : STD_LOGIC_VECTOR (10 downto 0);

begin
with opCode select CtrlUnitOut <=
		"10000111001" when "000000",
		"00000111000" when "111111",
		"00011000011" when "100011",
		"00000001110" when "101011",
		"00100010000" when "000100",
		"01000011000" when "000010",
		"00000100011" when "001000",
		"00000101011" when "001101",
		"00000110011" when "011001",
		(others => '0') when OTHERS;

RegDst <= CtrlUnitOut(10);
Jump <= CtrlUnitOut(9);
Branch <= CtrlUnitOut(8);
MemRead <= CtrlUnitOut(7);
MemToReg <= CtrlUnitOut(6);
ALUop <= CtrlUnitOut(5 downto 3);
MemWrite <= CtrlUnitOut(2);
ALUSrc <= CtrlUnitOut(1);
RegWrite <= CtrlUnitOut(0);


end Behavioral;

