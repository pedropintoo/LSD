library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksMachineV2 is
	port( CLOCK_50 : in std_logic;
			KEY  		: in std_logic_vector(0 downto 0);
			SW   		: in std_logic_vector(1 downto 0);
			LEDG 		: out std_logic_vector(8 downto 0);
			HEX5     : out std_logic_vector(7 downto 0);
			HEX4     : out std_logic_vector(6 downto 0);
			HEX7     : out std_logic_vector(6 downto 0));
end DrinksMachineV2;

architecture Shell of DrinksMachineV2 is

	signal s_currentState, s_unitsCnt, s_tensCnt : std_logic_vector(3 downto 0);
	signal s_V, s_C, s_abrir : std_logic;

begin
	

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
	
	fsm : entity work.DrinksFSM(BEHAVIOR)
				port map(reset			 => not KEY(0),
							clock			 => CLOCK_50,
							V	   		 => s_V,
							C	   		 => s_C,
							abrir			 => s_abrir,
							currentState => s_currentState);
							
															  
								  	
	dec7segState : entity work.Bin7SegDecoder(Behavioral)
					port map( enable   => "1",
								 binInput => s_currentState,
								 decOut_n => HEX7);
							
	
	hold_abrir : entity work.HoldAbrir(Behavioral)
					generic map( delayCounter => 50000000 ) -- 1 segundo de "hold"
					port map ( clk => CLOCK_50,
								  d 	=> s_abrir,
								  q 	=> LEDG(0));
 
								 
	moneyCounter : entity work.MoneyCounter(Behavioral)
					port map( clearFallingEdge => s_abrir,
								 clk 					=> CLOCK_50,
								 C 					=> s_C,
								 V 					=> s_V,
								 unitsCnt 			=> s_unitsCnt,
								 tensCnt 			=> s_tensCnt);

								  	
	dec7segUnits : entity work.Bin7SegDecoder(Behavioral)
					port map( enable   => "1",
								 binInput => s_unitsCnt,
								 decOut_n => HEX5(6 downto 0));
	
	HEX5(7) <= '1'; -- Vírgula
							
	dec7segTens : entity work.Bin7SegDecoder(Behavioral)
					port map( enable   => "1",
								 binInput => s_tensCnt,
								 decOut_n => HEX4);
							
end Shell;
