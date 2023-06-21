library ieee;
use ieee.std_logic_1164.all;

entity RCA_test is
end entity RCA_test;

architecture test of RCA_test is

component ripple_adder is
Port(
	A, B: in std_logic_vector(3 downto 0);
	S: out std_logic_vector(3 downto 0);
	Cout: out std_logic
);
end component;

signal i0, i1, o :std_logic_vector(3 downto 0);
signal c : std_logic;

begin

RCA: ripple_adder port map ( A => i0, B => i1, S => o, Cout => c);
i0 <= "0101", "0001" after 100 ns, "0101" after 200 ns, "0100" after 300 ns;
i1 <= "0010", "0100" after 100 ns, "0011" after 200 ns, "0111" after 300 ns;

end test;