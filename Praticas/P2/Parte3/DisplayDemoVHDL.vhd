LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY DisplayDemoVHDL IS
	PORT( KEY  : IN std_logic_vector(0 DOWNTO 0);
			SW   : IN std_logic_vector(3 DOWNTO 0);
			HEX0, LEDR : OUT std_logic_vector(6 DOWNTO 0);
			LEDG : OUT std_logic_vector(3 DOWNTO 0)
			);
END ENTITY DisplayDemoVHDL;

ARCHITECTURE Structural OF DisplayDemoVHDL IS
SIGNAL Output : std_logic_vector(6 DOWNTO 0);
BEGIN
	U1 : ENTITY work.Bin7SegDecoderEn(Behavioral) PORT MAP( enable => KEY(0),
																			binInput => SW,
																			decOut_n => Output);
	LEDG <= SW;
	HEX0 <= Output;
	LEDR <= Output;


END ARCHITECTURE Structural;   