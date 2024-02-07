library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM_Tb is
end DrinksFSM_Tb;

architecture Stimulus of DrinksFSM_Tb is

	signal s_clk : std_logic;

	-- Sinal para ligar à entrada de Controlo
	signal s_reset : std_logic;
	
	-- Sinais para ligar às entradas
	signal s_V : std_logic;
	signal s_C : std_logic;

	-- Sinal para ligar à saida
	signal s_abrir : std_logic;

begin
	
	-- Instanciação da Unit Under Test (UUT)
	uut: entity work.DrinksFSM(Behavioral)
				port map(reset	=> s_reset,
							clk	=> s_clk,
							V	   => s_V,
							C	   => s_C,
							abrir	=> s_abrir);
	
	-- Process clock
	clock_proc : process
					 begin
						s_clk <= '0';
						wait for 50 ns;
						s_clk <= '1';
						wait for 50 ns;
					 end process;
	
	--Process stim
	stim_proc : process
					begin
						s_reset <= '1';
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_reset <= '0';
						wait for 25 ns;
						
						--  1 case
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '1';
						s_C <= '0';
						wait for 300 ns;
						
						--  2 case
						
						s_V <= '0';
						s_C <= '1';
						wait for 100 ns;
						
						s_V <= '0';
						s_C <= '1';
						wait for 300 ns;
						
						--  3 case
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '0';
						s_C <= '1';
						wait for 100 ns;
						
						s_V <= '1';
						s_C <= '0';
						wait for 300 ns;
						
						--  4 case
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '1';
						s_C <= '0';
						wait for 100 ns;
						
						s_V <= '0';
						s_C <= '1';
						wait for 300 ns;
						
						-- (...)
						
					end process;
							


end Stimulus;
