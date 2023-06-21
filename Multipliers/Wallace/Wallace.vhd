library IEEE;
use IEEE.std_logic_1164.all;
Entity Wallace is
	Port(
		x, y: in std_logic_vector(3 downto 0);
		m : out std_logic_vector(7 downto 0)
	);
End entity Wallace;

Architecture gate of Wallace is
	component FA is
	Port(
		a, b, cin: in std_logic;
		s, cout : out std_logic
	);
	end component;
	signal s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18 : std_logic;
	signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18 : std_logic;
	signal p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18 : std_logic;
	signal p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34 : std_logic;
Begin
	p0 <= x(0) and y(0); 	
        p1 <= x(1) and y(0); 	
        p2 <= x(2) and y(0); 	
        p3 <= x(3) and y(0); 	
        p4 <= '0'; 	
        p5 <= '0'; 	
        p6 <= '0'; 	
        p7 <= '0'; 	
        p10 <= x(0) and y(1); 	
        p11 <= x(1) and y(1); 	
        p12 <= x(2) and y(1); 	
        p13 <= x(3) and y(1); 	
        p14 <= '0'; 	
        p15 <= '0'; 	
        p16 <= '0'; 	
        p20 <= x(0) and y(2); 	
        p21 <= x(1) and y(2); 	
        p22 <= x(2) and y(2); 	
        p23 <= x(3) and y(2); 	
        p24 <= '0'; 	
        p25 <= '0'; 	
        p30 <= x(0) and y(3); 	
        p31 <= x(1) and y(3); 	
        p32 <= x(2) and y(3); 	
        p33 <= x(3) and y(3); 	
	p34 <= '0'; 	
        
	fa1 : FA port map(p11, p20, '0',s1,c1);
	fa2 : FA port map(p30, p21, p12,s2,c2);
	fa3 : FA port map(p31, p22, p13,s3,c3);
	fa4 : FA port map(p32, p23, p14,s4,c4);
	fa5 : FA port map(p33, p24, p15,s5,c5);
	fa6 : FA port map(p34, p25, p16,s6,c6);

	fa7 : FA port map(p3,s2, '0',s7,c7);
	fa8 : FA port map(c2, s3, p4,s8,c8);
	fa9 : FA port map(c3, s4, p5,s9,c9);
	fa10 : FA port map(c4, s5, p6,s10,c10);
	fa11 : FA port map(c5, s6, p7,s11,c11);

	fa12 : FA port map(p10, p1, '0',s12,c12);
	fa13 : FA port map(p2, s1, c12,s13,c13);
	fa14 : FA port map(c1, s7, c13,s14,c14);
	fa15 : FA port map(s8,c7, c14,s15,c15);
	fa16 : FA port map(s9, c8, c15,s16,c16);
	fa17 : FA port map(s10, c9, c16,s17,c17);
	fa18 : FA port map(s11, c10, c17,s18,c18);
	
	m(0) <= p0;
	m(1) <= s12;
	m(2) <= s13;
	m(3) <= s14;
	m(4) <= s15;
	m(5) <= s16;
	m(6) <= s17;
	m(7) <= s18;

 End gate;




