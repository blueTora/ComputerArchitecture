library IEEE;
use IEEE.std_logic_1164.all;

Entity tb is
End entity tb;

Architecture gatelvl of tb is

	component Shift is
	Port(
	s0, s1, i1, i2, i3, i4, reset, clk: in std_logic;
	a : out std_logic_vector(3 downto 0)
	);
	end component;
	
	signal rst, clk, s0, s1 : std_logic; 
	signal a, i : std_logic_vector(3 downto 0);

Begin

	sh : Shift port map(s0, s1, i(0), i(1), i(2), i(3), rst, clk, a);
	
	process
	begin
    		clk <= '0';
    		wait for 50 ns;
    		clk <= '1';
    		wait for 50 ns;
	end process;
	rst <= '1';
	s0 <= '1' , '0' after 400 ns , '1' after 900 ns, '1' after 1900 ns , '1' after 2100 ns;
	s1 <= '1' , '1' after 400 ns , '0' after 900 ns, '1' after 1900 ns , '0' after 2100 ns;
	i <= "1101" , "1001" after 1800 ns;
	


End gatelvl;



