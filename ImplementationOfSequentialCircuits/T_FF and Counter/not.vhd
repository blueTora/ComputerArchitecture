library IEEE;
use IEEE.std_logic_1164.all;
Entity not_gate is
Port(
	i : in std_logic;
	o : out std_logic
);
End entity not_gate;
Architecture gatelevel of not_gate is
Begin
	o <= not i;
End gatelevel;
