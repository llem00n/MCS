
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity transition_logic_intf is
	port ( CUR_STATE : in std_logic_vector(2 downto 0);
			 MODE : in std_logic;
			 NEXT_STATE : out std_logic_vector(2 downto 0));
end transition_logic_intf;

architecture transition_logic_arch of transition_logic_intf is
begin                  
	NEXT_STATE(0) <= (not(CUR_STATE(0)));
	NEXT_STATE(1) <= ((not(MODE) and ((CUR_STATE(0) and not(CUR_STATE(1))) or
                                     (not(CUR_STATE(0)) and CUR_STATE(1)))) or
                     (MODE and ((CUR_STATE(0) and CUR_STATE(1)) or
                                (not(CUR_STATE(0)) and not(CUR_STATE(1))))));
   NEXT_STATE(2) <= (
     (not(MODE) and (
       (not(CUR_STATE(2)) and CUR_STATE(1) and CUR_STATE(0)) or
       (CUR_STATE(2) and (not(CUR_STATE(1)) or not(CUR_STATE(0))))
     )) or 
     (MODE and (
       (not(CUR_STATE(2)) and not(CUR_STATE(1)) and not(CUR_STATE(0))) or
       (CUR_STATE(2) and (CUR_STATE(1) or (CUR_STATE(0)))) 
     )));
end transition_logic_arch;

