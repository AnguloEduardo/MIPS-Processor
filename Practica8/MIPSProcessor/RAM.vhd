----------------------------------------------------------------------------------
-- Company: 		ITESM
-- Engineer: 		Eduardo Angulo y Belia Baez
-- 
-- Create Date:    22:00:37 09/04/2020 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RAM is
    Port ( WRITE_ENABLE : in   STD_LOGIC;
           READ_ENABLE 	: in   STD_LOGIC;
           CLK 			: in   STD_LOGIC;
           RW_ADDRESS 	: in   STD_LOGIC_VECTOR (31 downto 0);
           WRITE_DATA 	: in   STD_LOGIC_VECTOR (31 downto 0);
           READ_DATA 	: out  STD_LOGIC_VECTOR (31 downto 0));
end RAM;

architecture Behavioral of RAM is

subtype word is STD_LOGIC_VECTOR(31 downto 0);
type RAM_type is array (0 to 31) of word;
signal DataMem: RAM_type;

begin
	process (CLK, WRITE_ENABLE, READ_ENABLE, DataMem, RW_ADDRESS)
	begin
		if falling_edge (CLK) then
			if ((WRITE_ENABLE = '1') and (READ_ENABLE = '0')) then
				DataMem(to_integer(shift_right(unsigned(RW_ADDRESS),2))) <= WRITE_DATA;
			end if;
		end if;
	end process;
	
	READ_DATA <= (others => '0') when ((WRITE_ENABLE = '1') and (READ_ENABLE = '0')) else
					 DataMem(to_integer(shift_right(unsigned(RW_ADDRESS),2))) when ((WRITE_ENABLE = '0') and (READ_ENABLE = '1')) else
					 (others => '0') when ((WRITE_ENABLE = '0') and (READ_ENABLE = '0')) else
					 (others => '0');
end Behavioral;