library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register_Demo is
	port( clk, wrEn : in std_logic;
			dataIn    : in std_logic_vector(7 downto 0);
			dataOut	 : out std_logic_vector(7 downto 0)
	);
end Register_Demo;

architecture Behavioral of Register_Demo is
begin
	process(clk)
		begin
		if (rising_edge(clk) and wrEn = '1') then
			dataOut <= dataIn;
		end if;
	end process;
end Behavioral; 
