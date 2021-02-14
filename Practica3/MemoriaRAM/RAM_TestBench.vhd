--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:32:12 09/06/2020
-- Design Name:   
-- Module Name:   F:/Lab Arqui/Practica 3/MemoriaRAM/RAM_TestBench.vhd
-- Project Name:  MemoriaRAM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RAM_TestBench IS
END RAM_TestBench;
 
ARCHITECTURE behavior OF RAM_TestBench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM
    PORT(
         WRITE_ENABLE : IN  std_logic;
         READ_ENABLE : IN  std_logic;
         CLK : IN  std_logic;
         RW_ADDRESS : IN  std_logic_vector(31 downto 0);
         WRITE_DATA : IN  std_logic_vector(31 downto 0);
         READ_DATA : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal WRITE_ENABLE : std_logic := '0';
   signal READ_ENABLE : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RW_ADDRESS : std_logic_vector(31 downto 0) := (others => '0');
   signal WRITE_DATA : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal READ_DATA : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM PORT MAP (
          WRITE_ENABLE => WRITE_ENABLE,
          READ_ENABLE => READ_ENABLE,
          CLK => CLK,
          RW_ADDRESS => RW_ADDRESS,
          WRITE_DATA => WRITE_DATA,
          READ_DATA => READ_DATA
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
      wait for CLK_period*10;
		--Llenado de datos iniciales
      WRITE_ENABLE <= '1';
		READ_ENABLE <= '0';
		RW_ADDRESS <= x"00000004";
		WRITE_DATA <= x"00000004";
		wait for 100 ns;
		RW_ADDRESS <= x"0000000C";
		WRITE_DATA <= x"000A43EF";
		--Lectura de datos iniciales
		wait for 100 ns;
		RW_ADDRESS <= x"00000004";
      WRITE_ENABLE <= '0';
		READ_ENABLE <= '1';

		wait for 100 ns;
		RW_ADDRESS <= x"0000000C";
      WRITE_ENABLE <= '0';
		READ_ENABLE <= '1';
      wait for 100 ns;
		--Modificacion de datos
		WRITE_ENABLE <= '1';
		READ_ENABLE <= '0';
		RW_ADDRESS <= x"00000004";
		WRITE_DATA <= x"000BAFFF";
		wait for 100 ns;
		RW_ADDRESS <= x"0000000C";
		WRITE_DATA <= x"000751F2";
		--Lectura de datos nuevos
		wait for 100 ns;
		RW_ADDRESS <= x"00000004";
      WRITE_ENABLE <= '0';
		READ_ENABLE <= '1';

		wait for 100 ns;
		RW_ADDRESS <= x"0000000C";
      WRITE_ENABLE <= '0';
		READ_ENABLE <= '1';
      wait;
		
   end process;

END;
