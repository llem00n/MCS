-- ACC.VHD
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ACC_INTF is
port (
	CLOCK: in std_logic;
	DATA_IN_BUS: in std_logic_vector(7 downto 0);
	WR: in std_logic;
	RST: in std_logic;
	DATA_OUT_BUS: out std_logic_vector(7 downto 0));
end ACC_INTF;

architecture ACC_ARCH of ACC_INTF is
	signal DATA: std_logic_vector(7 downto 0);
begin
	ACC_IN : process(CLOCK)
	 begin
	 	if (rising_edge(CLOCK)) then
			if(RST = '1') then
				DATA <= "00000000";
			elsif (WR = '1') then
				DATA <= DATA_IN_BUS;
			end if;			
		end if;
	 end process ACC_IN;
	 
	 ACC_OUT : process(CLOCK)
	 begin
	 	if (rising_edge(CLOCK)) then
			DATA_OUT_BUS <= DATA;
		end if;
	 end process ACC_OUT;
end ACC_ARCH;

