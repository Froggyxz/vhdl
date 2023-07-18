library IEEE;
use IEEE.std_logic_1164.all;
entity gates2 is 
port(
a:in STD_logic;
b: in STD_logic;
and_gate: out STD_LOGIC;
nand_gate:out STD_LOGIC;
nor_gate:out STD_LOGIC;
or_gate:out STD_LOGIC;
xnor_gate:out STD_LOGIC;
xor_gate:out STD_LOGIC
);
end gates2;

architecture gates2 of gates2 is
begin
and_gate<= b and a;
nand_gate<= not(b and a);
or_gate<= b or a;
nor_gate<= not(b or a);
xor_gate<= b xor a;
xnor_gate<= not (b xor a);

end gates2; 
