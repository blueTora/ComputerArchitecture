LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Counter_tb IS
END Counter_tb;

ARCHITECTURE behavior OF Counter_tb IS 

    COMPONENT Counter
    port(
	clk , resetin: in std_logic;
	b0,b1,b2,b3 : out std_logic
		
	);
    END COMPONENT;
    
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal o0,o1,o2,o3 : std_logic;

   constant clk_period : time := 10 ns;

BEGIN

   uut: Counter PORT MAP (
          clk => clk,
          resetin => rst,
	  b0 => o0,
	  b1 => o1,
	  b2 => o2,
	  b3 => o3
        );

  clk_process :process
  begin
  	clk <= '0';
  	wait for clk_period/2;
  	clk <= '1';
  	wait for clk_period/2;
  end process;
	
  rst <= '1' , '0' after 50 ns;


END;