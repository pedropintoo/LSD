library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TimerDemo is
	port(	CLOCK_50	: in  std_logic;
			KEY		: in std_logic_vector(1 downto 0);
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0);
			LEDR		: out std_logic_vector(0 downto 0);
			LEDG 		: out std_logic_vector(0 downto 0));
end TimerDemo;

architecture Structural of TimerDemo is

	signal s_pulse1Hz     : std_logic;
		
	signal s_valCounter   : std_logic_vector(5 downto 0); -- 6 bits do valor do timer
	
	signal s_unidCounter  : std_logic_vector(3 downto 0);
	signal s_dezenCounter : std_logic_vector(3 downto 0);
	
	signal s_globalReset  : std_logic;
	signal s_startStop    : std_logic;
		
	
begin
	
	pulse_gen : entity work.PulseGeneratorN(Behavioral)
						generic map(numberSteps		=> 50_000_000,
									   out0CompVal		=> 50_000_000,
										out1CompVal 	=> open)
						port map(   clkIn				=> CLOCK_50,
									   pulseOut0		=> s_pulse1Hz,
										pulseOut1   	=> open);
										
								
	ResetDebounce : entity work.DebounceUnit(Behavioral)
						generic map(kHzClkFreq  	=> 50_000,
										mSecMinInWidth => 100,
										inPolarity  	=> '0',
										outPolarity		=> '1')
						port map(   refClk      	=> CLOCK_50,
										dirtyIn     	=> KEY(0),
										pulsedOut   	=> s_globalReset);
										
		
	StartStopDebounce : entity work.DebounceUnit(Behavioral)
						generic map(kHzClkFreq  	=> 50_000,
										mSecMinInWidth => 100,
										inPolarity  	=> '0',
										outPolarity		=> '1')
						port map(   refClk      	=> CLOCK_50,
										dirtyIn     	=> KEY(1),
										pulsedOut   	=> s_startStop);
		  

	timer : entity work.Timer(Behavioral)
						generic map(MAX	      	=> 59)  -- 0-59
						port map(   enable         => s_pulse1Hz,
										reset      	   => s_globalReset, 
										startStop		=> s_startStop,
										clk				=> CLOCK_50,
										valOut			=> s_valCounter,
										mode      		=> LEDR(0),
										startReady		=> LEDG(0));

										
	
	bin_to_BCD : entity work.Bin2BCD(Behavioral)
						generic map(N      			=> 6 )   -- 6 Bits para o inPort
						port map(   inPort 			=> s_valCounter,
										Unid   			=> s_unidCounter,
										Dezen   			=> s_dezenCounter,
										Cent				=> open);
											
	unid_7seg : entity work.Bin7SegDecoder(RTL)
						port map(   enable   		=> '1',
										binInput 		=> s_unidCounter,
										decOut_n 		=> HEX0);
											
	dezen_7seg : entity work.Bin7SegDecoder(RTL)
						port map(	enable   		=> '1',
										binInput 		=> s_dezenCounter,
										decOut_n 		=> HEX1);
	

end Structural;
