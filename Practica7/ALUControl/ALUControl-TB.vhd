--------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer:		Eduardo Angulo y Belia Baez
--
-- Create Date:   20:48:10 10/17/2020
-- Design Name:   
-- Module Name:   E:/LabArqui/Practica 7/ALUControl/ALUControl-TB.vhd
-- Project Name:  ALUControl
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUControl
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
 
ENTITY ALUControlTB IS
END ALUControlTB;
 
ARCHITECTURE behavior OF ALUControlTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUControl
    PORT(
         Func : IN  std_logic_vector(5 downto 0);
         ALUop : IN  std_logic_vector(2 downto 0);
         jr : OUT  std_logic;
         ALUCtrl : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Func : std_logic_vector(5 downto 0) := (others => '0');
   signal ALUop : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal jr : std_logic;
   signal ALUCtrl : std_logic_vector(2 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUControl PORT MAP (
          Func => Func,
          ALUop => ALUop,
          jr => jr,
          ALUCtrl => ALUCtrl
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      ALUop <= "111";
		Func <= "100000";

      wait for 100 ns;	
		Func <= "100010";
		
		wait for 100 ns;	
		Func <= "100100";
		
		wait for 100 ns;	
		Func <= "100101";
		
		wait for 100 ns;	
		Func <= "101010";
		
		wait for 100 ns;	
		Func <= "101010";
		
		wait for 100 ns;	
		Func <= "001000";
		
		wait for 100 ns;	
      ALUop <= "000";
		
		wait for 100 ns;	
      ALUop <= "001";
		
		wait for 100 ns;	
      ALUop <= "010";
		
		wait for 100 ns;	
      ALUop <= "011";
		
		wait for 100 ns;	
      ALUop <= "100";
		
		wait for 100 ns;	
      ALUop <= "101";
		
		wait for 100 ns;	
      ALUop <= "110";
		
		wait for 100 ns;	
      ALUop <= "111";
		
		wait for 100 ns;	
		Func <= "111111";

		wait for 100 ns;	
		Func <= "111100";
		
   end process;

END;
