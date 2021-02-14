--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:50:02 09/20/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 4/RegisterFile/Decoder_TB.vhd
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
 
ENTITY Decoder_TB IS
END Decoder_TB;
 
ARCHITECTURE behavior OF Decoder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT decoder
    PORT(
         SELECTOR : IN  std_logic_vector(4 downto 0);
         ENABLER : OUT  std_logic_vector(31 downto 1);
         REGWRITE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal SELECTOR : std_logic_vector(4 downto 0) := (others => '0');
   signal REGWRITE : std_logic := '0';

 	--Outputs
   signal ENABLER : std_logic_vector(31 downto 1);
 
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

      REGWRITE <= '1';
		SELECTOR <= "00000";
		
		wait for 100 ns;
		SELECTOR <= "00001";
		
		wait for 100 ns;
		SELECTOR <= "00010";
		
		wait for 100 ns;
		SELECTOR <= "00011";
		
		wait for 100 ns;
		SELECTOR <= "11111";
		
		wait for 100 ns;
		SELECTOR <= "11110";
		
		wait for 100 ns;
		SELECTOR <= "11101";
		
		wait for 100 ns;
		SELECTOR <= "11100";

      wait;
   end process;

END;
