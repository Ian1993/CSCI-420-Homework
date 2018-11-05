entity Adder is
	port
	(
		A 		: in bit;
		B		: in bit;
		Cin		: in bit;
		Sum		: out bit;
		Carry	: out bit
	);
end Adder;

architecture rtl of Adder is
begin
	Sum		<= (A xor B) xor Cin;
	Carry	<= (A and B) or ((A xor B) and Cin);
	
end rtl;