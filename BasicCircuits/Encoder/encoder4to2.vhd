library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
Entity encoder4to2 is
 port(
 A : in STD_LOGIC_VECTOR(3 downto 0);
 B : out STD_LOGIC_VECTOR(1 downto 0)
 );
End encoder4to2;

Architecture structure of encoder4to2 is
	component or_gate is
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC
		);
	end component or_gate;
Begin

or_gate1: or_gate port map(A=>A(1), B=>A(3), C=>B(0));
or_gate2: or_gate port map(A=>A(2), B=>A(3), C=>B(1));
 
End structure;
