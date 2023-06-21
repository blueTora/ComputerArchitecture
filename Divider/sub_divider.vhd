library ieee;
use ieee.std_logic_1164.all;

entity sub_divider is
 Port(
 A : in std_logic_vector(4 downto 0);
 B : in std_logic_vector(3 downto 0);
 remaining : out std_logic_vector(4 downto 0);
 output : out std_logic
 );
end entity sub_divider;

architecture structure of sub_divider is

component FA is
Port(
 i0, i1, cin: in std_logic;
 s, cout : out std_logic
);
end component FA;

component mux is
port(	
	a4, b4: in std_logic_vector(4 downto 0);
	s4: in std_logic;
	z4: out std_logic_vector(4 downto 0)
);
end component mux;

signal notB, sub, Cout: std_logic_vector(4 downto 0);

begin

 notB(0) <= not B(0);
 FA0: FA port map (A(0), notB(0), 1, sub(0), Cout(0));
 
 notB(1) <= not B(1);
 FA1: FA port map (A(1), notB(1), Cout(0), sub(1), Cout(1));
 
 notB(2) <= not B(2);
 FA2: FA port map (A(2), notB(2), Cout(1), sub(2), Cout(2));
 
 notB(3) <= not B(3);
 FA3: FA port map (A(3), notB(3), Cout(2), sub(3), Cout(3));
 
 FA4: FA port map (A(4), 1, Cout(3), sub(4), Cout(4));
 
 mux: mux port map (sub, A, Cout(4), remaining);

end structure;
