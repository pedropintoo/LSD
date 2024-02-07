LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Dec2_4EnDemo IS
	PORT(SW   : IN std_logic_vector(2 DOWNTO 0);
		  LEDR : OUT std_logic_vector(3 DOWNTO 0) 
	);
END ENTITY Dec2_4EnDemo;

ARCHITECTURE Shell of Dec2_4EnDemo IS
BEGIN

	system_core : ENTITY work.Dec2_4En(BehavProc)
									PORT MAP(enable => SW(2),
												inputs => SW(1 DOWNTO 0),
												outputs => LEDR(3 DOWNTO 0)
											);
											
END ARCHITECTURE Shell; 


