LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TFF_tb IS
END TFF_tb;

ARCHITECTURE behavior OF TFF_tb IS 

    COMPONENT TFF
    PORT(
         t : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    
   signal din : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal dout : std_logic;

   constant clk_period : time := 10 ns;

BEGIN

   uut: TFF PORT MAP (
          t => din,
          clk => clk,
          reset => rst,
          q => dout
        );

  clk_process :process
  begin
  	clk <= '0';
  	wait for clk_period/2;
  	clk <= '1';
  	wait for clk_period/2;
  end process;

  stim_proc: process
  begin  
 
  	rst <= '1';
  	wait for 50 ns; 

  	rst <= '0';
  	din <= '0';
  	wait for 50 ns;
  
  	rst <= '0';
  	din <= '1';  
  	wait;
  
  end process;

END;
