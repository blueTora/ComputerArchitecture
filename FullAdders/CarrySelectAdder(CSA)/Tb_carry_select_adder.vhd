library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
ENTITY Tb_carry_select_adder IS
END Tb_carry_select_adder;
 
architecture test of Tb_carry_select_adder is
 
COMPONENT carry_select_adder
	PORT(
		X : IN std_logic_vector(3 downto 0);
		Y : IN std_logic_vector(3 downto 0);
		CARRY_IN : IN std_logic;
		SUM : OUT std_logic_vector(3 downto 0);
		CARRY_OUT : OUT std_logic
	);
END COMPONENT;
 
signal cin, cout: STD_LOGIC;
signal a, b, s: STD_LOGIC_VECTOR(3 downto 0);

begin
 
	adder: carry_select_adder port map(X=>a , Y=>b, CARRY_IN=>cin, SUM=>s, CARRY_OUT=>cout);
	a <= "0101", "0001" after 100 ns, "0101" after 200 ns, "0100" after 300 ns;
	b <= "0010", "0100" after 100 ns, "0011" after 200 ns, "0111" after 300 ns;
	cin <= '0'; 
	 
end Test;



