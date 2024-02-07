library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FlipFlopControlo is
	port( clk 		    : in std_logic;
			set, reset : in std_logic;
			q   		    : out std_logic
	);
end FlipFlopControlo;

architecture BehavRSSync of FlipFlopControlo is
	signal s_start : std_logic := '0';
	signal s_q     : std_logic := '1';
begin
	process(clk)
		begin
		if (rising_edge(clk)) then
			if ( reset = '1' ) then
				s_q <= '0';
				s_start <= '1';
			elsif ( set = '1') then
				if(s_start = '1') then
					s_q <= '1';
					s_start <= '0';
				else
					s_q <= not s_q;
				end if;
			end if;
		end if;
		q <= s_q; -- Mantem estado atual no caso de não haver reset nem set
	end process;
end BehavRSSync; 
