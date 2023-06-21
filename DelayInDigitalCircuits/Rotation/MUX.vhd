library IEEE;
use IEEE.std_logic_1164.all;
Entity MUX is
	Port(
	s0, s1, i0, i1, i2, i3: in std_logic;
	z : out std_logic
	);
End entity MUX;
Architecture gatelvl of MUX is

	signal s0not, s1not, t0, t1, t2, t3: std_logic;	

Begin
	s0not <= not s0;
	s1not <= not s1;
	t0 <= s0not and s1not and i0;
	t1 <= s0not and s1 and i1;
	t2 <= s0 and s1not and i2;
	t3 <= s0 and s1 and i3;
	z <= t0 or t1 or t2 or t3;

End gatelvl;





