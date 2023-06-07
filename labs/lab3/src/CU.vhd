-- CU.VHD
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CU_INTF IS
	PORT (
		CLOCK : IN STD_LOGIC;
		RESET : IN STD_LOGIC;
		ENTER_OP1 : IN STD_LOGIC;
		ENTER_OP2 : IN STD_LOGIC;
		CALCULATE : IN STD_LOGIC;
		RAM_WR : OUT STD_LOGIC;
		RAM_ADDR_BUS : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		ACC_WR : OUT STD_LOGIC;
		ACC_RST : OUT STD_LOGIC;
		IN_SEL : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		OP_CODE_BUS : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END CU_INTF;

ARCHITECTURE CU_ARCH OF CU_INTF IS
	TYPE STATES IS (S_RST, S_IDLE, S_LO1, S_LO2, S_C0, S_C1, SC2, S_C3, S_C4, S_C5, S_C6, S_C7, S_C8, S_C9, S_C10, S_C11, S_FINISH);
	SIGNAL cu_cur_state : STATES;
	SIGNAL cu_next_state : STATES;
BEGIN
	CLK : PROCESS (CLOCK)
	BEGIN
		IF (rising_edge(CLOCK)) THEN
			IF (RESET = '1') THEN
				cu_cur_state <= S_RST;
			ELSE
				cu_cur_state <= cu_next_state;
			END IF;
		END IF;
	END PROCESS CLK;

	NEXT_STATE : PROCESS (cu_cur_state, ENTER_OP1, ENTER_OP2, CALCULATE)
	BEGIN
		cu_next_state <= cu_cur_state;
		
		CASE(cu_cur_state) IS
			WHEN S_RST =>
			cu_next_state <= S_IDLE;
			WHEN S_IDLE =>
			IF (ENTER_OP1 = '1') THEN
				cu_next_state <= S_LO1;
			ELSIF (ENTER_OP2 = '1') THEN
				cu_next_state <= S_LO2;
			ELSIF (rising_edge(CALCULATE)) THEN
				cu_next_state <= S_C0;
			ELSE
				cu_next_state <= S_IDLE;
			END IF;
			WHEN S_LO1 =>
			cu_next_state <= S_IDLE;
			WHEN S_LO2 =>
			cu_next_state <= S_IDLE;
			WHEN S_C0 =>
			cu_next_state <= S_C1;
			WHEN S_C1 =>
			cu_next_state <= SC2;
			WHEN SC2 =>
			cu_next_state <= S_C3;
			WHEN S_C3 =>
			cu_next_state <= S_C4;
			WHEN S_C4 =>
			cu_next_state <= S_C5;
			WHEN S_C5 =>
			cu_next_state <= S_C6;
			WHEN S_C6 =>
			cu_next_state <= S_C7;
			WHEN S_C7 =>
			cu_next_state <= S_C8;
			WHEN S_C8 =>
			cu_next_state <= S_C9;
			WHEN S_C9 =>
			cu_next_state <= S_C10;
			WHEN S_C10 =>
			cu_next_state <= S_C11;
			WHEN S_C11 =>
			cu_next_state <= S_FINISH;
			WHEN S_FINISH =>
			cu_next_state <= S_FINISH;
			WHEN OTHERS =>
			cu_next_state <= S_IDLE;
		END CASE;
	END PROCESS NEXT_STATE;

	OUTPUT : PROCESS (cu_cur_state)
	BEGIN
		CASE(cu_cur_state) IS
			WHEN S_RST =>
			IN_SEL <= "00";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "00";
			RAM_WR <= '0';
			ACC_RST <= '1';
			ACC_WR <= '0';
			WHEN S_IDLE =>
			IN_SEL <= "00";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "00";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '0';
			WHEN S_LO1 =>
			IN_SEL <= "00";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "01";
			RAM_WR <= '1';
			ACC_RST <= '0';
			ACC_WR <= '1';
			WHEN S_LO2 =>
			IN_SEL <= "00";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "10";
			RAM_WR <= '1';
			ACC_RST <= '0';
			ACC_WR <= '1';

			-- OP 1
			WHEN S_C0 =>
			IN_SEL <= "01";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "01";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '0';
			WHEN S_C1 =>
			IN_SEL <= "01";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "01";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '1';
			WHEN SC2 =>
			IN_SEL <= "01";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "10";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '1';

			-- OP 2
			WHEN S_C3 =>
			IN_SEL <= "01";
			OP_CODE_BUS <= "01";
			RAM_ADDR_BUS <= "10";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '0';
			WHEN S_C4 =>
			IN_SEL <= "01";
			OP_CODE_BUS <= "01";
			RAM_ADDR_BUS <= "10";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '1';
			WHEN S_C5 =>
			IN_SEL <= "01";
			OP_CODE_BUS <= "01";
			RAM_ADDR_BUS <= "10";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '1';

			-- OP 3
			WHEN S_C6 =>
			IN_SEL <= "01";
			OP_CODE_BUS <= "10";
			RAM_ADDR_BUS <= "00";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '0';
			WHEN S_C7 => 
			IN_SEL <= "01";
			OP_CODE_BUS <= "10";
			RAM_ADDR_BUS <= "00";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '1';
			WHEN S_C8 => 
			IN_SEL <= "01";
			OP_CODE_BUS <= "10";
			RAM_ADDR_BUS <= "01";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '1';

			-- OP 4
			WHEN S_C9 =>
			IN_SEL <= "01";
			OP_CODE_BUS <= "11";
			RAM_ADDR_BUS <= "01";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '0';
			WHEN S_C10 => 
			IN_SEL <= "01";
			OP_CODE_BUS <= "11";
			RAM_ADDR_BUS <= "01";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '1';
			WHEN S_C11 => 
			IN_SEL <= "01";
			OP_CODE_BUS <= "11";
			RAM_ADDR_BUS <= "01";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '1';

			WHEN S_FINISH =>
			IN_SEL <= "00";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "00";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '0';
			WHEN OTHERS =>
			IN_SEL <= "00";
			OP_CODE_BUS <= "00";
			RAM_ADDR_BUS <= "00";
			RAM_WR <= '0';
			ACC_RST <= '0';
			ACC_WR <= '0';
		END CASE;
	END PROCESS OUTPUT;

END CU_ARCH;