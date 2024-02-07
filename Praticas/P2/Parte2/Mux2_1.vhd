LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Mux2_1 IS
	PORT(	sel, dataIn0, dataIn1: IN std_logic;
			dataOut : OUT std_logic
	);
END ENTITY Mux2_1;

ARCHITECTURE BehavProc of Mux2_1 IS
BEGIN
	PROCESS(sel,dataIn0,dataIn1)
	BEGIN
		IF sel = '1' THEN
			dataOut <= dataIn1;
		ELSE
			dataOut <= dataIn0;
		END IF;
	END PROCESS;
END ARCHITECTURE BehavProc;