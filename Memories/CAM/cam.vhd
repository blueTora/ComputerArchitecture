LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY cam IS
   PORT
   (
      clock: IN std_logic;
      data: in std_logic_vector (3 DOWNTO 0);
      w: IN std_logic;
      r, reset: IN std_logic;
      match : OUT std_logic
   );
END cam;

ARCHITECTURE rtl OF cam IS
   TYPE mem IS ARRAY(0 TO 15) OF std_logic_vector(3 DOWNTO 0);
   SIGNAL ram_block : mem;
   Signal temp : std_logic;
   signal v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15 : std_logic;
BEGIN


   PROCESS(clock, reset)
   begin
	
      if(reset = '1') then
   		v0 <= '0';
		v1 <= '0';
		v2 <= '0';
		v3 <= '0';
		v4 <= '0';
		v5 <= '0';
		v6 <= '0';
		v7 <= '0';
		v8 <= '0';
		v9 <= '0';
		v10 <= '0';
		v11 <= '0';
		v12 <= '0';
		v13 <= '0';
		v14 <= '0';
		v15 <= '0';
	end if;
      if(falling_edge(clock)) then
		temp <= '0';
		if(v0 = '1' and ram_block(0)=data) then temp <= '1';
			elsif(v1 = '1' and ram_block(1)=data) then temp <= '1';
			elsif(v2 = '1' and ram_block(2)=data) then temp <= '1';
			elsif(v3 = '1' and ram_block(3)=data) then temp <= '1';
			elsif(v4 = '1' and ram_block(4)=data) then temp <= '1';
			elsif(v5 = '1' and ram_block(5)=data) then temp <= '1';
			elsif(v6 = '1' and ram_block(6)=data) then temp <= '1';
			elsif(v7 = '1' and ram_block(7)=data) then temp <= '1';
			elsif(v8 = '1' and ram_block(8)=data) then temp <= '1';
			elsif(v9 = '1' and ram_block(9)=data) then temp <= '1';
			elsif(v10 = '1' and ram_block(10)=data) then temp <= '1';
			elsif(v11 = '1' and ram_block(11)=data) then temp <= '1';
			elsif(v12 = '1' and ram_block(12)=data) then temp <= '1';
			elsif(v13 = '1' and ram_block(13)=data) then temp <= '1';
			elsif(v14 = '1' and ram_block(14)=data) then temp <= '1';
			elsif(v15 = '1' and ram_block(15)=data) then temp <= '1';
                end if;
	end if;
      if(rising_edge(clock)) then
	match <= '0';
         if(w = '1') then
            	
		if(temp = '0') then
			if(v0 = '0') then ram_block(0) <= data;
				elsif(v1 = '0') then ram_block(1) <= data;
				elsif(v2 = '0') then ram_block(2) <= data; 
				elsif(v3 = '0') then ram_block(3) <= data; 
				elsif(v4 = '0') then ram_block(4) <= data; 
				elsif(v5 = '0') then ram_block(5) <= data; 
				elsif(v6 = '0') then ram_block(6) <= data;
				elsif(v7 = '0') then ram_block(7) <= data; 
				elsif(v8 = '0') then ram_block(8) <= data; 
				elsif(v9 = '0') then ram_block(9) <= data; 
				elsif(v10 = '0') then ram_block(10) <= data; 
				elsif(v11 = '0') then ram_block(11) <= data; 
				elsif(v12 = '0') then ram_block(12) <= data; 
				elsif(v13 = '0') then ram_block(13) <= data; 
				elsif(v14 = '0') then ram_block(14) <= data; 
				elsif(v15 = '0') then ram_block(15) <= data; 
                	end if;
		end if;
		if(temp = '0') then
			if(v0 = '0') then v0 <= '1';
				elsif(v1 = '0') then v1 <= '1';
				elsif(v2 = '0') then v2 <= '1'; 
				elsif(v3 = '0') then v3 <= '1'; 
				elsif(v4 = '0') then v4 <= '1'; 
				elsif(v5 = '0') then v5 <= '1'; 
				elsif(v6 = '0') then v6 <= '1';
				elsif(v7 = '0') then v7 <= '1'; 
				elsif(v8 = '0') then v8 <= '1'; 
				elsif(v9 = '0') then v9 <= '1'; 
				elsif(v10 = '0') then v10 <= '1'; 
				elsif(v11 = '0') then v11 <= '1'; 
				elsif(v12 = '0') then v12 <= '1'; 
				elsif(v13 = '0') then v13 <= '1'; 
				elsif(v14 = '0') then v14 <= '1'; 
				elsif(v15 = '0') then v15 <= '1'; 
                	end if;
		end if;
         end if;
	 if(r = '1') then
            	if(v0 = '1' and ram_block(0)=data) then match <= '1';
			elsif(v1 = '1' and ram_block(1)=data) then match <= '1';
			elsif(v2 = '1' and ram_block(2)=data) then match <= '1';
			elsif(v3 = '1' and ram_block(3)=data) then match <= '1';
			elsif(v4 = '1' and ram_block(4)=data) then match <= '1';
			elsif(v5 = '1' and ram_block(5)=data) then match <= '1';
			elsif(v6 = '1' and ram_block(6)=data) then match <= '1';
			elsif(v7 = '1' and ram_block(7)=data) then match <= '1';
			elsif(v8 = '1' and ram_block(8)=data) then match <= '1';
			elsif(v9 = '1' and ram_block(9)=data) then match <= '1';
			elsif(v10 = '1' and ram_block(10)=data) then match <= '1';
			elsif(v11 = '1' and ram_block(11)=data) then match <= '1';
			elsif(v12 = '1' and ram_block(12)=data) then match <= '1';
			elsif(v13 = '1' and ram_block(13)=data) then match <= '1';
			elsif(v14 = '1' and ram_block(14)=data) then match <= '1';
			elsif(v15 = '1' and ram_block(15)=data) then match <= '1';
		end if;
        end if;
     end if;
   end PROCESS;

end rtl;
