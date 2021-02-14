--------------------------------------------------------------------------------
-- Company: 		ITEM
-- Engineer:		Eduardo Angulo y Belia Baez
--
-- Create Date:   19:08:32 09/06/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 3/MoriaROM/ROM_TestBench.vhd
-- Project Name:  MoriaROM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ROM_TestBench IS
END ROM_TestBench;
 
ARCHITECTURE behavior OF ROM_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         READ_ADDRESS : IN  std_logic_vector(31 downto 0);
         INSTRUCTION : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal READ_ADDRESS : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal INSTRUCTION : std_logic_vector(31 downto 0) := (others => '0');
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          READ_ADDRESS => READ_ADDRESS,
          INSTRUCTION => INSTRUCTION
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.	
		READ_ADDRESS <= x"00000000";
		
      wait for 100 ns;	
		READ_ADDRESS <= x"00000004";
		
		wait for 100 ns;	
		READ_ADDRESS <= x"00000028";
		
		wait for 100 ns;	
		READ_ADDRESS <= x"00000018";

      wait;
   end process;

END;
