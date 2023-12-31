library IEEE;
use IEEE.std_logic_1164.all;

entity control_unit is
	port (
   instr: in std_logic_vector (15 downto 0);
	N   : in std_logic ;
	Z   : in std_logic ;
	t   : in std_logic_vector (7 downto 0);
	inc_PC: out std_logic ;
	sel : out std_logic ;
	carga_REM: out std_logic ;
	carga_RI: out std_logic ;
	carga_RDM: out std_logic ;
	carga_AC: out std_logic ;
	carga_NZ: out std_logic ;
	carga_PC: out std_logic ;
	s: out std_logic_vector (2 downto 0);
	goto_t0: out std_logic 	
	);
end entity;


architecture control_unit of control_unit is
constant iNOP: integer := 0;
constant iSTA : integer := 1;
constant iLDA: integer := 2;
constant iADD: integer := 3;
constant iOR: integer := 4;
constant iAND:  integer := 5;
constant iNOT: integer := 6;
constant iJMP : integer := 7;
constant iJN:   integer := 8;
constant iJZ:   integer := 9;

begin

carga_REM <= t(0) or  (t(3) and instr(iLDA)) or  (t(5) and instr(iLDA));				 

carga_RDM <= t(1) OR (t(4) and instr(iLDA)) or (t(6) and instr(iLDA)) ;
            		 
inc_PC <= t(1) or 
          t(2)or 
			(t(6) and instr(iLDA)) or
			(t(7) and instr(iLDA));  



carga_RI <= t(2);

sel <= (t(4) and instr(iLDA)) or (t(5) and instr(iLDA)) ;



carga_AC <= t(7) and instr(iLDA);
			
carga_NZ <= '0';
            

carga_PC <= t(2) or
				(t(7) and instr(iLDA));



goto_t0 <= '0';

s(0) <= '0';
s(1) <= '0';
s(2) <= '0';

		   

end control_unit;