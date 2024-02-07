library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegisterLoadN is
	generic( size    : natural := 4); 
	port( 	clk     : in std_logic;
				sin     : in std_logic;
				load    : in std_logic;
				reset   : in std_logic;
				enable  : in std_logic;
				dataIn  : in std_logic_vector(size-1 downto 0);
				dataOut : out std_logic_vector(size-1 downto 0)
		 );
end ShiftRegisterLoadN;

architecture Behavioral of ShiftRegisterLoadN is
	signal s_reg : std_logic_vector(size-1 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(reset = '1') then
				s_reg <= (others => '0');
			elsif(enable = '1') then
				if(load = '1') then
					s_reg <= dataIn;
				else
					s_reg <= s_reg(size-2 downto 0) & sin;
				end if;
			end if;
		end if;
	end process;
	dataOut <= s_reg;
end Behavioral;