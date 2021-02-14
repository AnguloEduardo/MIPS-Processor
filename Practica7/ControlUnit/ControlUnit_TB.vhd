--------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer:		Eduardo Angulo y Belia Baez
--
-- Create Date:   19:14:57 10/18/2020
-- Design Name:   
-- Module Name:   E:/LabArqui/Practica 7/ControlUnit/ControlUnit_TB.vhd
-- Project Name:  ControlUnit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlUnit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY ControlUnit_TB IS
END ControlUnit_TB;
 
ARCHITECTURE behavior OF ControlUnit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         opCode : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         Jump : OUT  std_logic;
         Branch : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemToReg : OUT  std_logic;
         ALUop : OUT  std_logic_vector(2 downto 0);
         MemWrite : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         RegWrite : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal opCode : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal Jump : std_logic;
   signal Branch : std_logic;
   signal MemRead : std_logic;
   signal MemToReg : std_logic;
   signal ALUop : std_logic_vector(2 downto 0);
   signal MemWrite : std_logic;
   signal ALUSrc : std_logic;
   signal RegWrite : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          opCode => opCode,
          RegDst => RegDst,
          Jump => Jump,
          Branch => Branch,
          MemRead => MemRead,
          MemToReg => MemToReg,
          ALUop => ALUop,
          MemWrite => MemWrite,
          ALUSrc => ALUSrc,
          RegWrite => RegWrite
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      opCode <= "000000";
		
		wait for 100 ns;	
      opCode <= "111111";
		
		wait for 100 ns;	
      opCode <= "100011";
		
		wait for 100 ns;	
      opCode <= "101011";
		
		wait for 100 ns;	
      opCode <= "000100";
		
		wait for 100 ns;	
      opCode <= "000010";
		
		wait for 100 ns;	
      opCode <= "001000";
		
		wait for 100 ns;	
      opCode <= "001101";
		
		wait for 100 ns;	
      opCode <= "011001";
		
		wait for 100 ns;	
      opCode <= "111000";

      wait;
   end process;

END;
