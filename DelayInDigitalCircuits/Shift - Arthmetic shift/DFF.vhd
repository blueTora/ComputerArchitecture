library IEEE;
use IEEE.std_logic_1164.all;
Entity DFF is
	Port(
	d, clk, clear: in std_logic;
	q,qnot : out std_logic
	);
End entity DFF;
Architecture gatelvl of DFF is

	signal dnow,dn,cln,a,b,c,d1,e,f,g,h,t1,t2: std_logic;	

Begin
	dnow <= d and clear;
	cln <= not clk;
	dn <= not dnow;
	a <= dnow nand clk;
	b <= clk nand dn;
	c <= a nand d1;
	d1 <= c nand b;
	e <= c nand cln;
	f <= d1 nand cln;
	g <= e nand h;
	h <= f nand g;
	q <= g;
	qnot <= h;


End gatelvl;
