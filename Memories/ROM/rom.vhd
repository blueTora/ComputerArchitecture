LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY rom IS
   PORT
   (
      clock: IN std_logic;
      data: OUT std_logic_vector (3 DOWNTO 0);
      address: IN integer RANGE 0 to 15;
      r: IN std_logic
   );
END rom;
ARCHITECTURE rtl OF rom IS
   TYPE mem IS ARRAY(0 TO 15) OF std_logic_vector(3 DOWNTO 0);
   SIGNAL ram_block : mem;
BEGIN

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

   PROCESS(clock)
   BEGIN
      IF(clock'event AND clock = '1') THEN
	 IF(r = '1') THEN
            data <= ram_block(address);
         END IF;
      END IF;
   END PROCESS;
END rtl;
