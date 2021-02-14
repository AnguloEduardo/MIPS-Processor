----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo y Belia Baez
-- 
-- Create Date:    12:07:51 09/13/2020 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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

entity RegisterFile is
	Port(WriteReg : in  STD_LOGIC_VECTOR (4 downto 0); --decorder
		  RegWrite : in  STD_LOGIC; --enable decoder
		  ReadReg1 : in  STD_LOGIC_VECTOR(4 downto 0); --selector mux
		  ReadReg2 : in  STD_LOGIC_VECTOR(4 downto 0); --selectormux
		  WriteData : in  STD_LOGIC_VECTOR (31 downto 0); --register
		  CLK : in  STD_LOGIC; --mux
		  ReadData1 : out  STD_LOGIC_VECTOR (31 downto 0); --mux
		  ReadData2: out  STD_LOGIC_VECTOR (31 downto 0)); --mux
end RegisterFile;

architecture Behavioral of RegisterFile is

component decoder 
	Port( SELECTOR : in  STD_LOGIC_VECTOR (4 downto 0);
		   ENABLER : out  STD_LOGIC_VECTOR (30 downto 0);
		   REGWRITE : in  STD_LOGIC);
end component;

component mux32
	port ( Input : in  STD_LOGIC_VECTOR (1023 downto 0);
			 ReadData : out  STD_LOGIC_VECTOR (31 downto 0);
			 Enable : in  STD_LOGIC_VECTOR(4 downto 0));
end component;

component BancoRegistros
	Port ( ENABLER : in  STD_LOGIC_VECTOR (30 downto 0);
          CLK : in  STD_LOGIC;
          WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
			 reg : out STD_LOGIC_VECTOR (1023 downto 0) := (others => '0'));
end component;

signal outDec : STD_LOGIC_VECTOR (31 downto 1);
signal reg : STD_LOGIC_VECTOR (1023 downto 0);

begin

D : decoder port map (WriteReg, outDec, RegWrite);	
R : BancoRegistros port map (outDec, CLK, WriteData, reg);								  
M1 : mux32 port map (reg, ReadData1, ReadReg1);							 
M2 : mux32 port map (reg, ReadData2, ReadReg2);
end Behavioral;

