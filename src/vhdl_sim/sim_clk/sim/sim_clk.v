//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Jul 11 17:31:56 2019
//Host        : LAPTOP-KC0B14VN running 64-bit major release  (build 9200)
//Command     : generate_target sim_clk.bd
//Design      : sim_clk
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "sim_clk,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sim_clk,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "sim_clk.hwdef" *) 
module sim_clk
   (sim_clk_out,
    sim_rst_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SIM_CLK_OUT CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SIM_CLK_OUT, CLK_DOMAIN sim_clk_sim_clk_gen_0_0_clk, FREQ_HZ 100000000, PHASE 0.000" *) output sim_clk_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SIM_RST_OUT RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SIM_RST_OUT, POLARITY ACTIVE_LOW" *) output sim_rst_out;

  wire sim_clk_gen_0_clk;
  wire sim_clk_gen_0_sync_rst;

  assign sim_clk_out = sim_clk_gen_0_clk;
  assign sim_rst_out = sim_clk_gen_0_sync_rst;
  sim_clk_sim_clk_gen_0_0 sim_clk_gen_0
       (.clk(sim_clk_gen_0_clk),
        .sync_rst(sim_clk_gen_0_sync_rst));
endmodule
