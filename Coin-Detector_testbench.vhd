-- Testbench 
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component exer1 is
port(
  a: in std_logic;
  b: in std_logic;
  c: in std_logic;
  UP: out std_logic;
  CP: out std_logic;
  DP: out std_logic;
  M: out std_logic);
end component;

signal a_in, b_in, c_in, UP_out, CP_out, DP_out, M_out: std_logic;

begin

  -- Connect DUT
  DUT: exer1 port map(a_in, b_in, c_in, UP_out, CP_out, DP_out, M_out);

  process
  begin
--1
    a_in <= '0';
    b_in <= '0';
    c_in <= '0';
  
    wait for 1 ns;
  --2
    a_in <= '0';
    b_in <= '0';
    c_in <= '1';
   
    wait for 1 ns;
--3
    a_in <= '0';
    b_in <= '1';
    c_in <= '0';
   
    wait for 1 ns;
--4
    a_in <= '0';
    b_in <= '1';
    c_in <= '1';

    wait for 1 ns;
--5 
    a_in <= '1';
    b_in <= '0';
    c_in <= '0';

    wait for 1 ns;
--6
    a_in <= '1';
    b_in <= '0';
    c_in <= '1';

    wait for 1 ns;
--7
    a_in <= '1';
    b_in <= '1';
    c_in <= '0';

    wait for 1 ns;
--8 
    a_in <= '1';
    b_in <= '1';
    c_in <= '1';
 
    wait for 1 ns;

    
    
    
    
    -- Clear inputs
    a_in <= '0';
    b_in <= '0';
    c_in <= '0';

    wait;
  end process;
end tb;
