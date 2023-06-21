library ieee;
use ieee.std_logic_1164.all;

entity mux_four_bit is
port(
	a4,b4,c4,d4: in std_logic_vector(3 downto 0);
	s04,s14: in std_logic;
	z4: out std_logic_vector(3 downto 0)
);
end entity mux_four_bit;

architecture behav of mux_four_bit is
	component mux_one_bit is
	port(
		a,b,c,d,s1,s0: in std_logic;
		z: out std_logic
	);
	end component;
begin

	mux1:mux_one_bit port map ( a => a4(0), b => b4(0), c => c4(0), d => d4(0), s1 => s14, s0 => s04, z => z4(0) );
	mux2:mux_one_bit port map ( a => a4(1), b => b4(1), c => c4(1), d => d4(1), s1 => s14, s0 => s04, z => z4(1) );
	mux3:mux_one_bit port map ( a => a4(2), b => b4(2), c => c4(2), d => d4(2), s1 => s14, s0 => s04, z => z4(2) );
	mux4:mux_one_bit port map ( a => a4(3), b => b4(3), c => c4(3), d => d4(3), s1 => s14, s0 => s04, z => z4(3) );

end behav;

