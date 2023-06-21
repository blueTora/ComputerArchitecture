library IEEE;
use IEEE.std_logic_1164.all;

Entity TB is
End entity TB;

Architecture test of TB is

	component Booth is
	Port ( 
		A : in STD_LOGIC_VECTOR (3 downto 0);
		B : in STD_LOGIC_VECTOR (3 downto 0);
		output : out STD_LOGIC_VECTOR (7 downto 0)
	);
	end component;
	
	signal x1,y1 : std_logic_vector(3 downto 0);
	signal m1 : std_logic_vector(7 downto 0);
	
Begin

	w : Booth port map(x1, y1, m1);
	x1 <= "1010", "1100" after 100 ns,"0011" after 200 ns, "0011" after 300 ns, "0011" after 400 ns;
	y1 <= "1011", "1001" after 100 ns,"1000" after 200 ns, "0001" after 300 ns, "1111" after 400 ns;

end test;