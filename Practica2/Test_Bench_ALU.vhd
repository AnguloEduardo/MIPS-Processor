--------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer:		Eduardo Angulo y Belia Baez
--
-- Create Date:   19:54:43 08/29/2020
-- Design Name:   
-- Module Name:   C:/PROJECTS/XILINX/Practica2/Test_Bench_ALU.vhd
-- Project Name:  Practica2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY Test_Bench_ALU IS
END Test_Bench_ALU;
 
ARCHITECTURE behavior OF Test_Bench_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         A : IN  std_logic_vector(31 downto 0);
         B : IN  std_logic_vector(31 downto 0);
         CNTRL : IN  std_logic_vector(2 downto 0);
         RESULT : OUT  std_logic_vector(31 downto 0);
         ZEROFLAG : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(31 downto 0) := (others => '0');
   signal B : std_logic_vector(31 downto 0) := (others => '0');
   signal CNTRL : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal RESULT : std_logic_vector(31 downto 0);
   signal ZEROFLAG : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          A => A,
          B => B,
          CNTRL => CNTRL,
          RESULT => RESULT,
          ZEROFLAG => ZEROFLAG
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		A <= (others => '1');
		B <= "00000000000000000000000000000001";
		CNTRL <= "000";
		
		wait for 100 ns;	

		A <= (others => '0');
		B <= (others => '1');
		CNTRL <= "000";
		
		wait for 100 ns;
		A <= (others => '1');
		B <= (others => '0');
		CNTRL <= "001";
		
		wait for 100 ns;
		A <= "10101010101010101010101010101010";
		B <= "01010101010101010101010101010101";
		CNTRL <= "001";
		
		wait for 100 ns;
		A <= (others => '1');
		B <= "00000000000000000000000000011111";
		CNTRL <= "010";
		
		wait for 100 ns;
		A <= (others => '0');
		B <= "00000000000000000001111100000000";
		CNTRL <= "011";
		
		wait for 100 ns;
		A <= (others => '1');
		B <= "00000000000000000000000111110000";
		CNTRL <= "100";
		
		wait for 100 ns;
		A <= (others => '0');
		B <= "00000000000000000000000000011111";
		CNTRL <= "101";
		
		wait for 100 ns;
		A <= (others => '1');
		B <= "00000000000000000001111100000000";
		CNTRL <= "110";
		
		wait for 100 ns;
		A <= (others => '0');
		B <= (others => '1');
		CNTRL <= "110";
		
		wait for 100 ns;
		A <= (others => '1');
		B <= "00000000000000000000000000011111";
		CNTRL <= "111";
		
		wait for 100 ns;
   end process;
END;
