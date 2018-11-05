entity decoder_2to4 is
	port
	(
		A : in bit;
		B : in bit;
			
		W : out bit;
		X : out bit;
		Y : out bit;
		Z : out bit
	);
end decoder_2to4;

architecture behave of decoder_2to4 is
begin 
	W <= A AND B;
	X <= A AND (NOT B);
	Y <= (NOT A) AND B;
	Z <= (NOT A) AND (NOT B);
	