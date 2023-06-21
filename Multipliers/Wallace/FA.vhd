library IEEE;
use IEEE.std_logic_1164.all;
Entity FA is
	Port(
		a, b, cin: in std_logic;
		s, cout : out std_logic
	);
End entity FA;

Architecture gate of FA is
	signal t1, t2, t3 : std_logic;
Begin
	s <= a xor b xor cin;
	t1 <= a and b;
	t2 <= a and cin;
	t3 <= b and cin;
	cout <= t1 or t2 or t3;

End gate;

