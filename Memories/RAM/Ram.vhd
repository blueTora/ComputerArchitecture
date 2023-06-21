library ieee;   
use ieee.std_logic_1164.all;  
use ieee.std_logic_unsigned.all; 
 
entity RAM is 
  PORT
   (
      clock: IN std_logic;
      data: INOUT std_logic_vector (3 DOWNTO 0);
      address: IN integer RANGE 0 to 15;
      w: IN std_logic;
      r: IN std_logic;
      reset : IN std_logic := '0'
   );
end RAM;

architecture rtl of RAM is   

   TYPE mem IS ARRAY(0 TO 15) OF std_logic_vector(3 DOWNTO 0);
   SIGNAL ram_block : mem;

begin  

	ram_block(0) <= "1001";
	ram_block(1) <= "1111";
	ram_block(2) <= "1101";
	ram_block(3) <= "0011";
	ram_block(4) <= "0101";
	ram_block(5) <= "1000";
	ram_block(6) <= "0000";
	ram_block(7) <= "0011";
	ram_block(8) <= "0101";
	ram_block(9) <= "1111";
	ram_block(10) <= "0000";
	ram_block(11) <= "0100";
	ram_block(12) <= "0001";
	ram_block(13) <= "0010";
	ram_block(14) <= "1001";
	ram_block(15) <= "0110";
   
	initialising: process (clock)   
	begin   
  
    IF(rising_edge(clock)) THEN

        IF(w = '1' and r = '0') THEN
            ram_block(address) <= data;
        END IF;
		 
		IF(r = '1' and w = '0') THEN
            data <= ram_block(address);
		END IF;
		
	END IF;
	
	end process;   
  
end rtl; 