entity decoder_3to8 is
	port
	(
		A : in bit;
		B : in bit;
		C : in bit;
			
		W : out bit;
		X : out bit;
		Y : out bit;
		Z : out bit;
		T :	out bit;
		U : out bit;
		P : out bit;
		O : out bit
	);
end decoder_3to8;

architecture behave of decoder_3to8 is
begin 
	W <= A AND B AND C;
	X <= A AND (NOT B) AND C;
	Y <= (NOT A) AND B AND C;
	Z <= (NOT A) AND (NOT B) AND C;
	T <= (NOT A) AND B AND (NOT C);
	U <= A AND (NOT B) AND (NOT C);
	P <= A AND B AND (NOT C);
	O <= (NOT A) AND (NOT B) AND (NOT C);