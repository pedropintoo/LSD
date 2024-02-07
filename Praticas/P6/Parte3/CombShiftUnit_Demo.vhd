library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit_Demo is
	port(	KEY      : in std_logic_vector(2 downto 0);
			SW       : in std_logic_vector(17 downto 0);
			LEDR     : out std_logic_vector(7 downto 0)
		 );
end CombShiftUnit_Demo;

architecture Shell of CombShiftUnit_Demo is
begin

	SeqShiftUnit   : entity work.CombShiftUnit(Behavioral)
							port map(rotate   => not KEY(0),
										dirLeft  => not KEY(1),
										shArith  => not KEY(2),
										dataIn   => SW(7 downto 0),
										shAmount => SW(17 downto 15),
										dataOut  => LEDR(7 downto 0));
										
	
end Shell;