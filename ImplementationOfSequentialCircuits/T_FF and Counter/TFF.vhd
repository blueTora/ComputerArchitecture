library ieee;
use ieee.std_logic_1164.all;
  
entity TFF is
      port(
          t:in  std_logic;
          clk:in  std_logic;
          reset:in  std_logic;
          q:out std_logic
      );
end entity;
  
architecture Behavioral of Tff is 


	COMPONENT not_gate
    	PORT(
        	i : in std_logic;
        	o : out std_logic
        );
    	END COMPONENT;
	signal tq : std_logic;
	signal isnot : std_logic;
begin
	not1 : not_gate port map(i=>tq, o=>isnot);
    	tff : process(clk, reset) 
	begin
        	if(reset = '1') then
            		tq <= '0';
        	elsif(rising_edge(clk)) then
            		if t = '1' then
                		tq <= isnot;
           		end if;
       		end if;
    	end process;
	
	q <= tq;	

end Behavioral;




