library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerN is
	generic( N                      : positive := 6);
	port( clk, enable, reset, start : in std_logic;
			timerOut                  : out std_logic);
end TimerN;

architecture Behavioral of TimerN is
	signal s_count : integer := 0;
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				timerOut <= '0';
				s_count  <= 0;
			elsif (enable = '1') then
				if (s_count = 0) then
					if (start='1') then
						timerOut <= '1';
						s_count <= s_count + 1;
					else
						timerOut <= '0';
					end if;
				else
					if(s_count = N ) then
						timerOut <= '0';
						s_count <= 0;
					else
						timerOut <= '1';
						s_count <= s_count + 1;
					end if;
				end if;
			else
				timerOut <= '0';
			end if;
		end if;
	end process;
	
end Behavioral; 

