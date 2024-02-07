library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- Para calcular os bits necessários para o valor máximo
use IEEE.math_real.all;

entity Timer is
	generic(MAX		    : natural := 20); -- Valor máximo
	port(	  enable     : in std_logic;  
			  reset	    : in  std_logic;
			  startStop	 : in  std_logic;
		     clk        : in  std_logic;
		     valOut     : out  std_logic_vector(integer(floor(log2(real(MAX)))) downto 0);
		     mode	    : out std_logic;
		     startReady : out std_logic);
end Timer;

architecture Behavioral of Timer is

	signal s_value : unsigned(integer(floor(log2(real(MAX)))) downto 0) := to_unsigned(MAX, integer(floor(log2(real(MAX)))) + 1);
	signal s_mode  : std_logic := '0';
	signal s_startReady : std_logic := '1';
	
begin	
	process(clk)
	begin	
		if (rising_edge(clk)) then
			if(startStop = '1') then
				s_mode <= not s_mode;
			end if;
			if (reset = '1') then
				s_value <= to_unsigned(MAX, integer(floor(log2(real(MAX)))) + 1); -- Reset
				s_startReady <= '1';
				s_mode <= '0';
			elsif ((enable = '1') and (s_mode = '1')) then	
				if (to_integer(s_value) = 0) then
					s_value <= to_unsigned(MAX, integer(floor(log2(real(MAX)))) + 1); -- Iniciamos o novo 'ciclo'
					s_startReady <= '1';
					s_mode <= '0';
				else
					s_value <= s_value - 1;
					s_startReady <= '0';
				end if;
			end if;
		end if;
	end process;
	mode <= s_mode;
	startReady <= s_startReady;
	valOut <= std_logic_vector(s_value);
end Behavioral;
