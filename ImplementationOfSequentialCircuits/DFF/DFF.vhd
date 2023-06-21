Library IEEE;
USE IEEE.Std_logic_1164.all;

--RisingEdge DFF Asynchronous ResetLow

entity DFF is 
   port(
      Q : out std_logic;    
      Clk : in std_logic;  
	  reset: in std_logic;  
      D : in  std_logic    
   );
end DFF;

architecture Behavioral of DFF is  
begin  

 DFF_P : process(Clk,reset)
 begin 
 
     if(reset = '0') then 
		Q <= '0';
     elsif(rising_edge(Clk)) then
		Q <= D; 
   
  end if;      
 end process;  
 
end Behavioral; 