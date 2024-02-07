library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FilterSignal_RAM_256x8 is
	port( clk 			: in std_logic;
			writeEnable : in std_logic;
			writeData 	: in std_logic_vector(7 downto 0);
			address     : in std_logic_vector(7 downto 0);
			readData 	: out std_logic_vector(7 downto 0));
end FilterSignal_RAM_256x8;

architecture Behavioral of FilterSignal_RAM_256x8 is
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (0 to 255) of TDataWord;
	signal s_memory : TROM;
begin
	write_proc : process(clk)
					 begin
						if(rising_edge(clk)) then
							if(writeEnable = '1') then
								s_memory(to_integer(unsigned(address))) <= writeData;
							end if;
						end if;
					 end process;
					 
	readData <= s_memory(to_integer(unsigned(address)));
end Behavioral;