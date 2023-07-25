library IEEE;
use iEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity clkdiv is
	 port(
	 mclk: in std_logic;
	 clr: in std_logic;
	 clk1: out std_logic;
	 clk2: out std_logic;
	 clk3:out std_logic
	 );
end clkdiv;

architecture clkdiv of clkdiv is
signal q: std_logic_vector (25 downto 0);

begin

process (mclk, clr )

	begin
	if (clr = '1') then
	q <= "00"& X"000000";
	else 
		if mclk'event and mclk= '1' then 
		q <= q+1;
		end if;
	end if;
	end process;
		clk1<=q(23);
		clk2<= q(24);
		clk3<= q(25);
	
end clkdiv;