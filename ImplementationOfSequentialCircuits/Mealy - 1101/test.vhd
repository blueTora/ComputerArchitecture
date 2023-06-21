library ieee;
use ieee.std_logic_1164.all;
entity tb is
end entity tb;

architecture test of tb is
	component mealy is
	port(
	input : in std_logic ;
	output : out std_logic;
	clk : in std_logic
	);
	end component;
	signal i :std_logic;
	signal o : std_logic;
	signal clk : std_logic;

begin
	machine : mealy port map ( input => i, output => o, clk => clk);
	clk_process :process
  	begin
  		clk <= '0';
  		wait for 25 ns;
  		clk <= '1';
  		wait for 25 ns;
  	end process;
	i <= '1', '1' after 60 ns, '1'  after 180 ns , '0'  after 240 ns , '1'  after 300 ns;
end test;









