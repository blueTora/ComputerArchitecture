library ieee;
use ieee.std_logic_1164.all;
entity test is
end entity test;

architecture test of test is
component full_adder is
Port(
 i0, i1, cin: in std_logic;
 s, cout : out std_logic
 );
End component full_adder;

signal a,b,cv,ck,jam: std_logic;
begin
 	adder : full_adder port map ( i0 => a, i1 => b, cin => cv, s =>jam , cout =>ck);
	a <= '0', '1' after 100 ns;
 	b <= '1', '1' after 100 ns;
	cv <= '1', '1' after 100 ns;
end test;
