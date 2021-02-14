--------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer:		Eduardo Angulo Martinez
--
-- Create Date:   14:42:55 08/23/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica1-Add/Test_Bench_Adder.vhd
-- Project Name:  Practica1-Add
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder
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
USE ieee.numeric_std.ALL;
 
ENTITY Test_Bench_Adder IS
END Test_Bench_Adder;
 
ARCHITECTURE behavior OF Test_Bench_Adder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         C : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal C : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder PORT MAP (
          A => A,
          B => B,
          C => C
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A <= (others => '1');
		B <= (others => '1');
		
		wait for 100 ns;	
		
		A <= (others => '0');
		B <= (others => '0');

      wait for 100 ns;
		
		A <= "00000000000000000000000000000001";
		B <= "00000000000000000000000000000001";

      wait for 100 ns;
		
		A <= "01000000100000001000100000100100";
		B <= "00000000000000000000000000000001";

      wait for 100 ns;
		
		A <= (others => '1');
		B <= "00000000000000000000000000000001";

      wait for 100 ns;
		
   end process;

END;