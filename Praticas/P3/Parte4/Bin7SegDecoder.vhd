LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Bin7SegDecoder IS
	PORT( enable   : IN std_logic_vector(0 DOWNTO 0);
			binInput : IN std_logic_vector(3 DOWNTO 0);
			decOut_n : OUT std_logic_vector(6 DOWNTO 0)
			);
END ENTITY Bin7SegDecoder;

ARCHITECTURE Behavioral OF Bin7SegDecoder IS
BEGIN


				decOut_n <=  "1111111" WHEN (enable(0) = '0') ELSE --Disable 
								 "1111001" WHEN (binInput = "0001") ELSE --1
								 "0100100" WHEN (binInput = "0010") ELSE --2
								 "0110000" WHEN (binInput = "0011") ELSE --3
								 "0011001" WHEN (binInput = "0100") ELSE --4
								 "0010010" WHEN (binInput = "0101") ELSE --5
								 "0000010" WHEN (binInput = "0110") ELSE --6
								 "1111000" WHEN (binInput = "0111") ELSE --7
								 "0000000" WHEN (binInput = "1000") ELSE --8
								 "0010000" WHEN (binInput = "1001") ELSE --9
								 "0001000" WHEN (binInput = "1010") ELSE --A
								 "0000011" WHEN (binInput = "1011") ELSE --b
								 "1000110" WHEN (binInput = "1100") ELSE --C
								 "0100001" WHEN (binInput = "1101") ELSE --D
								 "0000110" WHEN (binInput = "1110") ELSE --E
								 "0001110" WHEN (binInput = "1111") ELSE --F
								 "1000000"; --0

END ARCHITECTURE Behavioral;    