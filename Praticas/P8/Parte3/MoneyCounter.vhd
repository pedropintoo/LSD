library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity MoneyCounter is
	port ( clk			        :	in		std_logic;
				C			        :	in		std_logic;
				V					  : 	in	std_logic;
				clearFallingEdge : in std_logic;
				unitsCnt 		  : out std_logic_vector(3 downto 0);
				tensCnt 			  : out std_logic_vector(3 downto 0));
end MoneyCounter;


architecture Behavioral of MoneyCounter is
	signal s_counter : unsigned(3 downto 0) := "0000";
	signal s_delayCounter : positive := 1;

begin

	counting : process(clk)
					begin
						if (rising_edge(clk)) then
							if(s_counter >= 9) then
								s_delayCounter <= s_delayCounter + 1;
								if(s_delayCounter = 50000000) then
									s_counter <= "0000";
									s_delayCounter <= 1;
								end if;
							elsif(C = '1') then -- C with priority, like the State Machine
								s_counter <= s_counter + 5;
							elsif(V = '1') then
								s_counter <= s_counter + 2;
							end if;
						end if;
					end process;
	

	
	unitsCnt <= std_logic_vector(s_counter / "1010");
	tensCnt  <= std_logic_vector(s_counter rem "1010");
	
end Behavioral;