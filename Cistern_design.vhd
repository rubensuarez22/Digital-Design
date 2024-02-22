
library IEEE;
use IEEE.std_logic_1164.all;

entity exer1 is
port(
  a: in std_logic;
  b: in std_logic;
  c: in std_logic;
  d: in std_logic;
  E: out std_logic;
  M: out std_logic;
  L: out std_logic);
end exer1;

architecture arch_exer1 of exer1 is
  begin
  
    M <=   (not a and d) ;
    E <=   ( (c and not d) or (a and not b));
    L <= 	(  (not a and not c and not d) or (b and not c and not d));
      

end arch_exer1;