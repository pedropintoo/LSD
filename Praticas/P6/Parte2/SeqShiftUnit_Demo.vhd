library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SeqShiftUnit_Demo is
	port( 	CLOCK_50 : in std_logic;
				SW       : in std_logic_vector(13 downto 0);
				LEDG     : out std_logic_vector(7 downto 0)
		 );
end SeqShiftUnit_Demo;

architecture Shell of SeqShiftUnit_Demo is
	signal s_clk1hz : std_logic;
begin

	clkDividir50M  : entity work.ClkDividerN(RTL)
							generic map(N    => 50000000)
							port map(clkIn   => CLOCK_50,
										clkOut  => s_clk1Hz);
										
	SeqShiftUnit   : entity work.SeqShiftUnit(Behavioral)
							port map(clk     => s_clk1Hz,
										siRight => SW(0),
										siLeft  => SW(1),
										loadEn  => SW(2),
										dirLeft => SW(3),
										rotate  => SW(4),
										shArith => SW(5),
										dataIn  => SW(13 downto 6),
										dataOut => LEDG(7 downto 0));
										
	
end Shell;