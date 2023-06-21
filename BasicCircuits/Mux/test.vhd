
library ieee;
use ieee.std_logic_1164.all;

entity test is
end entity test;

architecture test of test is
	component mux_four_bit is
	port(
		a4,b4,c4,d4: in std_logic_vector(3 downto 0);
		s04,s14: in std_logic;
		z4: out std_logic_vector(3 downto 0)
	);
	end component;

	signal a,b,c,d : std_logic_vector(3 downto 0);
	signal z : std_logic_vector(3 downto 0);
	signal s1,s0 : std_logic;
begin
	mux:mux_four_bit port map ( a4 => a, b4 => b, c4 => c, d4 => d, s04 => s0, s14 => s1, z4 => z);
	a <="0001";
	b <="0010";
	c <="0011";
	d <="0100";
	s1 <= '1', '0' after 200 ns;
	s0 <= '0', '1' after 100 ns;
end test;





