library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCDSigned_4bits is
	port	(	inPort            : in std_logic_vector(3 downto 0);
				Unid : out std_logic_vector(3 downto 0);
				alertNeg_L        : out std_logic
			);
end Bin2BCDSigned_4bits;

architecture Behavioral of Bin2BCDSigned_4bits is
signal s_Unid : signed(3 downto 0);
begin
	process(inPort)
	begin
		s_Unid  <= abs(signed(inPort)) rem 10;
		
		Unid  <= std_logic_vector(s_Unid(3 downto 0));
		
		if signed(inPort)<0 then
			alertNeg_L <= '0';
		else
			alertNeg_L <= '1';
		end if;
		
	end process;
	
end Behavioral; 