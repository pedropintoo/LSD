library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LatchD_Demo is
	port( KEY  : in std_logic_vector(0 downto 0);
			SW   : in std_logic_vector(0 downto 0);
			LEDR : out std_logic_vector(0 downto 0)
	);
end LatchD_Demo;

architecture Behavioral of LatchD_Demo is
begin
	latchD : entity work.LatchD(Behavioral)
					port map(enable => KEY(0),
								d      => SW(0),
								q      => LEDR(0)
								);
end Behavioral; 

