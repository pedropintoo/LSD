library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ClkEnableGenerator is
	port(clkIn4Hz	: in  std_logic;
		  mode		: in  std_logic;
		  clkEnable	: out std_logic;
		  tick1Hz	: out std_logic);
end ClkEnableGenerator;

architecture RTL of ClkEnableGenerator is

	signal s_counter : unsigned(1 downto 0);

begin
	process(clkIn4Hz)
	begin
		if (rising_edge(clkIn4Hz)) then
			s_counter <= s_counter + 1;
		end if;
	end process;
	
	clkEnable <= '1' when (mode ='1') else  -- always enable in 'set mode'
					 '1' when (mode ='0') and (s_counter = "00") else -- high in 4 rising_edge  of clkIn4Hz
					 '0';

	tick1Hz	<= not s_counter(1);
end RTL;
