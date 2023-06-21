library ieee;
use ieee.std_logic_1164.all;

entity mux is
port(	
	a4, b4: in std_logic_vector(4 downto 0);
	s4: in std_logic;
	z4: out std_logic_vector(4 downto 0)
);
end entity mux;

architecture structure of mux is

component mux_one_bit is
	port(
		a, b, s: in std_logic;
		z: out std_logic
	);
end component;
	
begin

	mux1 : mux_one_bit port map ( a => a4(0), b => b4(0) , s => s4, z => z4(0) );
	mux2 : mux_one_bit port map ( a => a4(1), b => b4(1) , s => s4, z => z4(1) );
	mux3 : mux_one_bit port map ( a => a4(2), b => b4(2) , s => s4, z => z4(2) );
	mux4 : mux_one_bit port map ( a => a4(3), b => b4(3) , s => s4, z => z4(3) );
	mux5 : mux_one_bit port map ( a => a4(4), b => b4(4) , s => s4, z => z4(4) );

end structure;

