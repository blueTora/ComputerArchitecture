library ieee;
use ieee.std_logic_1164.all;

entity ripple_adder is
 Port(
 A, B: in std_logic_vector(3 downto 0);
 S: out std_logic_vector(3 downto 0);
 Cout: out std_logic
 );
end entity ripple_adder;

architecture structure of ripple_adder is

component FA is
Port(
 i0, i1, cin: in std_logic;
 s, cout : out std_logic
 );
end component FA;

signal carry : std_logic_vector(2 downto 0);

begin

FA0: FA port map ( i0 => A(0), i1 => B(0), cin => '0', s => S(0), cout => carry(0));
FA1: FA port map ( i0 => A(1), i1 => B(1), cin => carry(0), s => S(1), cout => carry(1));
FA2: FA port map ( i0 => A(2), i1 => B(2), cin => carry(1), s => S(2), cout => carry(2));
FA3: FA port map ( i0 => A(3), i1 => B(3), cin => carry(2), s => S(3), cout => Cout);

end structure;
