--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Jul 11 16:58:20 2019
--Host        : LAPTOP-KC0B14VN running 64-bit major release  (build 9200)
--Command     : generate_target sim_clk_wrapper.bd
--Design      : sim_clk_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sim_clk_wrapper is
  port (
    sim_clk_out : out STD_LOGIC;
    sim_rst_out : out STD_LOGIC
  );
end sim_clk_wrapper;

architecture STRUCTURE of sim_clk_wrapper is
  component sim_clk is
  port (
    sim_clk_out : out STD_LOGIC;
    sim_rst_out : out STD_LOGIC
  );
  end component sim_clk;
begin
sim_clk_i: component sim_clk
     port map (
      sim_clk_out => sim_clk_out,
      sim_rst_out => sim_rst_out
    );
end STRUCTURE;
