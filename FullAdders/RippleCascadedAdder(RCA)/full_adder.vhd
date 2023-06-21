library ieee;
use ieee.std_logic_1164.all;

entity FA is
 Port(
 i0, i1, cin: in std_logic;
 s, cout : out std_logic
 );
end entity FA;

architecture structure of FA is

component or_gate is
Port(
A, B: in std_logic;
C : out std_logic
);
End component or_gate;

component HA is
Port(
in1, in2: in std_logic;
out1, out2 : out std_logic
);
end component HA;

signal temp0, temp1, temp2: std_logic;

begin

 HA0: HA port map ( in1 => i0, in2 => i1, out1 => temp0, out2 => temp1);
 
 HA1: HA port map ( in1 => temp0, in2 => cin, out1 => s, out2 => temp2);
 
 or_gate0: or_gate port map ( A => temp1, B => temp2, C => cout);

end structure;
