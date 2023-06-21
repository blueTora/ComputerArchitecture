library ieee;
use ieee.std_logic_1164.all;

entity test is
end entity test;

architecture structure of test is

component full_adder is
	Port(
		i0, i1, cin: in std_logic;
		s, cout : out std_logic
	);
	end component full_adder;

	signal a, b, c, sans, cans: std_logic;
begin
	
	add : full_adder port map (i0 => a , i1 => b , cin => c , s => sans , cout => cans);
	a <= '1';
	b <= '0';
	c <= '0';
	

end structure;




