LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE test OF tb IS

component RAM is
   PORT
   (
      clock: IN std_logic;
      data: INOUT std_logic_vector (3 DOWNTO 0);
      address: IN integer RANGE 0 to 15;
      w: IN std_logic;
      r: IN std_logic;
      reset : IN std_logic
   );
end component;
	
   signal clk, rr, wri, rea : std_logic;
   signal d : std_logic_vector(3 downto 0);
   signal addr : integer RANGE 0 to 15;  
   constant clk_in_t : time := 20 ns; 

BEGIN
	
 	test_ram : RAM port map(clk, d, addr, wri, rea, rr);
	tick : process
        begin
        	clk <= '0';
        	wait for clk_in_t / 2;
        	clk <= '1';
        	wait for clk_in_t / 2;
		end process;

	rr <= '0';
	
	addr <= 2, 4 after 100 ns, 8 after 200 ns, 11 after 300 ns;
	wri <= '1', '1' after 100 ns, '0' after 200 ns, '0' after 300 ns;
	d <= "0010", "0101" after 100 ns, "ZZZZ" after 200 ns, "ZZZZ" after 300 ns;
	rea <= '0', '0' after 100 ns, '1' after 200 ns, '1' after 300 ns;
	
END test;
