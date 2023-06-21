library IEEE;
use IEEE.std_logic_1164.all;

entity Comparator4bit is
port (
 A,B: in std_logic_vector(3 downto 0);
 ALTB: out std_logic;
 AEQB: out std_logic;
 AGTB: out std_logic
 );
end Comparator4bit;

architecture structure of Comparator4bit is
	component or_gate is
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC
		);
	end component or_gate;
	
	component and_gate is
		Port ( 
		   I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out STD_LOGIC
		);
	end component and_gate;
	
	component Comparator is
		port (
			A,B: in std_logic;
			ALTB: out std_logic;
			AEQB: out std_logic;
			AGTB: out std_logic
		);
	end component Comparator;
	
	signal eq, lt, gt: std_logic_vector(3 downto 0);
	signal l, g: std_logic_vector(2 downto 0);
	signal temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9, temp10, temp11: std_logic;

begin

comparator0: Comparator port map(A=>A(0) , B=>B(0) , ALTB=>lt(0) , AEQB=>eq(0) , AGTB=>gt(0) );
comparator1: Comparator port map(A=>A(1) , B=>B(1) , ALTB=>lt(1) , AEQB=>eq(1) , AGTB=>gt(1) );
comparator2: Comparator port map(A=>A(2) , B=>B(2) , ALTB=>lt(2) , AEQB=>eq(2) , AGTB=>gt(2) );
comparator3: Comparator port map(A=>A(3) , B=>B(3) , ALTB=>lt(3) , AEQB=>eq(3) , AGTB=>gt(3) );

and0: and_gate port map(I1=>eq(1) , I2=>eq(2) , O=>temp0 );
and1: and_gate port map(I1=>temp0 , I2=>eq(3) , O=>temp1 );
and2: and_gate port map(I1=>temp1 , I2=>lt(0) , O=>l(0) );

and3: and_gate port map(I1=>eq(3) , I2=>eq(2) , O=>temp2 );
and4: and_gate port map(I1=>temp2 , I2=>lt(1) , O=>l(1) );

and5: and_gate port map(I1=>eq(3) , I2=>lt(2) , O=>l(2) );

or0: or_gate port map(A=>l(0) , B=>l(1) , C=>temp3 );
or1: or_gate port map(A=>temp3 , B=>l(2) , C=>temp4 );
or2: or_gate port map(A=>temp4 , B=>lt(3) , C=>ALTB );

and6: and_gate port map(I1=>eq(1) , I2=>eq(2) , O=>temp5 );
and7: and_gate port map(I1=>temp5 , I2=>eq(3) , O=>temp6 );
and8: and_gate port map(I1=>temp6 , I2=>gt(0) , O=>g(0) );

and9: and_gate port map(I1=>eq(3) , I2=>eq(2) , O=>temp7 );
and10: and_gate port map(I1=>temp7 , I2=>gt(1) , O=>g(1) );

and11: and_gate port map(I1=>eq(3) , I2=>gt(2) , O=>g(2) );

or3: or_gate port map(A=>g(0) , B=>g(1) , C=>temp8 );
or4: or_gate port map(A=>temp8 , B=>g(2) , C=>temp9 );
or5: or_gate port map(A=>temp9 , B=>gt(3) , C=>AGTB );

and12: and_gate port map(I1=>eq(0) , I2=>eq(1) , O=>temp10 );
and13: and_gate port map(I1=>temp10 , I2=>eq(2) , O=>temp11 );
and14: and_gate port map(I1=>temp11 , I2=>eq(3) , O=>AEQB );

end structure;