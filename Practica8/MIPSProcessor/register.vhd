----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:38:33 09/13/2020 
-- Design Name: 
-- Module Name:    register - Behavioral 
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

entity BancoRegistros is
    Port ( ENABLER : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK : in  STD_LOGIC;
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
			  reg : out STD_LOGIC_VECTOR (1023 downto 0) := (others => '0'));
end BancoRegistros;

architecture Behavioral of BancoRegistros is

component Registro32bits
	Port ( CLK : in STD_LOGIC;
			 D : in STD_LOGIC_VECTOR (31 downto 0);
			 Q : out STD_LOGIC_VECTOR (31 downto 0);
			 ENABLE : in STD_LOGIC);
end component;
			
begin
	
R00 : Registro32bits port map (CLK, x"00000000", reg( 31 downto   0), ENABLER(0));
R01 : Registro32bits port map (CLK, WriteData, reg( 63 downto  32), ENABLER(1));
R02 : Registro32bits port map (CLK, WriteData, reg( 95 downto  64), ENABLER(2));
R03 : Registro32bits port map (CLK, WriteData, reg(127 downto  96), ENABLER(3));
R04 : Registro32bits port map (CLK, WriteData, reg(159 downto 128), ENABLER(4));
R05 : Registro32bits port map (CLK, WriteData, reg(191 downto 160), ENABLER(5));
R06 : Registro32bits port map (CLK, WriteData, reg(223 downto 192), ENABLER(6));
R07 : Registro32bits port map (CLK, WriteData, reg(255 downto 224), ENABLER(7));
R08 : Registro32bits port map (CLK, WriteData, reg(287 downto 256), ENABLER(8));
R09 : Registro32bits port map (CLK, WriteData, reg(319 downto 288), ENABLER(9));
R10 : Registro32bits port map (CLK, WriteData, reg(351 downto 320), ENABLER(10));
R11 : Registro32bits port map (CLK, WriteData, reg(383 downto 352), ENABLER(11));
R12 : Registro32bits port map (CLK, WriteData, reg(415 downto 384), ENABLER(12));
R13 : Registro32bits port map (CLK, WriteData, reg(447 downto 416), ENABLER(13));
R14 : Registro32bits port map (CLK, WriteData, reg(479 downto 448), ENABLER(14));
R15 : Registro32bits port map (CLK, WriteData, reg(511 downto 480), ENABLER(15));
R16 : Registro32bits port map (CLK, WriteData, reg(543 downto 512), ENABLER(16));
R17 : Registro32bits port map (CLK, WriteData, reg(575 downto 544), ENABLER(17));
R18 : Registro32bits port map (CLK, WriteData, reg(607 downto 576), ENABLER(18));
R19 : Registro32bits port map (CLK, WriteData, reg(639 downto 608), ENABLER(19));
R20 : Registro32bits port map (CLK, WriteData, reg(671 downto 640), ENABLER(20));
R21 : Registro32bits port map (CLK, WriteData, reg(703 downto 672), ENABLER(21));
R22 : Registro32bits port map (CLK, WriteData, reg(735 downto 704), ENABLER(22));
R23 : Registro32bits port map (CLK, WriteData, reg(767 downto 736), ENABLER(23));
R24 : Registro32bits port map (CLK, WriteData, reg(799 downto 768), ENABLER(24));
R25 : Registro32bits port map (CLK, WriteData, reg(831 downto 800), ENABLER(25));
R26 : Registro32bits port map (CLK, WriteData, reg(863 downto 832), ENABLER(26));
R27 : Registro32bits port map (CLK, WriteData, reg(895 downto 864), ENABLER(27));
R28 : Registro32bits port map (CLK, WriteData, reg(927 downto 896), ENABLER(28));
R29 : Registro32bits port map (CLK, WriteData, reg(959 downto 928), ENABLER(29));
R30 : Registro32bits port map (CLK, WriteData, reg(991 downto 960), ENABLER(30));
R31 : Registro32bits port map (CLK, WriteData, reg(1023 downto 992), ENABLER(31));

end Behavioral;

