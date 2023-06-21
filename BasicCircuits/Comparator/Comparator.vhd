library IEEE;
use IEEE.std_logic_1164.all;

entity Comparator is
port (
 A,B: in std_logic;
 ALTB: out std_logic;
 AEQB: out std_logic;
 AGTB: out std_logic
 );
end Comparator;

architecture structure of Comparator is
	component nor_gate is
		Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Z : out  STD_LOGIC
		);
	end component nor_gate;
	
	component and_gate is
		Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out STD_LOGIC
		);
	end component and_gate;
	
	signal Anot, Bnot, lt, gt: std_logic;

begin

Anot <= not A;
Bnot <= not B;
 
A_lesser_than_B: and_gate port map(I1=>A , I2=>Bnot , O=>lt);
ALTB <= lt;
 
A_greater_than_B: and_gate port map(I1=>Anot , I2=>B , O=>gt);
AGTB <= gt;

equal: nor_gate port map(X=>gt , Y=>lt , Z=>AEQB);

end structure;