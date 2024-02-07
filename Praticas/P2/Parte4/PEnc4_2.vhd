library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc4_2 is
	port( decodedln  : in std_logic_vector(3 downto 0);
			encodedOut : out std_logic_vector(1 downto 0);
			validOut   : out std_logic
		 );
end entity PEnc4_2;

architecture Behavioral of PEnc4_2 is
begin
	process(decodedln)
	begin
		if (decodedln="0000") then 
			validOut <= '0';
		else
			validOut <= '1';
			if (decodedln(3)='1') then 
				encodedOut <= "11"; 
			elsif (decodedln(2)='1') then
				encodedOut <= "10"; 
			elsif (decodedln(1)='1') then
				encodedOut <= "01"; 
			else
				encodedOut <= "00"; 
			end if;
		
		end if;
	end process;
end architecture Behavioral; 
			