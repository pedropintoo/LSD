library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterMod12 is
	port(CLOCK_50		: in  std_logic;
		 SW	: in  std_logic_vector(0 downto 0);
		 HEX0	: out std_logic_vector(6 downto 0);
		 HEX1	: out std_logic_vector(6 downto 0);
		 LEDR	: out std_logic_vector(3 downto 0));
end CounterMod12;

architecture Shell of CounterMod12 is

	signal s_pulse1Hz : std_logic;
	signal s_clk4Hz : std_logic; -- 4Hz clock
	
	signal s_valCounter : std_logic_vector(3 downto 0); -- bits do valor do contador
	signal s_unidCounter, s_dezenCounter : std_logic_vector(3 downto 0);
	
	
begin
	clkDiv: entity work.ClkDividerN(RTL)
						generic map(N      => 12_500_000 )
						port map   (clkIn  => CLOCK_50,
										clkOut => s_clk4Hz);
	
	pulse_gen : entity work.PulseGeneratorN(Behavioral)
						generic map(numberSteps	=> 50_000_000,
									   out0CompVal	=> 50_000_000)
						port map   (clkIn			=> CLOCK_50,
									   pulseOut0	=> s_pulse1Hz);
								
	cnt : entity work.CounterN(Behavioral)
							generic map(MAX	=> 11)  -- 4 Bits para o s_valCounter
							port map(reset		=> '0',
										clk		=> CLOCK_50,
										enable1	=> s_pulse1Hz,
										enable2	=> '1',
										valOut	=> s_valCounter);
	
	bin_to_BCD : entity work.Bin2BCD(Behavioral)
							generic map(N      => 4 )   -- 4 Bits para o inPort
							port map   (inPort => s_valCounter,
											Unid   => s_unidCounter,
											Dezen  => s_dezenCounter);
											
	unid_7seg : entity work.Bin7SegDecoder(RTL)
							port map   (enable   => SW(0),
											binInput => s_unidCounter,
											decOut_n => HEX0);
											
	dezen_7seg : entity work.Bin7SegDecoder(RTL)
							port map   (enable   => SW(0),
											binInput => s_dezenCounter,
											decOut_n => HEX1);
	
	LEDR(0) <= s_clk4Hz and s_valCounter(0);
	LEDR(1) <= s_clk4Hz and s_valCounter(1);
	LEDR(2) <= s_clk4Hz and s_valCounter(2);
	LEDR(3) <= s_clk4Hz and s_valCounter(3);
	

end Shell;
