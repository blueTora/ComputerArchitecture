library ieee;
use ieee.std_logic_1164.all;

entity moore_test is
end entity moore_test;

architecture test of moore_test is

	component moore is
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

	machine : moore port map ( input => i, output => o, clk => clk);
	
	clk_process :process
	
  	begin
	
  		clk <= '0';
  		wait for 25 ns;
  		clk <= '1';
  		wait for 25 ns;
		
  	end process;
	
	i <= '0', '0' after 50 ns, '1'  after 100 ns , '0'  after 150 ns , '1'  after 200 ns, '1' after 250 ns, '0'  after 300 ns;
	
end test;
