library ieee;
use ieee.std_logic_1164.all;

entity andgate is
	port(
		a:in std_ulogic;
             b: in std_ulogic;
		c: out std_ulogic
	);
end andgate;

architecture behavior of andgate is
	begin

	c <= a and b;
	
end behavior;
