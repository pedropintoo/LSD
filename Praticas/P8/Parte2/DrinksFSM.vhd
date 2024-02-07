library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DrinksFSM is
	port(reset			: in  std_logic;
		  clk				: in  std_logic;
		  V	   		: in  std_logic;
		  C	   		: in  std_logic;
		  abrir			: out std_logic;
		  currentState : out std_logic_vector(3 downto 0));
end DrinksFSM;

architecture Behavioral of DrinksFSM is

	type TState is (E0, E1, E2, E3, E4, E5);
	signal s_currentState, s_nextState : TState;

begin

	sync_proc : process(clk)
					begin
						if (rising_edge(clk)) then
							if (reset = '1') then
								s_currentState <= E0;
							else
								s_currentState <= s_nextState;
							end if;
						end if;
					end process;

	comb_proc : process(s_currentState, V, C)
					begin
						case (s_currentState) is
							when E0 =>
								abrir <= '0';
								if (C = '1') then
									s_nextState <= E3;
								elsif (V = '1') then
									s_nextState <= E1;
								else
									s_nextState <= E0;
								end if;

							when E1 =>
								abrir <= '0';
								if (C = '1') then
									s_nextState <= E4;
								elsif (V = '1') then
									s_nextState <= E2;
								else
									s_nextState <= E1;
								end if;

							when E2 =>
								abrir <= '0';
								if (C = '1') then
									s_nextState <= E5;
								elsif (V = '1') then
									s_nextState <= E3;
								else
									s_nextState <= E2;
								end if;

							when E3 =>
								abrir <= '0';
								if (C = '1') then
									s_nextState <= E5;
								elsif (V = '1') then
									s_nextState <= E4;
								else
									s_nextState <= E3;
								end if;
								
							when E4 =>
								abrir <= '0';
								if (C = '1') then
									s_nextState <= E5;
								elsif (V = '1') then
									s_nextState <= E5;
								else
									s_nextState <= E4;
								end if;
								
							when E5 =>
								abrir <= '1';
								s_nextState <= E0;
								
							when others => 
								abrir <= 'X';
								report "Reach undefined state";
								
						end case;
					end process;
					
	-- converts an enumerated type TState into a 4-bit std_logic_vector.	
	currentState <= std_logic_vector(to_unsigned(TState'pos(s_currentState),4));

end Behavioral;
