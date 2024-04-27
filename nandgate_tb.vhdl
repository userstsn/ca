
library ieee;
use ieee.std_logic_1164.all;

entity nandgate_tb is
	---> no content							
end nandgate_tb;

architecture test of nandgate_tb is
	component nandgate
		port(
			a,b: in std_logic;
			c: out std_logic
		);
	end component;

	signal a,b,c: std_logic;

	begin

	nand_gate: nandgate port map(a=>a, b=>b, c=>c);	
	
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

		assert false report "Completed successfully";
		wait;
	end process;
end test;

