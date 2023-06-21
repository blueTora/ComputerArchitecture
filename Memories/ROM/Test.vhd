LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY tb IS
END tb;

ARCHITECTURE test OF tb IS

   component rom is
 	PORT
   	(
      		clock: IN std_logic;
      		data: OUT std_logic_vector (3 DOWNTO 0);
      		address: IN integer RANGE 0 to 15;
      		r: IN std_logic
   	);
   end component;
	
   signal clk, rr : std_logic;   
   signal d : std_logic_vector(3 downto 0);   
   signal add : integer RANGE 0 to 15;  
   constant clk_in_t : time := 20 ns; 

BEGIN
	
 	r1 : rom port map(clk, d, add, rr);
	process
         begin
        	clk <= '0';
        	wait for clk_in_t / 2;
        	clk <= '1';
        	wait for clk_in_t / 2;
        end process;

	rr <= '1';
	
	add <= 2, 4 after 100 ns, 11 after 200 ns;
	
	   

END test;
