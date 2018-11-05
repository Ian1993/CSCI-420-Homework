entity halfAdder_TB is
end halfAdder_TB;

architecture behave of halfAdder_TB is
	component halfAdder
		Port
		(
			A		: in bit;
			B		: in bit;
		
			Sum		: out bit;
			Carry	: out bit
		);
	end component;
	
	signal A, B, Sum, Carry : bit;
	
begin
	Half_adder: halfAdder port map (A => A, B => B, Carry => Carry, Sum => Sum);
	process begin
		A <= '0';
		B <= '0';
		wait for 1 ns;
		
		A <= '1';
		B <= '0';
		wait for 1 ns;
		
		A <= '0';
		B <= '1';
		wait for 1 ns;
		
		A <= '1';
		B <= '1';
		wait for 1 ns;
		
		assert false report "end of test" severity note;
		wait;
	end process;
end behave;

