entity halfAdder_TB is
end halfAdder_TB;

architecture behave of Adder_TB is
	component Adder
		Port
		(
			A		: in bit;
			B		: in bit;
			Cin		: in bit;
		
			Sum		: out bit;
			Carry	: out bit
		);
	end component;
	
	signal A, B, Cin, Sum, Carry : bit;
	
begin
	Adder: Adder port map (A => A, B => B, Cin => Cin, Carry => Carry, Sum => Sum);
	process begin
		A <= '0';
		B <= '0';
		Cin <= '0';
		wait for 1 ns;
		
		A <= '0';
		B <= '0';
		Cin <= '1';
		wait for 1 ns;
		
		A <= '1';
		B <= '0';
		Cin <= '0';
		wait for 1 ns;
		
		A <= '0';
		B <= '1';
		Cin <= '0';
		wait for 1 ns;
		
		A <= '1';
		B <= '1';
		Cin <= '0';
		wait for 1 ns;
		
		A <= '0';
		B <= '1';
		Cin <= '1';
		wait for 1 ns;
		
		A <= '1';
		B <= '0';
		Cin <= '1';
		
		wait for 1 ns;
		
		A <= '1';
		B <= '1';
		Cin <= '1';
		wait for 1 ns;
		
		assert false report "end of test" severity note;
		wait;
	end process;
end behave;

