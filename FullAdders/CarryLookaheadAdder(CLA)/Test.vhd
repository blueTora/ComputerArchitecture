library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity Test is
end Test;
 
architecture test of Test is
 
	component CLA
	Port ( 
	A : in STD_LOGIC_VECTOR (3 downto 0);
	B : in STD_LOGIC_VECTOR (3 downto 0);
	Cin : in STD_LOGIC;
	S : out STD_LOGIC_VECTOR (3 downto 0);
	Cout : out STD_LOGIC);
	end component;
 
	signal cin, cout: STD_LOGIC;
	signal a, b, s: STD_LOGIC_VECTOR(3 downto 0);

	begin
 
	adder: CLA port map(A=>a , B=>b, Cin=>cin, S=>s, Cout=>cout);
	a <= "0101", "0001" after 100 ns, "0101" after 200 ns, "0100" after 300 ns;
	b <= "0010", "0100" after 100 ns, "0011" after 200 ns, "0111" after 300 ns;
	cin <= '0'; 
	 
end Test;


