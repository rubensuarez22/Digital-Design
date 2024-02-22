-- Simple AND gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity and_gate is
port(
  a: in std_logic;
  b: in std_logic;
  c: in std_logic;
  q: out std_logic);
end and_gate;

architecture arch_and of and_gate is
  begin
    q <= (not a and c)or(a and b);
end arch_and;
