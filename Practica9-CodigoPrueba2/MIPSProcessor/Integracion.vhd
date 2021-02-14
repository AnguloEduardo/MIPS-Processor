----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Belia Baez y Eduardo Angulo
-- 
-- Create Date:    16:47:18 10/28/2020 
-- Design Name: 	 MIPS Architecture
-- Module Name:    Integracion - MIPS 
-- Project Name:   MIPS Architecture
-- Target Devices: Spartan 6
-- Tool versions:  14.7
-- Description: 	 Integracion de modulos para la implementacion
--						 de la arquitectura MIPS
-- Revision: 
-- Revision 0.1 - Integracion completa
-- 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Integracion is
    Port ( CLK 	  : in  STD_LOGIC;
           RESET 	  : in  STD_LOGIC;
			  OUT_LEDS : out STD_LOGIC_VECTOR (7 downto 0);
			  IN_PUSH  : in  STD_LOGIC_VECTOR (7 downto 0));
end Integracion;


architecture MIPS of Integracion is

---------------------------------------------------------
-- Declaracion de todos los modulos necesarios			 
-- para la integracion del procesador
---------------------------------------------------------

component divisorFrecuencia
	Port ( CLK 		: in STD_LOGIC;
          CLK_OUT : out  STD_LOGIC);
end component;

component ALUControl
	Port ( Func 	: in   STD_LOGIC_VECTOR (5 downto 0);
			 ALUop 	: in   STD_LOGIC_VECTOR (2 downto 0);
			 ALUCtrl : out  STD_LOGIC_VECTOR (2 downto 0);
			 jr 		: out  STD_LOGIC);
end component;

component ALU
	Port ( A 		 : in   STD_LOGIC_VECTOR (31 downto 0);
		    B 		 : in   STD_LOGIC_VECTOR (31 downto 0);
			 CNTRL 	 : in   STD_LOGIC_VECTOR ( 2 downto 0);
			 RESULT 	 : out  STD_LOGIC_VECTOR (31 downto 0);
			 ZEROFLAG : out  STD_LOGIC := '0');
end component;

component Adder
	Generic (bits : integer := 32);
	Port ( A : in  std_logic_vector (bits -1 downto 0);
			 B : in  std_logic_vector (bits -1 downto 0);
			 C : out std_logic_vector (bits -1 downto 0));
end component;

component ControlUnit
	Port ( opCode   : in   STD_LOGIC_VECTOR (5 downto 0);
			 ALUop 	 : out  STD_LOGIC_VECTOR (2 downto 0);
			 RegDst   : out  STD_LOGIC;
          Jump 	 : out  STD_LOGIC;
          Branch   : out  STD_LOGIC;
          MemRead  : out  STD_LOGIC;
          MemToReg : out  STD_LOGIC;
          MemWrite : out  STD_LOGIC;
          ALUSrc 	 : out  STD_LOGIC;
          RegWrite : out  STD_LOGIC);
end component;

component Multiplexor_2a1_32bits
   Port ( A : in   STD_LOGIC_VECTOR (31 downto 0);
          B : in   STD_LOGIC_VECTOR (31 downto 0);
          C : out  STD_LOGIC_VECTOR (31 downto 0);
          D : in   STD_LOGIC);
end component;

component Multiplexor_2a1_5bits
   Port ( A : in   STD_LOGIC_VECTOR (4 downto 0);
          B : in   STD_LOGIC_VECTOR (4 downto 0);
          C : out  STD_LOGIC_VECTOR (4 downto 0);
          D : in   STD_LOGIC);
end component;

component Program_Counter
   Port ( D 	 : in   STD_LOGIC_VECTOR (31 downto 0);
          Q 	 : out  STD_LOGIC_VECTOR (31 downto 0);
          RESET : in   STD_LOGIC;
          CLK   : in   STD_LOGIC);
end component;

component RAM
	Port ( --ENABLE     : in   STD_LOGIC;
          WRITE_ENABLE : in   STD_LOGIC;
          READ_ENABLE  : in   STD_LOGIC;
          CLK 			  : in   STD_LOGIC;
          RW_ADDRESS   : in   STD_LOGIC_VECTOR (31 downto 0);
          WRITE_DATA   : in   STD_LOGIC_VECTOR (31 downto 0);
          READ_DATA    : out  STD_LOGIC_VECTOR (31 downto 0);
			 LED_OUT		  : out  STD_LOGIC_VECTOR ( 7 downto 0);
			 PUSH_BUTTONS : in	STD_LOGIC_VECTOR ( 7 downto 0));
end component;

component ROM
	Generic (n : integer := 32);
	Port ( READ_ADDRESS : in  STD_LOGIC_VECTOR (n-1 downto 0);
			 INSTRUCTION  : out STD_LOGIC_VECTOR(n-1 downto 0));
end component;

component RegisterFile
	Port ( CLK 		  : in   STD_LOGIC;
			 RegWrite  : in   STD_LOGIC; 							 
			 ReadReg1  : in   STD_LOGIC_VECTOR ( 4 downto 0);
			 ReadReg2  : in   STD_LOGIC_VECTOR ( 4 downto 0);
			 WriteData : in   STD_LOGIC_VECTOR (31 downto 0);
			 WriteReg  : in   STD_LOGIC_VECTOR ( 4 downto 0);				  
			 ReadData1 : out  STD_LOGIC_VECTOR(31 downto 0); 
			 ReadData2 : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component Shift_Left_2bits_32
	Port ( A : in  std_logic_vector (31 downto 0) := (others => '0');
          B : out std_logic_vector (31 downto 0) := (others => '0'));
end component;

component Shift_Left_2bits
   Port ( A : in   STD_LOGIC_VECTOR (25 downto 0);
          B : out  STD_LOGIC_VECTOR (27 downto 0));
end component;

component Sign_Extender
   Port ( A : in   STD_LOGIC_VECTOR (15 downto 0);
          B : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

---------------------------------------------------------------
-- Declaracion de las senales necesarias para hacer
-- la conexion entre los modulos
---------------------------------------------------------------

signal CLK500						: STD_LOGIC;
signal BranchZero 				: STD_LOGIC;
signal RegDst 						: STD_LOGIC;
signal Jump 						: STD_LOGIC;
signal Branch 						: STD_LOGIC;
signal MemRead 					: STD_LOGIC;
signal MemToReg 					: STD_LOGIC;
signal MemWrite 					: STD_LOGIC;
signal ALUSrc 						: STD_LOGIC;
signal RegWrite 					: STD_LOGIC;
signal JR 							: STD_LOGIC;
signal Zero 						: STD_LOGIC;
signal ALUop 						: STD_LOGIC_VECTOR ( 2 downto 0);
signal ALUCtrl 					: STD_LOGIC_VECTOR ( 2 downto 0);
signal MuxSalidaRegisterFile  : STD_LOGIC_VECTOR ( 4 downto 0);
signal MuxSalidaMemToReg 		: STD_LOGIC_VECTOR (31 downto 0);
signal MuxSalidaALU 				: STD_LOGIC_VECTOR (31 downto 0);
signal MuxSalidaJump 			: STD_LOGIC_VECTOR (31 downto 0);
signal MuxSalidaBranch 			: STD_LOGIC_VECTOR (31 downto 0);
signal MuxJR_PC 					: STD_LOGIC_VECTOR (31 downto 0);
signal ReadData_1					: STD_LOGIC_VECTOR (31 downto 0);
signal ReadData_2 				: STD_LOGIC_VECTOR (31 downto 0);
signal Salida_PC 					: STD_LOGIC_VECTOR (31 downto 0);
signal SalidaAdderPC 	 		: STD_LOGIC_VECTOR (31 downto 0);
signal SalidaShiftLeft32 		: STD_LOGIC_VECTOR (31 downto 0);
signal SalidaAdderBranch 		: STD_LOGIC_VECTOR (31 downto 0);
signal Instruction 				: STD_LOGIC_VECTOR (31 downto 0);
signal SalidaShiftLeftJump 	: STD_LOGIC_VECTOR (27 downto 0);
signal SalidaSignExtender 		: STD_LOGIC_VECTOR (31 downto 0);
signal ConcatPCShift 			: STD_LOGIC_VECTOR (31 downto 0);
signal ALUResult 					: STD_LOGIC_VECTOR (31 downto 0);
signal SalidaDataMem 			: STD_LOGIC_VECTOR (31 downto 0);

begin

------------------------------------------------------------------
-- Preprocesado de senales antes de ser enviadas a un modulo
------------------------------------------------------------------

BranchZero 		<= Branch and Zero;
ConcatPCShift 	<= SalidaAdderPC(31 downto 28) & SalidaShiftLeftJump;

------------------------------------------------------------------
-- Instanciamiento de los modulos y sus conexiones
------------------------------------------------------------------

Reloj						: divisorFrecuencia		 port map (CLK, CLK500);
PC 						: Program_Counter 		 port map (MuxJR_PC, Salida_PC, RESET, CLK500);
AdderPC 					: Adder 						 port map (x"00000004", Salida_PC, SalidaAdderPC);
AdderBranch 			: Adder 						 port map (SalidaAdderPC, SalidaShiftLeft32, SalidaAdderBranch);
MuxBranch 				: Multiplexor_2a1_32bits port map (SalidaAdderPC, SalidaAdderBranch, MuxSalidaBranch, BranchZero);
MuxJump 					: Multiplexor_2a1_32bits port map (MuxSalidaBranch, ConcatPCShift, MuxSalidaJump, Jump);
MuxJR 					: Multiplexor_2a1_32bits port map (MuxSalidaJump, ReadData_2, MuxJR_PC, JR);
ShiftLeftJump 			: Shift_Left_2bits 		 port map (Instruction(25 downto 0), SalidaShiftLeftJump);
InstructionMem 		: ROM 						 port map (Salida_PC, Instruction);
SignExtender 			: Sign_Extender 			 port map (Instruction(15 downto 0), SalidaSignExtender);
ShiftLeftBranch 		: Shift_Left_2bits_32 	 port map (SalidaSignExtender, SalidaShiftLeft32);
ControlUnitValues 	: ControlUnit 				 port map (Instruction(31 downto 26), ALUop, RegDst, Jump, Branch, MemRead, MemToReg, MemWrite, ALUSrc, RegWrite);
ALUControlValues 		: ALUControl 				 port map (Instruction(5 downto 0), ALUop, ALUCtrl, jr);
MuxRegisterFile 		: Multiplexor_2a1_5bits  port map (Instruction(20 downto 16), Instruction(15 downto 11), MuxSalidaRegisterFile, RegDst);
RegisterFileValues 	: RegisterFile 			 port map (CLK500, RegWrite, Instruction(25 downto 21), Instruction(20 downto 16), MuxSalidaMemToReg, MuxSalidaRegisterFile, ReadData_1, ReadData_2);
MuxALU 					: Multiplexor_2a1_32bits port map (ReadData_2, SalidaSignExtender, MuxSalidaALU, ALUSrc);
ALUValues 				: ALU 						 port map (ReadData_1, MuxSalidaALU, ALUCtrl, ALUResult, Zero);
DataMem 					: RAM 						 port map (MemWrite, MemRead, CLK500, ALUResult, ReadData_2, SalidaDataMem, OUT_LEDS, IN_PUSH);
MuxMemToReg 			: Multiplexor_2a1_32bits port map (ALUResult, SalidaDataMem, MuxSalidaMemToReg, MemToReg);

end MIPS;

