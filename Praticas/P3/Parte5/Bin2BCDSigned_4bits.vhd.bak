library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCDSigned_8bits is
	port	(	inPort            : in std_logic_vector(7 downto 0);
				Unid, Dezen, Cent : out std_logic_vector(3 downto 0);
				alertNeg_L        : out std_logic
			);
end Bin2BCDSigned_8bits;

architecture Behavioral of Bin2BCDSigned_8bits is
signal s_Unid, s_Dezen, s_Cent : signed(7 downto 0);
begin
	process(inPort)
	begin
		s_Unid  <= abs(signed(inPort)) rem 10;
		s_Dezen <= (abs(signed(inPort)) / 10) rem 10;
		s_Cent  <= (abs(signed(inPort)) / 100) rem 10;			
		
		Unid  <= std_logic_vector(s_Unid(3 downto 0));
		Dezen <= std_logic_vector(s_Dezen(3 downto 0));
		Cent <= std_logic_vector(s_Cent(3 downto 0));
		
		if signed(inPort)<0 then
			alertNeg_L <= '0';
		else
			alertNeg_L <= '1';
		end if;
		
	end process;
	
end Behavioral; 