entity halfAdder is
	port
	(
		A 		: in bit;
		B		: in bit;
		
		Sum		: out bit;
		Carry	: out bit
	);
end halfAdder;

architecture rtl of halfAdder is
begin
	Sum		<= A xor B;
	Carry	<= A and B;
	
end rtl;