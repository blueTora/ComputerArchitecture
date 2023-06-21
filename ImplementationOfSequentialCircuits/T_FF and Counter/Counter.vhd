LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Counter IS
	port(
		clk ,resetin : in std_logic;
		b0,b1,b2,b3 : out std_logic
		
	);
END Counter;


ARCHITECTURE behavior OF Counter IS 

    COMPONENT TFF
    PORT(
         t : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    COMPONENT TFF_falling
    PORT(
         t : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
   
   signal dout0,dout1,dout2,dout3 : std_logic;


BEGIN

   ff0: TFF PORT MAP (t => '1', clk => clk, reset => resetin, q => dout0);
   ff1: TFF_falling PORT MAP (t => '1', clk => dout0, reset => resetin, q => dout1);
   ff2: TFF_falling PORT MAP (t => '1', clk => dout1, reset => resetin, q => dout2);
   ff3: TFF_falling PORT MAP (t => '1', clk => dout2, reset => resetin, q => dout3);

   b0 <= dout0;
   b1 <= dout1;
   b2 <= dout2;
   b3 <= dout3;


END;