LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb IS  
END tb;

ARCHITECTURE test OF tb IS

   component cam is
	PORT
   	(
      clock: IN std_logic;
      data: IN std_logic_vector (3 DOWNTO 0);
      w: IN std_logic;
      r, reset: IN std_logic;
      match : OUT std_logic
   	);
   end component;
   signal clk,w,r,reset,match : std_logic;
   signal d : std_logic_vector(3 downto 0);

BEGIN

	c1 : cam port map(clk, d, w, r, reset, match);
	
	d <= "1001", "1100" after 400 ns, "0000" after 500 ns;
	reset <= '1', '0' after 100 ns;	

	process
	begin
    		clk <= '0';
    		wait for 50 NS;
    		clk <= '1';
    		wait for 50 NS;
	end process;

	w <= '0', '1' after 100 ns, '0' after 900 ns;
	r <= '0', '0' after 100 ns, '1' after 900 ns;


end test;
