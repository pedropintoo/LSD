library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity CounterDemo is
	port(	CLOCK_50	: in  std_logic;
			SW			: in std_logic_vector(1 downto 0);
			KEY  		: in std_logic_vector(1 downto 0);
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0);
			LEDR		: out std_logic_vector(3 downto 0);
			LEDG 		: out std_logic_vector(0 downto 0));
end CounterDemo;

architecture Structural of CounterDemo is

	signal s_pulse1Hz     : std_logic;
	
	signal s_clk4Hz       : std_logic;
	
	signal s_valCounter   : std_logic_vector(3 downto 0); -- bits do valor do contador
	
	signal s_unidCounter  : std_logic_vector(3 downto 0);
	signal s_dezenCounter : std_logic_vector(3 downto 0);
	
	signal s_globalReset  : std_logic;
	signal s_startStop    : std_logic;
	
	signal s_enableStartStop : std_logic := '1';  -- Utilizado no enable2 do contador
	
begin

	-- Frequencias: ( F = 1/T )
	--
	-- 50MHZ / 12_500_000  = 4 Hz   --> 0.25s
	-- 50MHZ / 25_000_000  = 2 Hz   --> 0.5s
	-- 50MHZ / 50_000_000  = 1 Hz   --> 1s 
	-- 50MHZ / 100_000_000 = 0.5Hz  --> 2s
	-- 50MHZ / 200_000_000 = 0.25Hz --> 4s
	
	pulse_gen : entity work.PulseGeneratorN(Behavioral)
						generic map(numberSteps		=> 50_000_000,
									   out0CompVal		=> 50_000_000,
										out1CompVal 	=> open)
						port map(   clkIn				=> CLOCK_50,
									   pulseOut0		=> s_pulse1Hz,
										pulseOut1   	=> open);
										
										
	clk4Hz : entity work.ClkDividerN(RTL)
						generic map(N           	=> 12_500_000)
						port map(   clkIn       	=> CLOCK_50,
										clkOut      	=> s_clk4Hz);

								
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
		  
	-- FlipFlopControlo ------------------------------------------------------

	FF_Control : entity work.FlipFlopControlo(BehavRSSync)  -- Mantem estado atual no caso de não haver reset nem set
						port map(   clk         	=> CLOCK_50,
										reset       	=> s_globalReset,
										set         	=> s_startStop,
										q           	=> s_enableStartStop);

	--------------------------------------------------------------------------
		  
		  
	counterUp : entity work.CounterN(BehavioralUpDownCounter)
						generic map(MAX	      	=> 15)  -- 0-15 - Contador de módulo 16
						port map(   upDown      	=> SW(1), -- upDown = '1' --> contagem crescente
										reset				=> s_globalReset,
										clk				=> CLOCK_50,
										enable1			=> s_pulse1Hz,
										enable2			=> s_enableStartStop,
										valOut			=> s_valCounter,
										termCnt  		=> LEDG(0));
							
	
	bin_to_BCD : entity work.Bin2BCD(Behavioral)
						generic map(N      			=> 4 )   -- 4 Bits para o inPort
						port map(   inPort 			=> s_valCounter,
										Unid   			=> s_unidCounter,
										Dezen   			=> s_dezenCounter,
										Cent				=> open);
											
	unid_7seg : entity work.Bin7SegDecoder(RTL)
						port map(   enable   		=> SW(0),
										binInput 		=> s_unidCounter,
										decOut_n 		=> HEX0);
											
	dezen_7seg : entity work.Bin7SegDecoder(RTL)
						port map(	enable   		=> s_dezenCounter(0) and SW(0),  -- Ativo quando tiver o valor (neste caso é 1) e se o SW(0) estiver ativo
										binInput 		=> s_dezenCounter,
										decOut_n 		=> HEX1);
	
	
	-- Valor nos leds a piscar !
	
	LEDR(0) <= s_valCounter(0) and s_clk4Hz;
	
	LEDR(1) <= s_valCounter(1) and s_clk4Hz;
	
	LEDR(2) <= s_valCounter(2) and s_clk4Hz;
	
	LEDR(3) <= s_valCounter(3) and s_clk4Hz;

end Structural;
