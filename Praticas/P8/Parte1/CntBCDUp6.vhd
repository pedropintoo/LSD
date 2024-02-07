library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CntBCDUp6 is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  enable1	: in  std_logic;
		  enable2	: in  std_logic;
		  count		: out std_logic_vector(23 downto 0);
		  maxCount  : out std_logic);
end CntBCDUp6;

architecture Behavioral of CntBCDUp6 is

	signal s_count : unsigned(23 downto 0);
	signal s_maxCount : std_logic := '0';

begin
	-- Conta "já" em BCD

	count_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_count <=  X"000000";
				s_maxCount <= '0';
			elsif ((enable1 = '1') and (enable2 = '1') and (s_maxCount = '0')) then  -- wait for reset if maxCount was achieved
				if(s_count = X"595999") then
					s_maxCount <= '1';
				elsif (s_count(3 downto 0) = X"9") then  -- first right digit
					s_count(3 downto 0) <= X"0";
					if (s_count(7 downto 4) = X"9") then  -- second right digit
						s_count(7 downto 4) <= X"0";
						if (s_count(11 downto 8) = X"9") then  -- third right digit
							s_count(11 downto 8) <= X"0";
							if (s_count(15 downto 12) = X"5") then   -- fourth right digit
								s_count(15 downto 12) <= X"0";
								if (s_count(19 downto 16) = X"9") then   -- fifth right digit
									s_count(19 downto 16) <= X"0";
									if (s_count(23 downto 20) /= X"5") then   -- sixth right digit
										s_count(23 downto 20) <= s_count(23 downto 20) + 1;
									end if;
								else
									s_count(19 downto 16) <= s_count(19 downto 16) + 1;
								end if;
							else
								s_count(15 downto 12) <= s_count(15 downto 12) + 1;
							end if;
						else
							s_count(11 downto 8) <= s_count(11 downto 8) + 1;
						end if;
					else
						s_count(7 downto 4) <= s_count(7 downto 4) + 1;
					end if;
				else
					s_count(3 downto 0) <= s_count(3 downto 0) + 1;
				end if;
			end if;
		end if;
	end process;

	count <= std_logic_vector(s_count);
	maxCount <= s_maxCount;
	
end Behavioral;
