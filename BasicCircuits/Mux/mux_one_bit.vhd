library ieee;
use ieee.std_logic_1164.all;
entity mux_one_bit is
port(
	a,b,c,d,s1,s0: in std_logic;
	z: out std_logic
);
end entity mux_one_bit;

architecture behav of mux_one_bit is
	Signal s0not,s1not : std_logic;
begin

	s0not <= not(s0);
	s1not <= not(s1);
	z <= (a and s0not and s1not) or (b and s0 and s1not) or (c and s0not and s1) or (d and s0 and s1); 

end behav;

