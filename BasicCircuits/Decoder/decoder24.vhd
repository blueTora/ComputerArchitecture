library IEEE;
use IEEE.std_logic_1164.all;

entity decoder24 is
Port(
	c, d, en: in std_logic;
	o : out std_logic_vector(3 downto 0)
);
end entity decoder24;

architecture behavioral of decoder24 is

	signal cnot, dnot : std_logic;
begin

	cnot <= not(c);
	dnot <= not(d);
	o(0) <= cnot and dnot and en;
	o(1) <= cnot and d and en;
	o(2) <= c and dnot and en;
	o(3) <= c and d and en;

end behavioral;
