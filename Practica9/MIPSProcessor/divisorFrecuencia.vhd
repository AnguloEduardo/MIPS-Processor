----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:16:04 11/15/2020 
-- Design Name: 
-- Module Name:    divisorFrecuencia - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divisorFrecuencia is
    Port ( CLK : in STD_LOGIC;
           CLK_OUT : out  STD_LOGIC);
end divisorFrecuencia;

architecture Behavioral of divisorFrecuencia is
	signal counter : integer range 0 to 49_999 := 0;
	signal C500MZ : STD_LOGIC;

begin
	process (CLK)
	begin
		if CLK = '1' and CLK'EVENT then 
			if counter = 49_999 then
				counter <= 0;
				C500MZ <= not C500MZ;
			else counter <= counter + 1;
			end if;
		else null;
		end if;
	end process;
	
	CLK_OUT <= C500MZ;


end Behavioral;

