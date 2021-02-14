--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:51:12 09/20/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 4/RegisterFile/TestBenchGeneral.vhd
-- Project Name:  RegisterFile
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile
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
 
ENTITY TestBenchGeneral IS
END TestBenchGeneral;
 
ARCHITECTURE behavior OF TestBenchGeneral IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile
    PORT(
         WriteReg : IN  std_logic_vector(4 downto 0);
         RegWrite : IN  std_logic;
         ReadReg1 : IN  std_logic_vector(4 downto 0);
         ReadReg2 : IN  std_logic_vector(4 downto 0);
         WriteData : IN  std_logic_vector(31 downto 0);
         CLK : IN  std_logic;
         ReadData1 : OUT  std_logic_vector(31 downto 0);
         ReadData2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WriteReg : std_logic_vector(4 downto 0) := (others => '0');
   signal RegWrite : std_logic := '0';
   signal ReadReg1 : std_logic_vector(4 downto 0) := (others => '0');
   signal ReadReg2 : std_logic_vector(4 downto 0) := (others => '0');
   signal WriteData : std_logic_vector(31 downto 0) := (others => '0');
   signal CLK : std_logic := '0';

 	--Outputs
   signal ReadData1 : std_logic_vector(31 downto 0);
   signal ReadData2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile PORT MAP (
          WriteReg => WriteReg,
          RegWrite => RegWrite,
          ReadReg1 => ReadReg1,
          ReadReg2 => ReadReg2,
          WriteData => WriteData,
          CLK => CLK,
          ReadData1 => ReadData1,
          ReadData2 => ReadData2
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

      WriteData <= x"AAAAAAAA";
		WriteReg <= "00111";
		RegWrite <= '1';
		
		wait for CLK_period*10;
		
		RegWrite <= '0';
		
		wait for CLK_period*10;

      WriteData <= x"FFFFFFFF";
		WriteReg <= "00000";
		RegWrite <= '1';
		
		wait for CLK_period*10;
		
		RegWrite <= '0';
		
		wait for CLK_period*10;
		
		ReadReg1 <= "00111";
		ReadReg2 <= "00000";
		
		wait for CLK_period*10;				WriteReg <= "00111";		WriteData <= x"FEDCBA98";
		RegWrite <= '1';		wait for CLK_period*10;
				RegWrite <= '0';				wait for CLK_period*10;
				WriteReg <= "00011";		WriteData <= x"BBBBBBBB";		RegWrite <= '1';      		wait for CLK_period*10;
				RegWrite <= '0';		ReadReg1 <= "00111";		ReadReg2 <= "00011";

      wait;
   end process;

END;
