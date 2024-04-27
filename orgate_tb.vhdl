library ieee;
use ieee.std_logic_1164.all;

entity orgate_tb is
	---> no content							
end orgate_tb;

architecture test of orgate_tb is
	component orgate
		port(
			a,b: in std_logic;
			c: out std_logic
		);
	end component;

	signal a,b,c: std_logic;

	begin

	or_gate: orgate port map(a=>a, b=>b, c=>c);
	
	process begin

		a <= '0';
		b <= '0';
		wait for 1 ns;

		a <= '0';
		b <= '1';
		wait for 1 ns;

		a <= '1';
		b <= '0';
		wait for 1 ns;

		a <= '1';
		b <= '1';
		wait for 1 ns;

		assert false report "Successfully Completed !";
		wait;
	end process;
end test;

