library IEEE;
use IEEE.std_logic_1164.all;
entity gates2_top is 
port(
sw: in STD_LOGIC_VECTOR(1 DOWNTO 0);
ld: out STD_LOGIC_VECTOR(5 DOWNTO 0)
);
end gates2_top;
architecture vhdl2_top of gates2_top is
 component gates2
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
end component;

begin
UI: gates2 port map(
a => sw(0),
b => sw(1),
and_gate =>ld(5),
nand_gate =>ld(4),
nor_gate =>ld(3),
or_gate =>ld(2),
xnor_gate =>ld(1),
xor_gate =>ld(0)
);
end vhdl2_top;