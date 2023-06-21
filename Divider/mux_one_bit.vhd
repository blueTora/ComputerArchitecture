library ieee;
use ieee.std_logic_1164.all;

entity mux_one_bit is
port(
	a, b, s: in std_logic;
	z: out std_logic
);
end entity mux_one_bit;

architecture structure of mux_one_bit is

	Signal snot : std_logic;

begin

	snot <= not(s);
	z <= (a and s) or (b and snot);

end structure;

