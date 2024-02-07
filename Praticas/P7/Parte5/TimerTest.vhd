library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerTest is
	port( CLOCK_50 : in std_logic;
			SW       : in std_logic_vector(2 downto 0);
			timerOut : out std_logic);
end TimerTest;

architecture Behavioral of TimerTest is
begin
	
	timer : entity work.TimerN(Behavioral)
				generic map( N => 10)
				port map(	clk => CLOCK_50,
								enable => SW(1),
								reset => SW(0),
								start => SW(2),
								timerOut => timerOut);

end Behavioral; 

