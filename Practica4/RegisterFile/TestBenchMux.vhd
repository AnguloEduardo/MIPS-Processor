--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:23:31 09/13/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 4/RegisterFile/TestBenchMux.vhd
-- Project Name:  RegisterFile
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux32
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
 
ENTITY TestBenchMux IS
END TestBenchMux;
 
ARCHITECTURE behavior OF TestBenchMux IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux32
    PORT(
         cable0 : IN  std_logic_vector(31 downto 0);
         cable1 : IN  std_logic_vector(31 downto 0);
         cable2 : IN  std_logic_vector(31 downto 0);
         cable3 : IN  std_logic_vector(31 downto 0);
         cable4 : IN  std_logic_vector(31 downto 0);
         cable5 : IN  std_logic_vector(31 downto 0);
         cable6 : IN  std_logic_vector(31 downto 0);
         cable7 : IN  std_logic_vector(31 downto 0);
         cable8 : IN  std_logic_vector(31 downto 0);
         cable9 : IN  std_logic_vector(31 downto 0);
         cable10 : IN  std_logic_vector(31 downto 0);
         cable11 : IN  std_logic_vector(31 downto 0);
         cable12 : IN  std_logic_vector(31 downto 0);
         cable13 : IN  std_logic_vector(31 downto 0);
         cable14 : IN  std_logic_vector(31 downto 0);
         cable15 : IN  std_logic_vector(31 downto 0);
         cable16 : IN  std_logic_vector(31 downto 0);
         cable17 : IN  std_logic_vector(31 downto 0);
         cable18 : IN  std_logic_vector(31 downto 0);
         cable19 : IN  std_logic_vector(31 downto 0);
         cable20 : IN  std_logic_vector(31 downto 0);
         cable21 : IN  std_logic_vector(31 downto 0);
         cable22 : IN  std_logic_vector(31 downto 0);
         cable23 : IN  std_logic_vector(31 downto 0);
         cable24 : IN  std_logic_vector(31 downto 0);
         cable25 : IN  std_logic_vector(31 downto 0);
         cable26 : IN  std_logic_vector(31 downto 0);
         cable27 : IN  std_logic_vector(31 downto 0);
         cable28 : IN  std_logic_vector(31 downto 0);
         cable29 : IN  std_logic_vector(31 downto 0);
         cable30 : IN  std_logic_vector(31 downto 0);
         cable31 : IN  std_logic_vector(31 downto 0);
         ReadData : OUT  std_logic_vector(31 downto 0);
         Enable : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal cable0 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable1 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable2 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable3 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable4 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable5 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable6 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable7 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable8 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable9 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable10 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable11 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable12 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable13 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable14 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable15 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable16 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable17 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable18 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable19 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable20 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable21 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable22 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable23 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable24 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable25 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable26 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable27 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable28 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable29 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable30 : std_logic_vector(31 downto 0) := (others => '0');
   signal cable31 : std_logic_vector(31 downto 0) := (others => '0');
   signal Enable : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal ReadData : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux32 PORT MAP (
          cable0 => cable0,
          cable1 => cable1,
          cable2 => cable2,
          cable3 => cable3,
          cable4 => cable4,
          cable5 => cable5,
          cable6 => cable6,
          cable7 => cable7,
          cable8 => cable8,
          cable9 => cable9,
          cable10 => cable10,
          cable11 => cable11,
          cable12 => cable12,
          cable13 => cable13,
          cable14 => cable14,
          cable15 => cable15,
          cable16 => cable16,
          cable17 => cable17,
          cable18 => cable18,
          cable19 => cable19,
          cable20 => cable20,
          cable21 => cable21,
          cable22 => cable22,
          cable23 => cable23,
          cable24 => cable24,
          cable25 => cable25,
          cable26 => cable26,
          cable27 => cable27,
          cable28 => cable28,
          cable29 => cable29,
          cable30 => cable30,
          cable31 => cable31,
          ReadData => ReadData,
          Enable => Enable
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      cable0 <= x"FFFF1111";
		cable5 <= x"AAAACCCC";
		cable3 <= x"BBBBDDDD";
		
		wait for 100 ns;
		Enable <= "00000";
		
		wait for 100 ns;
		Enable <= "00101";
		
		wait for 100 ns;
		Enable <= "00011";

      wait;
   end process;

END;
