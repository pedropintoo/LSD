-- NAO FUNCIONA !!!

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TimerTest_Tb is
end TimerTest_Tb;

architecture Stimulus of TimerTest_Tb is

signal s_clk : std_logic;

-- Sinais para ligar às entradas de Controlo
signal s_enable : std_logic;
signal s_reset : std_logic;
signal s_start : std_logic;

-- Sinais para ligar à saida do TimerN
signal s_timerOut : std_logic;

begin
	timer: entity work.TimerTest(Behavioral)
				port map(SW(0)  => s_reset,
							SW(1) => s_enable,
							SW(2) => s_start,
							CLOCK_50 => s_clk);
	--Process stim
	stim_proc : process
	begin
		s_reset <= '0';
		s_enable <= '0';
		s_start <= '0';
		wait for 100 ns;
		s_reset <= '0';
		s_enable <= '1';
		s_start <= '0';
		wait for 100 ns;
		s_reset <= '0';
		s_enable <= '1';
		s_start <= '1';
		wait;
	end process;
end Stimulus;