// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Oct  2 14:44:51 2025
// Host        : pae26lx running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/dmplab/MNGWYw26/umgn/mnghw/mnghw.gen/sources_1/bd/zedbmg_sys/ip/zedbmg_sys_measdif_0_0/zedbmg_sys_measdif_0_0_stub.v
// Design      : zedbmg_sys_measdif_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "measdif_v1_0,Vivado 2022.1" *)
module zedbmg_sys_measdif_0_0(zLED, zSwitch, zPushB, mCSn, mSCLK, mMOSI, mMISO, 
  mDRDYn, AD1csq, AD1Sclk, sdiAD_1, sdiAD_0, md_irq, s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, 
  s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
  s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, 
  s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, 
  s00_axi_rresp, s00_axi_rvalid, s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="zLED[7:0],zSwitch[7:0],zPushB[4:0],mCSn,mSCLK,mMOSI,mMISO,mDRDYn,AD1csq,AD1Sclk,sdiAD_1,sdiAD_0,md_irq,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  output [7:0]zLED;
  input [7:0]zSwitch;
  input [4:0]zPushB;
  output mCSn;
  output mSCLK;
  output mMOSI;
  input mMISO;
  input mDRDYn;
  output AD1csq;
  output AD1Sclk;
  input sdiAD_1;
  input sdiAD_0;
  output md_irq;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [4:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [4:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
