library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Entity or_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC
);
End or_gate;

Architecture gatelevel of or_gate is
begin
    C <= A or B;
end gatelevel;