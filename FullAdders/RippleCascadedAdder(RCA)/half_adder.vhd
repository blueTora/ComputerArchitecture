library ieee;
use ieee.std_logic_1164.all;

entity HA is
 Port(
 in1, in2: in std_logic;
 out1, out2 : out std_logic
 );
end entity HA;

architecture structure of HA is

component xor_gate is
Port(
A, B: in std_logic;
C : out std_logic
);
End component xor_gate;

component and_gate is
Port(
A, B: in std_logic;
C : out std_logic
);
End component and_gate;

begin

 sum: xor_gate port map ( A => in1, B => in2, C=>out1 );
 carry: and_gate port map ( A => in1, B => in2, C=>out2 );
 
end structure;