//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Thu Jul 11 17:31:56 2019
//Host        : LAPTOP-KC0B14VN running 64-bit major release  (build 9200)
//Command     : generate_target sim_clk_wrapper.bd
//Design      : sim_clk_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sim_clk_wrapper
   (sim_clk_out,
    sim_rst_out);
  output sim_clk_out;
  output sim_rst_out;

  wire sim_clk_out;
  wire sim_rst_out;

  sim_clk sim_clk_i
       (.sim_clk_out(sim_clk_out),
        .sim_rst_out(sim_rst_out));
endmodule
