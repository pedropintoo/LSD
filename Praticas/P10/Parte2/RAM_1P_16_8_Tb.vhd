library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_1P_16_8_Tb is
end RAM_1P_16_8_Tb;

architecture Stimulus of RAM_1P_16_8_Tb is
	signal s_clk 		   : std_logic;
	signal s_writeEnable : std_logic;
	signal s_writeData   : std_logic_vector(7 downto 0);
	signal s_address     : std_logic_vector(3 downto 0);
	signal s_readData 	: std_logic_vector(7 downto 0);
begin
	ram_ut : entity work.RAM_1P_16_8(Behavioral)
					port map(clk 			=> s_clk,
								writeEnable => s_writeEnable,
								writeData 	=> s_writeData,
								address     => s_address,
								readData 	=> s_readData);
	
	clk_process :  process
						begin
							s_clk <= '0'; wait for 10 ns;
							s_clk <= '1'; wait for 10 ns;
						end process;
					 
	stim_process : process
						begin
							----- WRITE -----
							wait for 5 ns;
							s_writeEnable <= '1';
							
							s_writeData <= X"55";
							s_address <= "0000";
							wait for 20 ns;
							s_address <= "0001";
							wait for 20 ns;
							
							s_writeData <= X"AA";
							s_address <= "0100";
							wait for 20 ns;
							s_address <= "0111";
							wait for 20 ns;
							
							----- READ ------
							s_writeEnable <= '0';
							s_address <= "0000";
							wait for 20 ns;
							s_address <= "0001";
							wait for 20 ns;
							s_address <= "0011";
							wait for 20 ns;
							s_address <= "0100";
							wait for 20 ns;
							s_address <= "0111";
							wait for 20 ns;
							
						end process;

end Stimulus;