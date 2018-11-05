entity decoder_2to4_tb is
end decoder_2to4_tb;

architecture test of decoder_2to4_tb is

	component decoder_2to4 is 
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
		end component;
		
		signal A, B, C, W, X, Y, Z, T, U, P, O: bit;
		
	begin
		decoder_2to4 port map (A => A, B => B, C=>C, W => W, X => X, Y => Y, Z => Z, T=>T, U=>U, P=>P, O=>O);
		
		process begin
			A <= '0';
			B <= '0';
			C <= '0';
			wait for 1 ns;
			
			A <= '0';
			B <= '1';
			C <= '0';
			wait for 1 ns;

			A <= '1';
			B <= '0';
			C <= '0';
			wait for 1 ns;
			
			A <= '0';
			B <= '0';
			C <= '1';
			wait for 1 ns;

			A <= '1';
			B <= '1';
			C <= '0';
			wait for 1 ns;
			
			A <= '1';
			B <= '0';
			C <= '1';
			wait for 1 ns;
			
			A <= '0';
			B <= '1';
			C <= '1';
			wait for 1 ns;
			
			A <= '1';
			B <= '1';
			C <= '1';
			wait for 1 ns;
			assert false report "end of test";
			
			wait;
			
		end process;
		
end test;