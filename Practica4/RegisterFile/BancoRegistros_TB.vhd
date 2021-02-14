--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:11:46 09/20/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 4/RegisterFile/BancoRegistros_TB.vhd
-- Project Name:  RegisterFile
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BancoRegistros
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
 
ENTITY BancoRegistros_TB IS
END BancoRegistros_TB;
 
ARCHITECTURE behavior OF BancoRegistros_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BancoRegistros
    PORT(
         ENABLER : IN  std_logic_vector(31 downto 1);
         CLK : IN  std_logic;
         WriteData : IN  std_logic_vector(31 downto 0);
         reg : OUT  std_logic_vector(1023 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ENABLER : std_logic_vector(31 downto 1) := (others => '0');
   signal CLK : std_logic := '0';
   signal WriteData : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal reg : std_logic_vector(1023 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BancoRegistros PORT MAP (
          ENABLER => ENABLER,
          CLK => CLK,
          WriteData => WriteData,
          reg => reg
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

      ENABLER <= "100" & x"0000000";
		WriteData <= x"A0000000";
		
		wait for CLK_period*10;

      ENABLER <= "010" & x"0000000";
		WriteData <= x"11111111";
		
		wait for CLK_period*10;

      ENABLER <= "001" & x"0000000";
		WriteData <= x"AAAAAAAA";

      wait;
   end process;

END;
