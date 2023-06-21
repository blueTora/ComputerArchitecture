library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity and_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC
);
End and_gate;

Architecture gatelevel of and_gate is
begin
    C <= A and B;
end gatelevel;