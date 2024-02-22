
library IEEE;
use IEEE.std_logic_1164.all;

entity exer1 is
port(
  a: in std_logic;
  b: in std_logic;
  c: in std_logic;
  UP: out std_logic;
  CP: out std_logic;
  DP: out std_logic;
  M: out std_logic);
end exer1;

architecture arch_exer1 of exer1 is
  begin
  
    UP <=   (not a and not b and c) ;
    CP <=   ( not a and b and c);
    DP <= 	( a and b and c);
    M <= ( (b and not c) or (a and not b));
      

end arch_exer1;