library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RAM_2PSync_16_8 is
	port( writeClk 	 : in std_logic;
			readClk		 : in std_logic;
			writeEnable  : in std_logic;
			writeData 	 : in std_logic_vector(7 downto 0);
			writeAddress : in std_logic_vector(3 downto 0);
			readAddress  : in std_logic_vector(3 downto 0);
			readData 	 : out std_logic_vector(7 downto 0));
end RAM_2PSync_16_8;

architecture Behavioral of RAM_2PSync_16_8 is
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (0 to 15) of TDataWord;
	signal s_memory : TROM;
begin
	write_proc : process(writeClk)
					 begin
						if(rising_edge(writeClk) and writeEnable = '1') then
							s_memory(to_integer(unsigned(writeAddress))) <= writeData;
						end if;
					 end process;
					 
	read_proc : process(readClk)
					begin
						if rising_edge(readClk) then
							readData <= s_memory(to_integer(unsigned(readAddress)));
						end if;
					end process;
					
end Behavioral;