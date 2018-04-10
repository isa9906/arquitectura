library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multi is
	Port(
		I0,I1,I2,I3,I4,I5,I6,I7 : in BIT;
		S0,S1,S2 : in BIT;
		STRB: in BIT;
		C: out BIT
	);

end Multi;

architecture comportamiento of Multi is
begin 
	process (I0,I1,I2,I3,I4,I5,I6,I7,S0,S1,S2,STRB)
		VARIABLE Y: BIT;
		VARIABLE Z: BIT;
	begin
		if(STRB = '1') then
			if(S0 = '0' and S1 = '0' and S2 = '0') then
				Y := I0;
			elsif(S0 = '0' and S1 = '0' and S2 = '1') then
				Y := I1;
			elsif(S0 = '0' and S1 = '1' and S2 = '0') then
				Y := I2;
			elsif(S0 = '0' and S1 = '1' and S2 = '1') then
				Y := I3;
			elsif(S0 = '1' and S1 = '0' and S2 = '0') then
				Y := I4;
			elsif(S0 = '1' and S1 = '0' and S2 = '1') then
				Y := I5;
			elsif(S0 = '1' and S1 = '1' and S2 = '0') then
				Y := I6;
			elsif(S0 = '1' and S1 = '1' and S2 = '1') then
				Y := I7;
			end if;
		else  
			if(S0 = '0' and S1 = '0' and S2 = '0') then
				Z := I0;
			elsif(S0 = '0' and S1 = '0' and S2 = '1') then
				Z := I1;
			elsif(S0 = '0' and S1 = '1' and S2 = '0') then
				Z := I2;
			elsif(S0 = '0' and S1 = '1' and S2 = '1') then
				Z := I3;
			elsif(S0 = '1' and S1 = '0' and S2 = '0') then
				Z := I4;
			elsif(S0 = '1' and S1 = '0' and S2 = '1') then
				Z := I5;
			elsif(S0 = '1' and S1 = '1' and S2 = '0') then
				Z := I6;
			elsif(S0 = '1' and S1 = '1' and S2 = '1') then
				Z := I7;
			end if;
		end if;
		
		C <= Z or Y;
		
end process;
end comportamiento;