library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port	(	inPort            : in std_logic_vector(15 downto 0);
				Unid, Dezen, Cent : out std_logic_vector(3 downto 0)
			);
end Bin2BCD;

architecture Behavioral of Bin2BCD is
	signal s_Unid, s_Dezen, s_Cent : unsigned(15 downto 0);
begin
	process(inPort)
	begin
		s_Unid  <= unsigned(inPort) rem 10;
		s_Dezen <= (unsigned(inPort) / 10) rem 10;
		s_Cent  <= (unsigned(inPort) / 100) rem 10;
		
		Unid  <= std_logic_vector(s_Unid(3 downto 0));
		Dezen <= std_logic_vector(s_Dezen(3 downto 0));
		Cent <= std_logic_vector(s_Cent(3 downto 0));
		
	end process;
	
end Behavioral; 