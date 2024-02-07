library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterSigned7Seg4 is
	port(	clk, enable, upDown, reset, load : in std_logic;
			dataIn                           : in std_logic_vector(3 downto 0);
			unidDisplay                      : out std_logic_vector(6 downto 0);
			signalDisplay                    : out std_logic_vector(6 downto 0) := (others => '1')
			);
end CounterSigned7Seg4;

architecture Shell of CounterSigned7Seg4 is
	signal s_counterToBCD, s_BCDTo7Seg : std_logic_vector(3 downto 0);
begin
	Counter : entity work.CounterLoadUpDown4(Behavioral)
					port map(clk        => clk,
								enable     => enable,
								upDown     => upDown,
								reset      => reset,
								load       => load,
								dataIn     => dataIn,
								count      => s_counterToBCD);
								
	BCD     : entity work.Bin2BCDSigned_4bits(Behavioral)
					port map(inPort     => s_counterToBCD,
								unid       => s_BCDTo7Seg,
								alertNeg_L => signalDisplay(6));
								
	Seg7    : entity work.Bin7SegDecoderEn(Behavioral)
					port map(enable     => '1',
								binInput   => s_BCDTo7Seg,
								decOut_n   => unidDisplay);
								
end Shell; 