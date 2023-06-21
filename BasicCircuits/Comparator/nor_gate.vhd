library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_gate is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : out  STD_LOGIC
	);
end nor_gate;

architecture gatelevel of nor_gate is
begin

Z <= X nor Y;

end gatelevel;