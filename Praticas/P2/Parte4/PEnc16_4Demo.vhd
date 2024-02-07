library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc16_4Demo is
	port( SW  : in std_logic_vector(15 downto 0);
			LEDR : out std_logic_vector(3 downto 0);
			LEDG   : out std_logic_vector(0 downto 0)
		 );
end entity PEnc16_4Demo;

architecture Shell of PEnc16_4Demo is
begin
	system_core : entity work.PEnc16_4(Behavioral)
					  port map(decodedln  => SW,
								  encodedOut => LEDR,
								  validOut   => LEDG(0)
								 );
								  
end architecture Shell;
