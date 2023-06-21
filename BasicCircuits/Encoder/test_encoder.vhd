LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
entity test_encoder IS
end test_encoder;
 
architecture test OF test_encoder IS
 
component encoder4to2
port(
 A : in STD_LOGIC_VECTOR(3 downto 0);
 B : out STD_LOGIC_VECTOR(1 downto 0)
 );
end component;
 
signal X : std_logic_vector(3 downto 0) := (others => '0');
signal Y : std_logic_vector(1 downto 0);
 
begin
 
enc: encoder4to2 port map(A=>X, B=>Y);
 
 tb : process
begin
 
X <= "0000";
 
wait for 100 ns;
 
X <= "0001";
 
wait for 100 ns;
 
X <= "0010";
 
wait for 100 ns;
 
X <= "0100";
 
wait for 100 ns;
 
X <= "1000";

wait for 100 ns;
 
wait;
end process tb;
 
end;
