library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksMachine is
	port( CLOCK_50 : in std_logic;
			KEY  		: in std_logic_vector(0 downto 0);
			SW   		: in std_logic_vector(1 downto 0);
			LEDG 		: out std_logic_vector(8 downto 0);
			LEDR 		: out std_logic_vector(2 downto 0);
			HEX0     : out std_logic_vector(6 downto 0));
end DrinksMachine;

architecture Shell of DrinksMachine is

	signal s_clk : std_logic;
	signal s_currentState : std_logic_vector(3 downto 0);
	signal s_V, s_C, s_abrir : std_logic;

begin
	
	clkDiv : entity work.ClkDividerN(Behavioral)
				generic map (divFactor => 50000000)
				port map (	 clkIn	  => CLOCK_50,
								 clkOut    => s_clk);
	
	debounce0 : entity work.DebounceUnit(Behavioral)
				generic map(kHzClkFreq		=> 50000,
								mSecMinInWidth	=> 100,
								inPolarity		=> '0',
								outPolarity		=> '1')
				port map(	refClk			=> CLOCK_50,
								dirtyIn			=> SW(0),
								pulsedOut	   => s_V);
								
	debounce1 : entity work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		=> 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port map(	refClk			=> CLOCK_50,
							dirtyIn			=> SW(1),
							pulsedOut	   => s_C);
	
	fsm : entity work.DrinksFSM(Behavioral)
				port map(reset			 => not KEY(0),
							clk			 => CLOCK_50,
							V	   		 => s_V,
							C	   		 => s_C,
							abrir			 => s_abrir,
							currentState => s_currentState);
	
	dec7seg : entity work.Bin7SegDecoder(Behavioral)
					port map( enable   => "1",
								 binInput => s_currentState,
								 decOut_n => HEX0);
							
	
	toogle_abrir : entity work.HoldAbrir(Behavioral)
					generic map( delayCounter => 50000000 ) -- 1 segundo de "hold"
					port map ( clk => CLOCK_50,
								  d => s_abrir,
								  q => LEDG(0));


end Shell;
