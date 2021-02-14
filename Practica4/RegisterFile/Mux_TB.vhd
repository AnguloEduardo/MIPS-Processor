--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:26:26 09/20/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 4/RegisterFile/Mux_TB.vhd
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
 
ENTITY Mux_TB IS
END Mux_TB;
 
ARCHITECTURE behavior OF Mux_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux32
    PORT(
         Input : IN  std_logic_vector(1023 downto 0);
         ReadData : OUT  std_logic_vector(31 downto 0);
         Enable : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(1023 downto 0) := (others => '0');
   signal Enable : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal ReadData : std_logic_vector(31 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux32 PORT MAP (
          Input => Input,
          ReadData => ReadData,
          Enable => Enable
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      Input (1023 downto 992) <= x"FFFFFFFF"; --Registro 32
		Input (991 downto 960) <= x"11111111";	 --Registro 31
		Input (959 downto 928) <= x"55555555";	 --Registro 30
		Enable <= "11111";
		
		wait for 100 ns;
		
		Enable <= "11110";
		
		wait for 100 ns;
		
		Enable <= "11101";
		
      wait;
   end process;

END;
