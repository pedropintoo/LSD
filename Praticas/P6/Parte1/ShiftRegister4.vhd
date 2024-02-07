library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister4 is
	port( clk 	  : in std_logic;
			sin 	  : in std_logic;
			dataOut : out std_logic_vector(3 downto 0)
		 );
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is
	signal s_reg : std_logic_vector(3 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			s_reg <= s_reg(2 downto 0) & sin;
		end if;
	end process;
	dataOut <= s_reg;
end Behavioral;