library ieee;
use ieee.std_logic_1164.all;

entity notgate_tb is
	---> no content							
end notgate_tb;

architecture test of notgate_tb is
	component notgate
		port(
			a: in std_logic;
			b: out std_logic
		);
	end component;

	signal a, b: std_logic;

	begin

	not_gate: notgate port map(a=>a, b=>b);	---> component instantiation
	
	process begin

		a <= '0';
		wait for 1 ns;

		a <= '1';
		wait for 1 ns;

		assert false report "Successfully Completed !";
		wait;
	end process;
end test;

