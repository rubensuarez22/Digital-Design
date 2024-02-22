library IEEE;
use IEEE.std_logic_1164.all;

entity comparator is
port(
  a: in std_logic;
  b: in std_logic;
  q: out std_logic;
  x: out std_logic;
  z: out std_logic);
end comparator;

architecture arch_comp of comparator is
  begin
    q <= a and not b;
    x <= not a and b;
    z <= a xnor b;
end arch_comp;