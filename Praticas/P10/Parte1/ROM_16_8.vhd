library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_16_8 is
	port( address : in std_logic_vector(3 downto 0);
			dataOut : out std_logic_vector(7 downto 0));
end ROM_16_8;

architecture Behavioral of ROM_16_8 is
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TROM is array (0 to 15) of TDataWord;
	constant c_memory: TROM := (
		x"00",
		x"01",
		x"02",
		x"04",
		x"08",
		x"10",
		x"20",
		x"40",
		x"80",
		x"FF",
		x"00",
		x"02",
		x"08",
		x"20",
		x"80",
		x"FF"
	);
begin
	dataOut <= c_memory(to_integer(unsigned(address)));
end Behavioral;