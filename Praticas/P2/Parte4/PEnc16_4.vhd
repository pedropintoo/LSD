library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity PEnc16_4 is
	port( decodedln  : in std_logic_vector(15 downto 0);
			encodedOut : out std_logic_vector(3 downto 0);
			validOut   : out std_logic
		 );
end entity PEnc16_4;

architecture Behavioral of PEnc16_4 is
begin
	process(decodedln)
	begin
		if (decodedln=x"0000") then 
			validOut <= '0';
		else
			validOut <= '1';
			if (decodedln(15)='1') then 
				encodedOut <= "1111"; 
			elsif (decodedln(14)='1') then 
				encodedOut <= "1110"; 
			elsif (decodedln(13)='1') then 
				encodedOut <= "1101"; 
			elsif (decodedln(12)='1') then 
				encodedOut <= "1100"; 
			elsif (decodedln(11)='1') then 
				encodedOut <= "1011"; 
			elsif (decodedln(10)='1') then 
				encodedOut <= "1010"; 
			elsif (decodedln(9)='1') then 
				encodedOut <= "1001"; 
			elsif (decodedln(8)='1') then 
				encodedOut <= "1000"; 
			elsif (decodedln(7)='1') then 
				encodedOut <= "0111"; 
			elsif (decodedln(6)='1') then 
				encodedOut <= "0110"; 
			elsif (decodedln(5)='1') then 
				encodedOut <= "0101"; 
			elsif (decodedln(4)='1') then 
				encodedOut <= "0100"; 
			elsif (decodedln(3)='1') then 
				encodedOut <= "0011"; 
			elsif (decodedln(2)='1') then
				encodedOut <= "0010"; 
			elsif (decodedln(1)='1') then
				encodedOut <= "0001"; 
			else
				encodedOut <= "0000"; 
			end if;
		
		end if;
	end process;
end architecture Behavioral; 
			