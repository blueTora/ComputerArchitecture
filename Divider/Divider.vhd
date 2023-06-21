library ieee;
use ieee.std_logic_1164.all;

entity Divider is
Port(
 Divide, Divisor: in std_logic_vector(3 downto 0);
 remain, quotient : out std_logic_vector(3 downto 0)
 );
end entity Divider;

architecture structure of Divider is

component sub_divider is
Port(
 A : in std_logic_vector(4 downto 0);
 B : in std_logic_vector(3 downto 0);
 remaining : out std_logic_vector(4 downto 0);
 output : out std_logic
);
end component sub_divider;

signal r0, r1, r2, r3, a0, a1, a2, a3: std_logic_vector(4 downto 0);

begin

 a0 <= '0' & Divide;
 sub_divider0: sub_divider port map ( a0, Divisor, r0, quotient(3));
 
 a1 <= r0(3 downto 0) & '0';
 sub_divider1: sub_divider port map ( a1, Divisor, r1, quotient(2));
 
 a2 <= r1(3 downto 0) & '0';
 sub_divider2: sub_divider port map ( a2, Divisor, r2, quotient(1));

 a3 <= r2(3 downto 0) & '0';
 sub_divider3: sub_divider port map ( a3, Divisor, r3, quotient(0));
 
 remain <= r3(3 downto 0);

end structure;
