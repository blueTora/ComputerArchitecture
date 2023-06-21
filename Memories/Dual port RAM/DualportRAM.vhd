library ieee;
use ieee.std_logic_1164.all;

entity DualportRAM is
	port 
	(	
		data_w : in std_logic_vector(3 downto 0);
		data_r : out std_logic_vector(3 downto 0);
		address_w : in natural range 0 to 15;
		address_r : in natural range 0 to 15;
		w : in std_logic := '0';
		r : in std_logic := '0';
		clock : in std_logic;
		reset : in std_logic := '0'
	);
	
end DualportRAM;

architecture rtl of DualportRAM is
	
	subtype word_t is std_logic_vector(3 downto 0);
	type memory_t is array(0 to 15) of word_t;
	signal ram_block : memory_t;

begin

	PROCESS(reset)
    BEGIN
      if(reset = '0') THEN
	  
	ram_block(address_w) <= "0000"; 
	ram_block(address_w) <= "0001";
	ram_block(address_w) <= "0010";
	ram_block(address_w) <= "0010";
	ram_block(address_w) <= "0100";
	ram_block(address_w) <= "0101";
	ram_block(address_w) <= "0110";
	ram_block(address_w) <= "0111";
	ram_block(address_w) <= "1000";
	ram_block(address_w) <= "1001";
	ram_block(address_w) <= "1010";
	ram_block(address_w) <= "1011";
	ram_block(address_w) <= "1100";
	ram_block(address_w) <= "1101";
	ram_block(address_w) <= "1110";
	ram_block(address_w) <= "1111";
	
	ram_block(address_r) <= "0000"; 
	ram_block(address_r) <= "0001";
	ram_block(address_r) <= "0010";
	ram_block(address_r) <= "0010";
	ram_block(address_r) <= "0100";
	ram_block(address_r) <= "0101";
	ram_block(address_r) <= "0110";
	ram_block(address_r) <= "0111";
	ram_block(address_r) <= "1000";
	ram_block(address_r) <= "1001";
	ram_block(address_r) <= "1010";
	ram_block(address_r) <= "1011";
	ram_block(address_r) <= "1100";
	ram_block(address_r) <= "1101";
	ram_block(address_r) <= "1110";
	ram_block(address_r) <= "1111";
	
   END IF;
   END PROCESS;

	-- Port Write
	process(clock)
	begin
		if(rising_edge(clock)) then 
			IF(w = '1') THEN
            ram_block(address_w) <= data_w;
			END IF;
		end if;
	end process;
	
	-- Port Read
	process(clock)
	begin
		if(rising_edge(clock)) then
			IF(r = '1') THEN
            data_r <= ram_block(address_r);
			END IF;
		end if;
	end process;
end rtl;
