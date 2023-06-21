library IEEE;
use IEEE.std_logic_1164.all;

Entity TB is
End entity TB;

Architecture test of TB is

component Divider is
Port(
	Divide, Divisor: in std_logic_vector(3 downto 0);
	remain, quotient : out std_logic_vector(3 downto 0)
);
end component;
	
signal r, q, d1, d0 : std_logic_vector(3 downto 0);
	
Begin

	test_Divider : Divider port map( d1 , d0 , r , q );
	d1 <= "1010", "1010" after 400 ns,"0110" after 600 ns;
	d0 <= "0001", "0010" after 400 ns,"0011" after 600 ns;

end test;