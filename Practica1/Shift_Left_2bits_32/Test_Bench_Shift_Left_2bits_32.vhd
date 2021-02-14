--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:08:12 08/23/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Shift_Left_2bits_32/Test_Bench_Shift_Left_2bits_32.vhd
-- Project Name:  Shift_Left_2bits_32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shitf_Left_2bits_32
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
 
ENTITY Test_Bench_Shift_Left_2bits_32 IS
END Test_Bench_Shift_Left_2bits_32;
 
ARCHITECTURE behavior OF Test_Bench_Shift_Left_2bits_32 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shitf_Left_2bits_32
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : OUT  std_logic_vector(31 downto 0));
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal B : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shitf_Left_2bits_32 PORT MAP (
          A => A,
          B => B
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      A <= (others => '1');
		
		wait for 100 ns;	

      A <= "11001001111101111101110100111111";

   end process;

END;
