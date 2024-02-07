library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider_Demo is
	port(	CLOCK_50 : in std_logic;
			SW 		: in std_logic_vector(7 downto 0);
			HEX0     : out std_logic_vector(6 downto 0);
			HEX1     : out std_logic_vector(6 downto 0));
end FreqDivider_Demo;

architecture Shell of FreqDivider_Demo is
	signal s_clk : std_logic;
begin
	FreqDiv     : entity work.FreqDivider(Behavioral)
							port map(clkin         => CLOCK_50,
										k             => x"02FAF080", -- dividir por 50*10^6  50 MHz --> 1 Hz ( 1 segundo de clock )
										clkOut        => s_clk
								);
								
	Counter7Seg : entity work.CounterSigned7Seg4(Shell)
							port map(clk           => s_clk,
										enable        => SW(0),
										reset         => SW(1),
										load          => SW(2),
										upDown        => SW(3),
										dataIn        => SW(7 downto 4),
										unidDisplay   => HEX0,
										signalDisplay => HEX1
										);
end Shell; 