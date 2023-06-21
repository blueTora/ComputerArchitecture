library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity and_gate is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out STD_LOGIC
);
End and_gate;

Architecture gatelevel of and_gate is
begin
    O <= I1 and I2;
end gatelevel;