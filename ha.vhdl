library ieee;
use ieee.std_logic_1164.all;
entity ha is
	port
	   (
		a: in std_ulogic;
		b: in std_ulogic;
		s: out std_ulogic;
		c: out std_ulogic
	    );
	end ha;

architecture behave of ha is 
begin
	s <= a xor b;
	c <= a and b;
end behave;

