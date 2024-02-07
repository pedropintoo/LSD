library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM_Tb is
end SeqDetFSM_Tb;

architecture Stimulus of SeqDetFSM_Tb is
	signal s_clk : std_logic;

	-- Sinal para ligar à entrada de Controlo
	signal s_reset : std_logic;
	
	-- Sinal para ligar à entrada
	signal s_In : std_logic;

	-- Sinal para ligar à saida
	signal s_Out : std_logic;

begin
	
	-- Instanciação da Unit Under Test (UUT)
	uut: entity work.SeqDetFSM(MealyArch)
				port map(reset	=> s_reset,
							clk	=> s_clk,
							xIn	=> s_In,
							zOut	=> s_Out);
	
	
	-- Process clock
	clock_proc : process
					 begin
						s_clk <= '0';
						wait for 50 ns;
						s_clk <= '1';
						wait for 50 ns;
					 end process;
	
	--Process stim
	-- Xin: 0010001001000110100100100010011001000100100100100 
	stim_proc : process
					begin
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '1';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
						s_In <= '0';
						wait for 100 ns;
						
					end process;
end Stimulus;