-- CU.VHD

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY CU_INTF IS
	PORT (
		CLK : IN STD_LOGIC;
		RESET : IN STD_LOGIC;
		ENTER_OP1 : IN STD_LOGIC;
		ENTER_OP2 : IN STD_LOGIC;
		CALCULATE : IN STD_LOGIC;
		RAM_WE : OUT STD_LOGIC;
		RAM_ADDRESS_BUS : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		ACC_WE : OUT STD_LOGIC;
		ACC_CLR : OUT STD_LOGIC;
		MUX_MODE : OUT STD_LOGIC;
		OPCODE_BUS : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END CU_INTF;

ARCHITECTURE CU_ARCH OF CU_INTF IS
	TYPE cu_state_type IS (cu_rst, cu_idle, cu_load_op1, cu_load_op2, cu_run_calc0, cu_run_calc1, cu_run_calc2, cu_finish);
	SIGNAL cu_cur_state : cu_state_type;
	SIGNAL cu_next_state : cu_state_type;
BEGIN
	CLOCK : PROCESS (CLK)
	BEGIN
		IF (rising_edge(CLK)) THEN
			IF (RESET = '1') THEN
				cu_cur_state <= cu_rst;
			ELSE
				cu_cur_state <= cu_next_state;
			END IF;
		END IF;
	END PROCESS CLOCK;

	MAIN : PROCESS (cu_cur_state, ENTER_OP1, ENTER_OP2, CALCULATE)
	BEGIN
		cu_next_state <= cu_cur_state;

		CASE(cu_cur_state) IS
			WHEN cu_rst => cu_next_state <= cu_idle;
			WHEN cu_idle =>
			IF (ENTER_OP1 = '1') THEN
				cu_next_state <= cu_load_op1;
			ELSIF (ENTER_OP2 = '1') THEN
				cu_next_state <= cu_load_op2;
			ELSIF (CALCULATE = '1') THEN
				cu_next_state <= cu_run_calc0;
			ELSE
				cu_next_state <= cu_idle;
			END IF;
			WHEN cu_load_op1 => cu_next_state <= cu_idle;
			WHEN cu_load_op2 => cu_next_state <= cu_idle;
			WHEN cu_run_calc0 => cu_next_state <= cu_run_calc1;
			WHEN cu_run_calc1 => cu_next_state <= cu_run_calc2;
			WHEN cu_run_calc2 => cu_next_state <= cu_finish;
			WHEN cu_finish => cu_next_state <= cu_finish;
			WHEN OTHERS => cu_next_state <= cu_idle;
		END CASE;
	END PROCESS MAIN;

	OUTPUT : PROCESS (cu_cur_state)
	BEGIN
		CASE(cu_cur_state) IS
			WHEN cu_rst =>
			MUX_MODE <= '0';
			OPCODE_BUS <= "000";
			RAM_ADDRESS_BUS <= "00";
			RAM_WE <= '0';
			ACC_CLR <= '1';
			ACC_WE <= '0';
			WHEN cu_idle =>
			MUX_MODE <= '0';
			OPCODE_BUS <= "000";
			RAM_ADDRESS_BUS <= "00";
			RAM_WE <= '0';
			ACC_CLR <= '0';
			ACC_WE <= '0';
			WHEN cu_load_op1 =>
			MUX_MODE <= '0';
			OPCODE_BUS <= "000";
			RAM_ADDRESS_BUS <= "00";
			RAM_WE <= '1';
			ACC_CLR <= '0';
			ACC_WE <= '0';
			WHEN cu_load_op2 =>
			MUX_MODE <= '0';
			OPCODE_BUS <= "001";
			RAM_ADDRESS_BUS <= "01";
			RAM_WE <= '1';
			ACC_CLR <= '0';
			ACC_WE <= '0';
			WHEN cu_run_calc0 =>
			MUX_MODE <= '1';
			OPCODE_BUS <= "010";
			RAM_ADDRESS_BUS <= "00";
			RAM_WE <= '0';
			ACC_CLR <= '0';
			ACC_WE <= '1';
			WHEN cu_run_calc1 =>
			MUX_MODE <= '1';
			OPCODE_BUS <= "011";
			RAM_ADDRESS_BUS <= "01";
			RAM_WE <= '0';
			ACC_CLR <= '0';
			ACC_WE <= '1';
			WHEN cu_run_calc2 =>
			MUX_MODE <= '1';
			OPCODE_BUS <= "100";
			RAM_ADDRESS_BUS <= "01";
			RAM_WE <= '0';
			ACC_CLR <= '0';
			ACC_WE <= '1';
			WHEN cu_finish =>
			MUX_MODE <= '0';
			OPCODE_BUS <= "000";
			RAM_ADDRESS_BUS <= "00";
			RAM_WE <= '0';
			ACC_CLR <= '0';
			ACC_WE <= '0';
			WHEN OTHERS =>
			MUX_MODE <= '0';
			OPCODE_BUS <= "000";
			RAM_ADDRESS_BUS <= "00";
			RAM_WE <= '0';
			ACC_CLR <= '0';
			ACC_WE <= '0';
		END CASE;
	END PROCESS OUTPUT;

END CU_ARCH;