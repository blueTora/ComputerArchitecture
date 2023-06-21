library ieee;
use ieee.std_logic_1164.all;

entity DFF_test is
end entity DFF_test;

architecture test of DFF_test is

component DFF is
port(
      Q : out std_logic;    
      Clk : in std_logic;  
	  reset: in std_logic;  
      D : in  std_logic    
   );
end component;

signal o, clock, i, r : std_logic;

begin

DFF_t: DFF port map ( Q => o, Clk => clock, reset => r, D => i);
clock <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns, '0' after 400 ns, '1' after 500 ns, '0' after 600 ns, '1' after 700 ns, '0' after 800 ns, '1' after 900 ns, '0' after 1000 ns;
i <= '1', '1' after 100 ns, '1' after 200 ns, '1' after 300 ns, '1' after 400 ns, '0' after 500 ns, '0' after 600 ns, '1' after 700 ns, '1' after 800 ns, '0' after 900 ns, '1' after 1000 ns;
r <= '0', '1' after 100 ns, '1' after 200 ns, '1' after 300 ns, '1' after 400 ns, '1' after 500 ns, '1' after 600 ns, '1' after 700 ns, '0' after 800 ns, '0' after 900 ns, '0' after 1000 ns;

end test;