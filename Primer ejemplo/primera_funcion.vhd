-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
library IEEE;

use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity primera_funcion is
	port
	(
		-- Input ports
		x	: in  std_logic;
		y	: in  std_logic;
		z	: in  std_logic;

		-- Output ports
		f	: out std_logic
	);
end primera_funcion;

architecture comportamiento of primera_funcion is

	

begin

	f<= ((x and y) or (x and y and (not z)) or (x and (not y)));

end comportamiento;
