LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Mux4_1 IS
	PORT(	sel : IN std_logic_vector(1 DOWNTO 0);
			dataIn0, dataIn1, dataIn2, dataIn3: IN std_logic;
			dataOut : OUT std_logic
	);
END ENTITY Mux4_1;

ARCHITECTURE BehavProc of Mux4_1 IS
BEGIN
	PROCESS(sel,dataIn0,dataIn1)
	BEGIN
		IF sel = "11" THEN
			dataOut <= dataIn3;
		ELSIF sel = "10" THEN
			dataOut <= dataIn2;
		ELSIF sel = "01" THEN
			dataOut <= dataIn1;
		ELSE
			dataOut <= dataIn0;
		END IF;
	END PROCESS;
END ARCHITECTURE BehavProc;