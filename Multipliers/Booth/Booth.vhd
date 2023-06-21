library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Booth is
	Port ( 
		A : in STD_LOGIC_VECTOR (3 downto 0);
		B : in STD_LOGIC_VECTOR (3 downto 0);
		output : out STD_LOGIC_VECTOR (7 downto 0)
	);
end Booth;
 
architecture structure of Booth is

component CLA
	Port ( 
		A : in STD_LOGIC_VECTOR (3 downto 0);
		B : in STD_LOGIC_VECTOR (3 downto 0);
		Cin : in STD_LOGIC;
		S : out STD_LOGIC_VECTOR (3 downto 0);
		Cout : out STD_LOGIC
	);
end component;

component mux
	port(
		a4,b4,c4,d4: in std_logic_vector(3 downto 0);
		s04,s14: in std_logic;
		z4: out std_logic_vector(3 downto 0)
	);
end component;

component FA
	Port(
		i0, i1, cin: in std_logic;
		s, cout : out std_logic
	);
end component;
	
	signal a0,a1 : STD_LOGIC_VECTOR(3 downto 0);
	signal out0,out1,out2,out3 : STD_LOGIC_VECTOR(3 downto 0);
	signal cout0 : STD_LOGIC;
	signal cout1 : STD_LOGIC_VECTOR(1 downto 0);
	signal cout2, cout3, cout4, cout5, cout6 : STD_LOGIC_VECTOR(2 downto 0);
	signal anot : STD_LOGIC_VECTOR(3 downto 0);
	signal sum : STD_LOGIC_VECTOR(10 downto 0);
	signal c : STD_LOGIC;

begin

	a0 <= A;
	anot <= not A;
	sub : CLA port map( "0001" , anot , '0' , a1 , c );
	
	mux0 : mux port map( "0000" , a0 , a1 , "0000" , '0' , B(0) , out0 );
	output(0) <= out0(0);
	
	mux1 : mux port map( "0000" , a0 , a1 , "0000" , B(0) , B(1) , out1 );
	
	add1 : FA port map( out0(1), out1(0), '0', output(1), cout0);
	
	mux2 : mux port map( "0000" , a0 , a1 , "0000" , B(1) , B(2) , out2 );
	


	add2 : FA port map( out0(2), out1(1), cout0, sum(0), cout1(0));
	add3 : FA port map( sum(0), out2(0), '0', output(2), cout1(1));
	
	mux3 : mux port map( "0000" , a0 , a1 , "0000" , B(2) , B(3) , out3 );
	
	add4 : FA port map( out0(3), out1(2), cout1(0), sum(1), cout2(0));
	add5 : FA port map( sum(1), out2(1), cout1(1), sum(2), cout2(1));
	add6 : FA port map( sum(2), out3(0), '0', output(3), cout2(2));
	
	add7 : FA port map( out0(3), out1(3), cout2(0), sum(3), cout3(0));
	add8 : FA port map( sum(3), out2(2), cout2(1), sum(4), cout3(1));
	add9 : FA port map( sum(4), out3(1), cout2(2), output(4), cout3(2));
	
	add10 : FA port map( out0(3), out1(3), cout3(0), sum(5), cout4(0));
	add11 : FA port map( sum(5), out2(3), cout3(1), sum(6), cout4(1));
	add12 : FA port map( sum(6), out3(2), cout3(2), output(5), cout4(2));
	
	add13 : FA port map( out0(3), out1(3), cout4(0), sum(7), cout5(0));
	add14 : FA port map( sum(7), out2(3), cout4(1), sum(8), cout5(1));
	add15 : FA port map( sum(8), out3(3), cout4(2), output(6), cout5(2));
	
	add16 : FA port map( out0(3), out1(3), cout5(0), sum(9), cout6(0));
	add17 : FA port map( sum(9), out2(3), cout5(1), sum(10), cout6(1));
	add18 : FA port map( sum(10), out3(3), cout5(2), output(7), cout6(2));
	
end structure;

