LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb IS
END tb;

ARCHITECTURE test OF tb IS

component DualportRAM is
	port 
	(	
		data_w : in std_logic_vector(3 downto 0);
		data_r : out std_logic_vector(3 downto 0);
		address_w : in natural range 0 to 15;
		address_r : in natural range 0 to 15;
		w : in std_logic := '0';
		r : in std_logic := '0';
		clock : in std_logic;
		reset : in std_logic
	);
end component;
	
   signal clk, rr, wri, rea : std_logic;   
   signal d_w, d_r : std_logic_vector(3 downto 0);   
   signal addr_w, addr_r : integer RANGE 0 to 15;  
   constant clk_in_t : time := 20 ns; 

BEGIN
	
 	test_dual_ram : DualportRAM port map(d_w, d_r, addr_w, addr_r, wri, rea, clk, rr);
	tick : process 
        begin
        	clk <= '0';
        	wait for clk_in_t / 2;
        	clk <= '1';
        	wait for clk_in_t / 2;
		end process;

	rr <= '0';
	
	initial: process 
		begin
		
		wri <= '1';
		addr_w <= 2;
		d_w <= "0010";
		
		rea <= '1';
		addr_r <= 8; wait for 100 ns;
		
		addr_w <= 5;
		d_w <= "0101";
		
		addr_r <= 11; wait for 100 ns;		
		
		end process;
END test;
