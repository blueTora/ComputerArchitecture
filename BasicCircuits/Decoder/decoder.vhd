library IEEE;
use IEEE.std_logic_1164.all;

entity decoder is
Port(
	a: in std_logic_vector(3 downto 0);
	z : out std_logic_vector(15 downto 0)
);
end entity decoder;

architecture behavioral of decoder is
	
	component decoder24 is
	Port(
		c, d, en: in std_logic;
		o : out std_logic_vector(3 downto 0)
	);
	end component;

	signal en : std_logic_vector(3 downto 0);
begin

	dec0:decoder24 port map ( c => a(3), d => a(2), en => '1'   , o => en);
	dec1:decoder24 port map ( c => a(1), d => a(0), en => en(0) , o => z(3 downto 0) );
	dec2:decoder24 port map ( c => a(1), d => a(0), en => en(1) , o => z(7 downto 4) );
	dec3:decoder24 port map ( c => a(1), d => a(0), en => en(2) , o => z(11 downto 8) );
	dec4:decoder24 port map ( c => a(1), d => a(0), en => en(3) , o => z(15 downto 12) );

end behavioral;






