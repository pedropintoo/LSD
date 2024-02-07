library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister_Demo is
	port( 	CLOCK_50 : in std_logic;
				SW       : in std_logic_vector(11 downto 0);
				LEDR     : out std_logic_vector(7 downto 0)
		 );
end ShiftRegister_Demo;

architecture Shell of ShiftRegister_Demo is
	signal s_clk1hz : std_logic;
begin

	clkDividir50M  : entity work.ClkDividerN(RTL)
							generic map(N    => 50000000)
							port map(clkIn   => CLOCK_50,
										clkOut  => s_clk1Hz);
										
	shiftRegister8 : entity work.ShiftRegisterLoadN(Behavioral)
							generic map(size => 8)
							port map(clk     => s_clk1Hz,
										sin     => SW(0),
										reset   => SW(1),
										enable  => SW(2),
										load    => SW(3),
										dataIn  => SW(11 downto 4),
										dataOut => LEDR(7 downto 0));
										
	
end Shell;