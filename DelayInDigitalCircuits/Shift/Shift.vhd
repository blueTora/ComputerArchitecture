library IEEE;
use IEEE.std_logic_1164.all;
Entity Shift is
	Port(
	s0, s1, i1, i2, i3, i4, reset, clk: in std_logic;
	a : out std_logic_vector(3 downto 0)
	);
End entity Shift;
Architecture gatelvl of Shift is

	component MUX is
	Port(
		s0, s1, i0, i1, i2, i3: in std_logic;
		z : out std_logic
	);
	end component;
	component DFF is
	Port(
		D, clk, clear: in std_logic;
		Q,Qnot : out std_logic
	);
	end component;
	signal at1,at2,at3,at4 : std_logic; 
	signal zt1,zt2,zt3,zt4 : std_logic; 	
	signal qn1,qn2,qn3,qn4 : std_logic;

Begin

	m1 : Mux port map(s0,s1,at1,at2,'0',i1,zt1);
	m2 : Mux port map(s0,s1,at2,at3,at1,i2,zt2);
	m3 : Mux port map(s0,s1,at3,at4,at2,i3,zt3);
	m4 : Mux port map(s0,s1,at4,'0',at3,i4,zt4);

	d1 : DFF port map(zt1,clk,reset,at1,qn1);	
	d2 : DFF port map(zt2,clk,reset,at2,qn2);
	d3 : DFF port map(zt3,clk,reset,at3,qn3);
	d4 : DFF port map(zt4,clk,reset,at4,qn4);
	
	a(0) <= at1;
	a(1) <= at2;
	a(2) <= at3;
	a(3) <= at4;


End gatelvl;




