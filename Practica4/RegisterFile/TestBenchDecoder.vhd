--------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer:		Eduardo Angulo y Belia Baez
--
-- Create Date:   21:24:54 09/13/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 4/RegisterFile/TestBenchDecoder.vhd
-- Project Name:  RegisterFile
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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
 
ENTITY TestBenchDecoder IS
END TestBenchDecoder;
 
ARCHITECTURE behavior OF TestBenchDecoder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         SELECTOR : IN  std_logic_vector(4 downto 0);
         ENABLER : OUT  std_logic_vector(31 downto 0);
         REGWRITE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SELECTOR : std_logic_vector(4 downto 0) := (others => '0');
   signal REGWRITE : std_logic := '0';

 	--Outputs
   signal ENABLER : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder PORT MAP (
          SELECTOR => SELECTOR,
          ENABLER => ENABLER,
          REGWRITE => REGWRITE
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		SELECTOR <= "00000";
      REGWRITE <= '1';

      wait for 100 ns;
		SELECTOR <= "00100";
		
		wait for 100 ns;
		SELECTOR <= "00111";
		
		wait for 100 ns;
		SELECTOR <= "00111";
		REGWRITE <= '0';
   end process;

END;
