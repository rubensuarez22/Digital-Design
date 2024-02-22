-- Testbench for OR gate
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component and_gate is
port(
  a: in std_logic;
  b: in std_logic;
  q: out std_logic;
  z: out std_logic);
end component;

signal a_in, b_in, q_out, z_out: std_logic;

begin

  -- Connect DUT
  DUT: and_gate port map(a_in, b_in, q_out, z_out);

  process
  begin
    a_in <= '0';
    b_in <= '0';
    wait for 1 ns;
  
    a_in <= '0';
    b_in <= '1';
    wait for 1 ns;

    a_in <= '1';
    b_in <= '0';
    wait for 1 ns;

    a_in <= '1';
    b_in <= '1';
    wait for 1 ns;
    
    -- Clear inputs
    a_in <= '0';
    b_in <= '0';

    wait;
  end process;
end tb;
