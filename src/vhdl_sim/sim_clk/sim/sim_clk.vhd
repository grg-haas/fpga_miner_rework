--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Jul 11 16:58:20 2019
--Host        : LAPTOP-KC0B14VN running 64-bit major release  (build 9200)
--Command     : generate_target sim_clk.bd
--Design      : sim_clk
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sim_clk is
  port (
    sim_clk_out : out STD_LOGIC;
    sim_rst_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of sim_clk : entity is "sim_clk,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sim_clk,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of sim_clk : entity is "sim_clk.hwdef";
end sim_clk;

architecture STRUCTURE of sim_clk is
  component sim_clk_sim_clk_gen_0_0 is
  port (
    clk : out STD_LOGIC;
    sync_rst : out STD_LOGIC
  );
  end component sim_clk_sim_clk_gen_0_0;
  signal sim_clk_gen_0_clk : STD_LOGIC;
  signal sim_clk_gen_0_sync_rst : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sim_clk_out : signal is "xilinx.com:signal:clock:1.0 CLK.SIM_CLK_OUT CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sim_clk_out : signal is "XIL_INTERFACENAME CLK.SIM_CLK_OUT, CLK_DOMAIN sim_clk_sim_clk_gen_0_0_clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of sim_rst_out : signal is "xilinx.com:signal:reset:1.0 RST.SIM_RST_OUT RST";
  attribute X_INTERFACE_PARAMETER of sim_rst_out : signal is "XIL_INTERFACENAME RST.SIM_RST_OUT, POLARITY ACTIVE_LOW";
begin
  sim_clk_out <= sim_clk_gen_0_clk;
  sim_rst_out <= sim_clk_gen_0_sync_rst;
sim_clk_gen_0: component sim_clk_sim_clk_gen_0_0
     port map (
      clk => sim_clk_gen_0_clk,
      sync_rst => sim_clk_gen_0_sync_rst
    );
end STRUCTURE;
