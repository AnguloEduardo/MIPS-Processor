--------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer:		Eduardo Angulo y Belia Baez
--
-- Create Date:   22:05:02 09/13/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 4/RegisterFile/TestBenchRegistro.vhd
-- Project Name:  RegisterFile
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: registro
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

ENTITY TestBenchRegistro IS
END TestBenchRegistro;
 
ARCHITECTURE behavior OF TestBenchRegistro IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT registro
    PORT(
         ENABLER : IN  std_logic_vector(31 downto 0);
         CLK : IN  std_logic;
         WriteData : IN  std_logic_vector(31 downto 0);
         r0 : OUT  std_logic_vector(31 downto 0);
         r1 : OUT  std_logic_vector(31 downto 0);
         r2 : OUT  std_logic_vector(31 downto 0);
         r3 : OUT  std_logic_vector(31 downto 0);
         r4 : OUT  std_logic_vector(31 downto 0);
         r5 : OUT  std_logic_vector(31 downto 0);
         r6 : OUT  std_logic_vector(31 downto 0);
         r7 : OUT  std_logic_vector(31 downto 0);
         r8 : OUT  std_logic_vector(31 downto 0);
         r9 : OUT  std_logic_vector(31 downto 0);
         r10 : OUT  std_logic_vector(31 downto 0);
         r11 : OUT  std_logic_vector(31 downto 0);
         r12 : OUT  std_logic_vector(31 downto 0);
         r13 : OUT  std_logic_vector(31 downto 0);
         r14 : OUT  std_logic_vector(31 downto 0);
         r15 : OUT  std_logic_vector(31 downto 0);
         r16 : OUT  std_logic_vector(31 downto 0);
         r17 : OUT  std_logic_vector(31 downto 0);
         r18 : OUT  std_logic_vector(31 downto 0);
         r19 : OUT  std_logic_vector(31 downto 0);
         r20 : OUT  std_logic_vector(31 downto 0);
         r21 : OUT  std_logic_vector(31 downto 0);
         r22 : OUT  std_logic_vector(31 downto 0);
         r23 : OUT  std_logic_vector(31 downto 0);
         r24 : OUT  std_logic_vector(31 downto 0);
         r25 : OUT  std_logic_vector(31 downto 0);
         r26 : OUT  std_logic_vector(31 downto 0);
         r27 : OUT  std_logic_vector(31 downto 0);
         r28 : OUT  std_logic_vector(31 downto 0);
         r29 : OUT  std_logic_vector(31 downto 0);
         r30 : OUT  std_logic_vector(31 downto 0);
         r31 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENABLER : std_logic_vector(31 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal WriteData : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal r0 : std_logic_vector(31 downto 0);
   signal r1 : std_logic_vector(31 downto 0);
   signal r2 : std_logic_vector(31 downto 0);
   signal r3 : std_logic_vector(31 downto 0);
   signal r4 : std_logic_vector(31 downto 0);
   signal r5 : std_logic_vector(31 downto 0);
   signal r6 : std_logic_vector(31 downto 0);
   signal r7 : std_logic_vector(31 downto 0);
   signal r8 : std_logic_vector(31 downto 0);
   signal r9 : std_logic_vector(31 downto 0);
   signal r10 : std_logic_vector(31 downto 0);
   signal r11 : std_logic_vector(31 downto 0);
   signal r12 : std_logic_vector(31 downto 0);
   signal r13 : std_logic_vector(31 downto 0);
   signal r14 : std_logic_vector(31 downto 0);
   signal r15 : std_logic_vector(31 downto 0);
   signal r16 : std_logic_vector(31 downto 0);
   signal r17 : std_logic_vector(31 downto 0);
   signal r18 : std_logic_vector(31 downto 0);
   signal r19 : std_logic_vector(31 downto 0);
   signal r20 : std_logic_vector(31 downto 0);
   signal r21 : std_logic_vector(31 downto 0);
   signal r22 : std_logic_vector(31 downto 0);
   signal r23 : std_logic_vector(31 downto 0);
   signal r24 : std_logic_vector(31 downto 0);
   signal r25 : std_logic_vector(31 downto 0);
   signal r26 : std_logic_vector(31 downto 0);
   signal r27 : std_logic_vector(31 downto 0);
   signal r28 : std_logic_vector(31 downto 0);
   signal r29 : std_logic_vector(31 downto 0);
   signal r30 : std_logic_vector(31 downto 0);
   signal r31 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: registro PORT MAP (
          ENABLER => ENABLER,
          CLK => CLK,
          WriteData => WriteData,
          r0 => r0,
          r1 => r1,
          r2 => r2,
          r3 => r3,
          r4 => r4,
          r5 => r5,
          r6 => r6,
          r7 => r7,
          r8 => r8,
          r9 => r9,
          r10 => r10,
          r11 => r11,
          r12 => r12,
          r13 => r13,
          r14 => r14,
          r15 => r15,
          r16 => r16,
          r17 => r17,
          r18 => r18,
          r19 => r19,
          r20 => r20,
          r21 => r21,
          r22 => r22,
          r23 => r23,
          r24 => r24,
          r25 => r25,
          r26 => r26,
          r27 => r27,
          r28 => r28,
          r29 => r29,
          r30 => r30,
          r31 => r31
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;
      WriteData <= x"ABCD1234";
		Enabler <= x"00000001";
		
		wait for CLK_period*10;
      WriteData <= x"CDEF5678";
		Enabler <= x"00000800";
      wait;
   end process;

END;
