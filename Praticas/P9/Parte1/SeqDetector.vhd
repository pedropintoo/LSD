library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
port(	CLOCK_50 : in std_logic;
		SW 		: in std_logic_vector(0 downto 0);
		LEDR 		: out std_logic_vector(0 downto 0);
		LEDG 		: out std_logic_vector(7 downto 0));
end SeqDetector;

architecture Shell of SeqDetector is
	signal s_clk : std_logic;
begin

	clk_div : entity work.ClkDividerN(RTL)
					generic map(N 		 => 100_000_000)
					port map(	clkIn	 => CLOCK_50,
									clkOut => s_clk);

	
	fsm : entity work.SeqDetFSM(MealyArch)
					port map(	reset  => open,
									clk	 => s_clk,
									xIn	 => SW(0),
									zOut	 => LEDR(0));
	
	shift   : entity work.ShiftRegisterN(Behavioral)
						generic map(size    => 8)
							port map(clk     => s_clk,
										sin     => SW(0),
										dataOut => LEDG(7 downto 0));
										

		 
end Shell;