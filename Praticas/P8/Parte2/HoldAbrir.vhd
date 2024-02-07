library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity HoldAbrir is
	generic (delayCounter : positive := 50000000);
	port ( clk			:	in		std_logic;
				d			:	in		std_logic;
				q			: 	out	std_logic);
end HoldAbrir;

architecture Behavioral of HoldAbrir is
	signal s_counter : natural range 1 to (delayCounter) := 1;
begin

	process(clk)
	begin
		if (rising_edge(clk)) then
			if(d = '1') then
				q <= '1';
				s_counter <= 1;
			else
				s_counter <= s_counter + 1;
			end if;
			if(s_counter = delayCounter) then
				q <= '0';
			end if;
		end if;
	end process;

	
end Behavioral;