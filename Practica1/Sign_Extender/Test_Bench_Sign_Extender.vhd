--------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer:		Eduardo Angulo Martinez
--
-- Create Date:   15:32:21 08/23/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Sign_Extender/Test_Bench_Sign_Extender.vhd
-- Project Name:  Sign_Extender
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sign_Extender
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
 
ENTITY Test_Bench_Sign_Extender IS
END Test_Bench_Sign_Extender;
 
ARCHITECTURE behavior OF Test_Bench_Sign_Extender IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sign_Extender
    PORT(
         A : IN  std_logic_vector(15 downto 0);
         B : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal B : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sign_Extender PORT MAP (
          A => A,
          B => B
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;

		A <= (others => '0');
		
      wait for 100 ns;

		A <= (others => '1');
		
		wait for 100 ns;

		A <= "0111111111111111";
		
		wait for 100 ns;

		A <= "1000000000000000";
		
		wait for 100 ns;

		A <= "1000000100010010";
		
		wait for 100 ns;

		A <= "0000000100010011";
		
		wait for 100 ns;
		
   end process;

END;
