library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test_comparator is
end test_comparator;

architecture test of test_comparator is
	component Comparator4bit is
	port (
		A,B: in std_logic_vector(3 downto 0);
		ALTB: out std_logic;
		AEQB: out std_logic;
		AGTB: out std_logic
	);
	end component;

signal X,Y : std_logic_vector(3 downto 0) :=(others => '0');
signal lesser,equal,greater :  std_logic:='0';

begin
comp: Comparator4bit port map(A=>X, B=>Y, ALTB=>lesser, AEQB=>equal, AGTB=>greater);

tb : process
begin

X<="0010";
Y<="1001";
wait for 100 ns;

X<="1001";
Y<="0010";
wait for 100 ns;

X<="1010";
Y<="1010";

wait;
end process tb;

end;