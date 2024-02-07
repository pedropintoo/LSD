library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AccN is
	generic( N               : positive := 4);
	port( clk, enable, reset : in std_logic;
			dataIn    			 : in std_logic_vector(N-1 downto 0);
			dataOut	 			 : out std_logic_vector(N-1 downto 0);
			overflow           : out std_logic);
end AccN;

-- Structural Architecture ( not used in .bdf )

architecture Structural of AccN is
	signal s_dataOut,s_adderOut : std_logic_vector(N-1 downto 0);
begin
	add_n : entity work.AdderN(Behavioral)
				generic map(N     => N)
				port map(operand0 => dataIn,
							operand1 => s_dataOut,
							result   => s_adderOut);
	
	reg_n : entity work.RegN(Behavioral)
				generic map(N    => N)
				port map(dataIn  => s_adderOut,
							reset   => reset,
							enable  => enable,
							clk     => clk,
							dataOut => s_dataOut);
	
	dataOut <= s_dataOut;
end Structural; 


architecture Behavioral of AccN is
	signal s_dataOut : std_logic_vector(N downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_dataOut <= (others => '0');
			elsif (enable = '1') then
				s_dataOut <= std_logic_vector(unsigned('0' & s_dataOut(N-1 downto 0)) + unsigned('0' & dataIn));		
			end if;
		end if;
	end process;
	
	overflow <= '1' when (s_dataOut(N) = '1') else '0';
	dataOut <= s_dataOut(N-1 downto 0);
end Behavioral; 


