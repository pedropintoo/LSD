library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- Para calcular os bits necessários para o valor máximo
use IEEE.math_real.all;

entity CounterN is
	generic(MAX		 : natural := 15); -- Valor máximo
	port(	  upDown  : in std_logic;  -- upDown = '1' --> contagem crescente
			  reset	 : in  std_logic;
			  clk		 : in  std_logic;
		     enable1 : in  std_logic;
		     enable2 : in  std_logic;
		     valOut	 : out std_logic_vector(integer(floor(log2(real(MAX)))) downto 0);
		     termCnt : out std_logic);
end CounterN;

architecture BehavioralUpCounter of CounterN is

	signal s_value : unsigned(integer(floor(log2(real(MAX)))) downto 0);

begin
	process(clk)
	begin	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_value <= (others => '0'); -- Reset
				termCnt <= '0';
			elsif ((enable1 = '1') and (enable2 = '1')) then
				if (to_integer(s_value) = MAX) then
					s_value <= (others => '0'); -- Iniciamos o novo 'ciclo'
					termCnt <= '0';
				else
					s_value <= s_value + 1;
					if (to_integer(s_value) = MAX - 1) then
						termCnt <= '1'; -- valor terminal = no próximo rising_edge o iniciamos o novo 'ciclo'
					else
						termCnt <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;

	valOut <= std_logic_vector(s_value);
end BehavioralUpCounter;

architecture BehavioralDownCounter of CounterN is

	signal s_value : unsigned(integer(floor(log2(real(MAX)))) downto 0);

begin
	process(clk)
	begin	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_value <= (others => '0'); -- Reset
				termCnt <= '0';
			elsif ((enable1 = '1') and (enable2 = '1')) then
				if (to_integer(s_value) = 0) then
					s_value <= to_unsigned(MAX, integer(floor(log2(real(MAX)))) + 1); -- Iniciamos o novo 'ciclo'
					termCnt <= '1';
				else
					s_value <= s_value - 1;
					termCnt <= '0';
				end if;
			end if;
		end if;
	end process;

	valOut <= std_logic_vector(s_value);
end BehavioralDownCounter;


architecture BehavioralUpDownCounter of CounterN is

	signal s_value : unsigned(integer(floor(log2(real(MAX)))) downto 0);

begin
	process(clk)
	begin	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_value <= (others => '0'); -- Reset
				termCnt <= '0';
			elsif ((enable1 = '1') and (enable2 = '1')) then
				if( upDown = '0' ) then
				
					-- Contagem Decrescente --
					if (to_integer(s_value) = 0) then
						s_value <= to_unsigned(MAX, integer(floor(log2(real(MAX)))) + 1); -- Iniciamos o novo 'ciclo'
						termCnt <= '1';
					else
						s_value <= s_value - 1;
						termCnt <= '0';
					end if;
					
				else
				
					-- Contagem Crescente --
					if (to_integer(s_value) = MAX) then
						s_value <= (others => '0'); -- Iniciamos o novo 'ciclo'
						termCnt <= '0';
					else
						s_value <= s_value + 1;
						if (to_integer(s_value) = MAX - 1) then
							termCnt <= '1'; -- valor terminal = no próximo rising_edge o iniciamos o novo 'ciclo'
						else
							termCnt <= '0';
						end if;
					end if;
					
				end if;
			end if;
		end if;
	end process;

	valOut <= std_logic_vector(s_value);
end BehavioralUpDownCounter;

