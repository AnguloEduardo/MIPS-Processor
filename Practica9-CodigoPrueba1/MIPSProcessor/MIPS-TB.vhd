--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:03:49 10/30/2020
-- Design Name:   
-- Module Name:   E:/LabArqui/Practica8/MIPSProcessor/MIPS-TB.vhd
-- Project Name:  MIPSProcessor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Integracion
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
 
ENTITY MIPS_TB IS
END MIPS_TB;
 
ARCHITECTURE behavior OF MIPS_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Integracion
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         OUT_LEDS : out STD_LOGIC_VECTOR (7 downto 0);
			IN_PUSH  : in  STD_LOGIC_VECTOR (7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
	signal IN_PUSH : std_logic_vector (7 downto 0) := (others => '0');

 	--Outputs
   signal OUT_LEDS : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Integracion PORT MAP (
          CLK => CLK,
          RESET => RESET,
          IN_PUSH => IN_PUSH,
			 OUT_LEDS => OUT_LEDS
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

		Reset <= '1';

   end process;

END;
