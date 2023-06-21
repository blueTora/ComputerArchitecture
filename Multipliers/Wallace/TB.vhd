library IEEE;
use IEEE.std_logic_1164.all;
Entity TB is
End entity TB;

Architecture test of TB is
	component Wallace is
	Port(
		x, y: in std_logic_vector(3 downto 0);
		m : out std_logic_vector(7 downto 0)
	);
	end component;
	signal x1,y1 : std_logic_vector(3 downto 0);
	signal m1 : std_logic_vector(7 downto 0);
Begin
	w : Wallace port map(x1,y1,m1);
	x1 <= "1010", "1100" after 400 ns,"0011" after 600 ns;
	y1 <= "1011", "1001" after 400 ns,"1000" after 600 ns;

end test;