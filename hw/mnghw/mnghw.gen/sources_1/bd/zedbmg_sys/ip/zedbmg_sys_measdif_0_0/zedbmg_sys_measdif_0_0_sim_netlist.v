// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Oct  2 14:44:51 2025
// Host        : pae26lx running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/dmplab/MNGWYw26/umgn/mnghw/mnghw.gen/sources_1/bd/zedbmg_sys/ip/zedbmg_sys_measdif_0_0/zedbmg_sys_measdif_0_0_sim_netlist.v
// Design      : zedbmg_sys_measdif_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zedbmg_sys_measdif_0_0,measdif_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "measdif_v1_0,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module zedbmg_sys_measdif_0_0
   (zLED,
    zSwitch,
    zPushB,
    mCSn,
    mSCLK,
    mMOSI,
    mMISO,
    mDRDYn,
    AD1csq,
    AD1Sclk,
    sdiAD_1,
    sdiAD_0,
    md_irq,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
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
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 md_irq INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME md_irq, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1" *) output md_irq;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zedbmg_sys_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zedbmg_sys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;

  wire \<const0> ;
  wire AD1Sclk;
  wire AD1csq;
  wire mCSn;
  wire mDRDYn;
  wire mMISO;
  wire mMOSI;
  wire mSCLK;
  wire md_irq;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sdiAD_0;
  wire sdiAD_1;
  wire [7:0]zLED;
  wire [4:0]zPushB;
  wire [7:0]zSwitch;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  zedbmg_sys_measdif_0_0_measdif_v1_0 U0
       (.AD1Sclk(AD1Sclk),
        .AD1csq(AD1csq),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .mCSn(mCSn),
        .mDRDYn(mDRDYn),
        .mMISO(mMISO),
        .mMOSI(mMOSI),
        .mSCLK(mSCLK),
        .md_irq(md_irq),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sdiAD_0(sdiAD_0),
        .sdiAD_1(sdiAD_1),
        .zLED(zLED),
        .zPushB(zPushB),
        .zSwitch(zSwitch));
endmodule

(* ORIG_REF_NAME = "adc2lane" *) 
module zedbmg_sys_measdif_0_0_adc2lane
   (AD1csq,
    AD1Sclk,
    D,
    \slv_reg7_reg[12] ,
    \slv_reg7_reg[11] ,
    \slv_reg7_reg[10] ,
    \slv_reg7_reg[9] ,
    \slv_reg7_reg[8] ,
    \slv_reg7_reg[7] ,
    \slv_reg7_reg[6] ,
    \slv_reg7_reg[5] ,
    \slv_reg7_reg[4] ,
    \slv_reg7_reg[3] ,
    \slv_reg7_reg[2] ,
    \slv_reg7_reg[1] ,
    \slv_reg7_reg[0] ,
    s00_axi_aclk,
    \FSM_sequential_state_reg[2]_0 ,
    s00_axi_aresetn,
    \FSM_onehot_ssl_state_reg[2]_0 ,
    sel0,
    Q,
    \axi_rdata_reg[31] ,
    \axi_rdata_reg[31]_0 ,
    \axi_rdata_reg[15] ,
    SR,
    sdiAD_0,
    sdiAD_1);
  output AD1csq;
  output AD1Sclk;
  output [18:0]D;
  output \slv_reg7_reg[12] ;
  output \slv_reg7_reg[11] ;
  output \slv_reg7_reg[10] ;
  output \slv_reg7_reg[9] ;
  output \slv_reg7_reg[8] ;
  output \slv_reg7_reg[7] ;
  output \slv_reg7_reg[6] ;
  output \slv_reg7_reg[5] ;
  output \slv_reg7_reg[4] ;
  output \slv_reg7_reg[3] ;
  output \slv_reg7_reg[2] ;
  output \slv_reg7_reg[1] ;
  output \slv_reg7_reg[0] ;
  input s00_axi_aclk;
  input \FSM_sequential_state_reg[2]_0 ;
  input s00_axi_aresetn;
  input \FSM_onehot_ssl_state_reg[2]_0 ;
  input [2:0]sel0;
  input [18:0]Q;
  input [31:0]\axi_rdata_reg[31] ;
  input [31:0]\axi_rdata_reg[31]_0 ;
  input [2:0]\axi_rdata_reg[15] ;
  input [0:0]SR;
  input sdiAD_0;
  input sdiAD_1;

  wire AD1Sclk;
  wire AD1csq;
  wire [18:0]D;
  wire \FSM_onehot_ssl_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_ssl_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_ssl_state[2]_i_1__0_n_0 ;
  wire \FSM_onehot_ssl_state[2]_i_2__0_n_0 ;
  wire \FSM_onehot_ssl_state_reg[2]_0 ;
  wire \FSM_onehot_ssl_state_reg_n_0_[2] ;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state[2]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [18:0]Q;
  wire [0:0]SR;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire [2:0]\axi_rdata_reg[15] ;
  wire [31:0]\axi_rdata_reg[31] ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire count;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_3__0_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire [31:0]data5;
  wire done_adc;
  wire rd_buf_0;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sclk_i_1__0_n_0;
  wire scsq_i_1__0_n_0;
  wire sdiAD_0;
  wire sdiAD_1;
  wire [2:0]sel0;
  wire \slv_reg7_reg[0] ;
  wire \slv_reg7_reg[10] ;
  wire \slv_reg7_reg[11] ;
  wire \slv_reg7_reg[12] ;
  wire \slv_reg7_reg[1] ;
  wire \slv_reg7_reg[2] ;
  wire \slv_reg7_reg[3] ;
  wire \slv_reg7_reg[4] ;
  wire \slv_reg7_reg[5] ;
  wire \slv_reg7_reg[6] ;
  wire \slv_reg7_reg[7] ;
  wire \slv_reg7_reg[8] ;
  wire \slv_reg7_reg[9] ;
  wire start_i;
  wire [2:0]state;

  LUT4 #(
    .INIT(16'hFE10)) 
    \FSM_onehot_ssl_state[0]_i_1__0 
       (.I0(state[1]),
        .I1(\FSM_onehot_ssl_state[2]_i_2__0_n_0 ),
        .I2(\FSM_onehot_ssl_state_reg_n_0_[2] ),
        .I3(done_adc),
        .O(\FSM_onehot_ssl_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \FSM_onehot_ssl_state[1]_i_1__0 
       (.I0(state[1]),
        .I1(\FSM_onehot_ssl_state[2]_i_2__0_n_0 ),
        .I2(done_adc),
        .I3(start_i),
        .O(\FSM_onehot_ssl_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFE10)) 
    \FSM_onehot_ssl_state[2]_i_1__0 
       (.I0(state[1]),
        .I1(\FSM_onehot_ssl_state[2]_i_2__0_n_0 ),
        .I2(start_i),
        .I3(\FSM_onehot_ssl_state_reg_n_0_[2] ),
        .O(\FSM_onehot_ssl_state[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF07FF07)) 
    \FSM_onehot_ssl_state[2]_i_2__0 
       (.I0(done_adc),
        .I1(\FSM_onehot_ssl_state_reg[2]_0 ),
        .I2(\FSM_onehot_ssl_state_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(start_i),
        .I5(state[0]),
        .O(\FSM_onehot_ssl_state[2]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "ssl_idle:001,ssl_start:010,ssl_run:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_ssl_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_ssl_state[0]_i_1__0_n_0 ),
        .Q(done_adc),
        .S(SR));
  (* FSM_ENCODED_STATES = "ssl_idle:001,ssl_start:010,ssl_run:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ssl_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_ssl_state[1]_i_1__0_n_0 ),
        .Q(start_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "ssl_idle:001,ssl_start:010,ssl_run:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ssl_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_ssl_state[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_ssl_state_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00FF0E00)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(start_i),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01FFAA00)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(state[0]),
        .I1(\FSM_sequential_state[2]_i_2__0_n_0 ),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00FFE000)) 
    \FSM_sequential_state[2]_i_1__0 
       (.I0(\FSM_sequential_state[2]_i_2__0_n_0 ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_2__0 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\FSM_sequential_state[2]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "sidle:000,sclk_hi:010,sstop_hi:100,sstartx:001,sclk_lo:101,sstop_lo:011" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sidle:000,sclk_hi:010,sstop_hi:100,sstartx:001,sclk_lo:101,sstop_lo:011" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1__0_n_0 ),
        .Q(state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sidle:000,sclk_hi:010,sstop_hi:100,sstartx:001,sclk_lo:101,sstop_lo:011" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1__0_n_0 ),
        .Q(state[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(\axi_rdata_reg[31] [0]),
        .I1(\axi_rdata_reg[31]_0 [0]),
        .I2(sel0[1]),
        .I3(data5[0]),
        .I4(sel0[0]),
        .I5(done_adc),
        .O(\slv_reg7_reg[0] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(\axi_rdata_reg[31] [10]),
        .I1(\axi_rdata_reg[31]_0 [10]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[10]),
        .O(\slv_reg7_reg[10] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(\axi_rdata_reg[31] [11]),
        .I1(\axi_rdata_reg[31]_0 [11]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[11]),
        .O(\slv_reg7_reg[11] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(\axi_rdata_reg[31] [12]),
        .I1(\axi_rdata_reg[31]_0 [12]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[12]),
        .O(\slv_reg7_reg[12] ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[15] [0]),
        .I3(sel0[0]),
        .I4(Q[0]),
        .I5(sel0[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(\axi_rdata_reg[31] [13]),
        .I1(\axi_rdata_reg[31]_0 [13]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[15] [1]),
        .I3(sel0[0]),
        .I4(Q[1]),
        .I5(sel0[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(\axi_rdata_reg[31] [14]),
        .I1(\axi_rdata_reg[31]_0 [14]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B888888888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(\axi_rdata_reg[15] [2]),
        .I3(sel0[0]),
        .I4(Q[2]),
        .I5(sel0[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(\axi_rdata_reg[31] [15]),
        .I1(\axi_rdata_reg[31]_0 [15]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(\axi_rdata_reg[31] [16]),
        .I1(\axi_rdata_reg[31]_0 [16]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(\axi_rdata_reg[31] [17]),
        .I1(\axi_rdata_reg[31]_0 [17]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(\axi_rdata_reg[31] [18]),
        .I1(\axi_rdata_reg[31]_0 [18]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(\axi_rdata_reg[31] [19]),
        .I1(\axi_rdata_reg[31]_0 [19]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(\axi_rdata_reg[31] [1]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[1]),
        .O(\slv_reg7_reg[1] ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(\axi_rdata_reg[31] [20]),
        .I1(\axi_rdata_reg[31]_0 [20]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(\axi_rdata_reg[31] [21]),
        .I1(\axi_rdata_reg[31]_0 [21]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(\axi_rdata_reg[31] [22]),
        .I1(\axi_rdata_reg[31]_0 [22]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(\axi_rdata_reg[31] [23]),
        .I1(\axi_rdata_reg[31]_0 [23]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(Q[11]),
        .I4(sel0[0]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(\axi_rdata_reg[31] [24]),
        .I1(\axi_rdata_reg[31]_0 [24]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(Q[12]),
        .I4(sel0[0]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(\axi_rdata_reg[31] [25]),
        .I1(\axi_rdata_reg[31]_0 [25]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(Q[13]),
        .I4(sel0[0]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(\axi_rdata_reg[31] [26]),
        .I1(\axi_rdata_reg[31]_0 [26]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(Q[14]),
        .I4(sel0[0]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(\axi_rdata_reg[31] [27]),
        .I1(\axi_rdata_reg[31]_0 [27]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(Q[15]),
        .I4(sel0[0]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(\axi_rdata_reg[31] [28]),
        .I1(\axi_rdata_reg[31]_0 [28]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(Q[16]),
        .I4(sel0[0]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(\axi_rdata_reg[31] [29]),
        .I1(\axi_rdata_reg[31]_0 [29]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(\axi_rdata_reg[31] [2]),
        .I1(\axi_rdata_reg[31]_0 [2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[2]),
        .O(\slv_reg7_reg[2] ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(\axi_rdata_reg[31] [30]),
        .I1(\axi_rdata_reg[31]_0 [30]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8888888)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(Q[18]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(\axi_rdata_reg[31] [31]),
        .I1(\axi_rdata_reg[31]_0 [31]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(\axi_rdata_reg[31] [3]),
        .I1(\axi_rdata_reg[31]_0 [3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[3]),
        .O(\slv_reg7_reg[3] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(\axi_rdata_reg[31] [4]),
        .I1(\axi_rdata_reg[31]_0 [4]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[4]),
        .O(\slv_reg7_reg[4] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(\axi_rdata_reg[31] [5]),
        .I1(\axi_rdata_reg[31]_0 [5]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[5]),
        .O(\slv_reg7_reg[5] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(\axi_rdata_reg[31] [6]),
        .I1(\axi_rdata_reg[31]_0 [6]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[6]),
        .O(\slv_reg7_reg[6] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(\axi_rdata_reg[31] [7]),
        .I1(\axi_rdata_reg[31]_0 [7]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[7]),
        .O(\slv_reg7_reg[7] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(\axi_rdata_reg[31] [8]),
        .I1(\axi_rdata_reg[31]_0 [8]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[8]),
        .O(\slv_reg7_reg[8] ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(\axi_rdata_reg[31] [9]),
        .I1(\axi_rdata_reg[31]_0 [9]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(data5[9]),
        .O(\slv_reg7_reg[9] ));
  LUT3 #(
    .INIT(8'h4F)) 
    \count[0]_i_1__0 
       (.I0(state[1]),
        .I1(start_i),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \count[1]_i_1 
       (.I0(\count[3]_i_3__0_n_0 ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFEAB)) 
    \count[2]_i_1 
       (.I0(\count[3]_i_3__0_n_0 ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0030002200000000)) 
    \count[3]_i_1__0 
       (.I0(start_i),
        .I1(state[0]),
        .I2(\FSM_sequential_state[2]_i_2__0_n_0 ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(\FSM_sequential_state_reg[2]_0 ),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAB)) 
    \count[3]_i_2 
       (.I0(\count[3]_i_3__0_n_0 ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[3] ),
        .O(\count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \count[3]_i_3__0 
       (.I0(start_i),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\count[3]_i_3__0_n_0 ));
  FDSE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(count),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .S(SR));
  FDSE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(count),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .S(SR));
  FDSE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .S(SR));
  FDSE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(count),
        .D(\count[3]_i_2_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .S(SR));
  LUT5 #(
    .INIT(32'h00000080)) 
    \rd_buf_0[15]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_0 ),
        .I1(s00_axi_aresetn),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(rd_buf_0));
  FDRE \rd_buf_0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(sdiAD_0),
        .Q(data5[0]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[9]),
        .Q(data5[10]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[10]),
        .Q(data5[11]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[11]),
        .Q(data5[12]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[12]),
        .Q(data5[13]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[13]),
        .Q(data5[14]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[14]),
        .Q(data5[15]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[0]),
        .Q(data5[1]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[1]),
        .Q(data5[2]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[2]),
        .Q(data5[3]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[3]),
        .Q(data5[4]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[4]),
        .Q(data5[5]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[5]),
        .Q(data5[6]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[6]),
        .Q(data5[7]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[7]),
        .Q(data5[8]),
        .R(1'b0));
  FDRE \rd_buf_0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[8]),
        .Q(data5[9]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(sdiAD_1),
        .Q(data5[16]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[25]),
        .Q(data5[26]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[26]),
        .Q(data5[27]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[27]),
        .Q(data5[28]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[28]),
        .Q(data5[29]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[29]),
        .Q(data5[30]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[30]),
        .Q(data5[31]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[16]),
        .Q(data5[17]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[17]),
        .Q(data5[18]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[18]),
        .Q(data5[19]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[19]),
        .Q(data5[20]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[20]),
        .Q(data5[21]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[21]),
        .Q(data5[22]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[22]),
        .Q(data5[23]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[23]),
        .Q(data5[24]),
        .R(1'b0));
  FDRE \rd_buf_1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(data5[24]),
        .Q(data5[25]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2FFFFFFF2F000000)) 
    sclk_i_1__0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(s00_axi_aresetn),
        .I4(\FSM_sequential_state_reg[2]_0 ),
        .I5(AD1Sclk),
        .O(sclk_i_1__0_n_0));
  FDRE sclk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_i_1__0_n_0),
        .Q(AD1Sclk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h1FFF1000)) 
    scsq_i_1__0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(s00_axi_aresetn),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(AD1csq),
        .O(scsq_i_1__0_n_0));
  FDRE scsq_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(scsq_i_1__0_n_0),
        .Q(AD1csq),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "measdif_v1_0" *) 
module zedbmg_sys_measdif_0_0_measdif_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    zLED,
    S_AXI_ARREADY,
    s00_axi_rdata,
    md_irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    mCSn,
    mSCLK,
    mMOSI,
    AD1Sclk,
    AD1csq,
    s00_axi_wstrb,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    mDRDYn,
    mMISO,
    sdiAD_0,
    sdiAD_1,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    zPushB,
    zSwitch,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]zLED;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output md_irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output mCSn;
  output mSCLK;
  output mMOSI;
  output AD1Sclk;
  output AD1csq;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input mDRDYn;
  input mMISO;
  input sdiAD_0;
  input sdiAD_1;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [4:0]zPushB;
  input [7:0]zSwitch;
  input s00_axi_bready;
  input s00_axi_rready;

  wire AD1Sclk;
  wire AD1csq;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire mCSn;
  wire mDRDYn;
  wire mMISO;
  wire mMOSI;
  wire mSCLK;
  wire md_irq;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sdiAD_0;
  wire sdiAD_1;
  wire [7:0]zLED;
  wire [4:0]zPushB;
  wire [7:0]zSwitch;

  zedbmg_sys_measdif_0_0_measdif_v1_0_S00_AXI measdif_v1_0_S00_AXI_inst
       (.AD1Sclk(AD1Sclk),
        .AD1csq(AD1csq),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .mCSn(mCSn),
        .mDRDYn(mDRDYn),
        .mMISO(mMISO),
        .mMOSI(mMOSI),
        .mSCLK(mSCLK),
        .md_irq(md_irq),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sdiAD_0(sdiAD_0),
        .sdiAD_1(sdiAD_1),
        .zLED(zLED),
        .zPushB(zPushB),
        .zSwitch(zSwitch));
endmodule

(* ORIG_REF_NAME = "measdif_v1_0_S00_AXI" *) 
module zedbmg_sys_measdif_0_0_measdif_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    zLED,
    S_AXI_ARREADY,
    s00_axi_rdata,
    md_irq,
    s00_axi_rvalid,
    s00_axi_bvalid,
    mCSn,
    mSCLK,
    mMOSI,
    AD1Sclk,
    AD1csq,
    s00_axi_wstrb,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    mDRDYn,
    mMISO,
    sdiAD_0,
    sdiAD_1,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_aresetn,
    zPushB,
    zSwitch,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]zLED;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output md_irq;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output mCSn;
  output mSCLK;
  output mMOSI;
  output AD1Sclk;
  output AD1csq;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input mDRDYn;
  input mMISO;
  input sdiAD_0;
  input sdiAD_1;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input [4:0]zPushB;
  input [7:0]zSwitch;
  input s00_axi_bready;
  input s00_axi_rready;

  wire AD1Sclk;
  wire AD1csq;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire adcRX_n_21;
  wire adcRX_n_22;
  wire adcRX_n_23;
  wire adcRX_n_24;
  wire adcRX_n_25;
  wire adcRX_n_26;
  wire adcRX_n_27;
  wire adcRX_n_28;
  wire adcRX_n_29;
  wire adcRX_n_30;
  wire adcRX_n_31;
  wire adcRX_n_32;
  wire adcRX_n_33;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire \clkdiv_p.cnt[0]_i_1_n_0 ;
  wire \clkdiv_p.cnt[1]_i_1_n_0 ;
  wire \clkdiv_p.cnt[2]_i_1_n_0 ;
  wire [2:0]cnt;
  wire [23:1]data1;
  wire [23:0]iTimer;
  wire iTimer0_carry__0_i_1_n_0;
  wire iTimer0_carry__0_i_2_n_0;
  wire iTimer0_carry__0_i_3_n_0;
  wire iTimer0_carry__0_i_4_n_0;
  wire iTimer0_carry__0_n_0;
  wire iTimer0_carry__0_n_1;
  wire iTimer0_carry__0_n_2;
  wire iTimer0_carry__0_n_3;
  wire iTimer0_carry__1_i_1_n_0;
  wire iTimer0_carry__1_i_2_n_0;
  wire iTimer0_carry__1_i_3_n_0;
  wire iTimer0_carry__1_i_4_n_0;
  wire iTimer0_carry__1_n_0;
  wire iTimer0_carry__1_n_1;
  wire iTimer0_carry__1_n_2;
  wire iTimer0_carry__1_n_3;
  wire iTimer0_carry__2_i_1_n_0;
  wire iTimer0_carry__2_i_2_n_0;
  wire iTimer0_carry__2_i_3_n_0;
  wire iTimer0_carry__2_i_4_n_0;
  wire iTimer0_carry__2_n_0;
  wire iTimer0_carry__2_n_1;
  wire iTimer0_carry__2_n_2;
  wire iTimer0_carry__2_n_3;
  wire iTimer0_carry__3_i_1_n_0;
  wire iTimer0_carry__3_i_2_n_0;
  wire iTimer0_carry__3_i_3_n_0;
  wire iTimer0_carry__3_i_4_n_0;
  wire iTimer0_carry__3_n_0;
  wire iTimer0_carry__3_n_1;
  wire iTimer0_carry__3_n_2;
  wire iTimer0_carry__3_n_3;
  wire iTimer0_carry__4_i_1_n_0;
  wire iTimer0_carry__4_i_2_n_0;
  wire iTimer0_carry__4_i_3_n_0;
  wire iTimer0_carry__4_n_2;
  wire iTimer0_carry__4_n_3;
  wire iTimer0_carry_i_1_n_0;
  wire iTimer0_carry_i_2_n_0;
  wire iTimer0_carry_i_3_n_0;
  wire iTimer0_carry_i_4_n_0;
  wire iTimer0_carry_n_0;
  wire iTimer0_carry_n_1;
  wire iTimer0_carry_n_2;
  wire iTimer0_carry_n_3;
  wire \iTimer[23]_i_1_n_0 ;
  wire [23:0]iTimer_0;
  wire irq_pulse;
  wire irq_pulse_1;
  wire irq_pulse_i_2_n_0;
  wire irq_pulse_i_3_n_0;
  wire irq_pulse_i_4_n_0;
  wire irq_pulse_i_5_n_0;
  wire irq_pulse_i_6_n_0;
  wire irq_pulse_i_7_n_0;
  wire mCSn;
  wire mDRDYn;
  wire mMISO;
  wire mMOSI;
  wire mSCLK;
  wire max_drdyn;
  wire max_pmod_n_3;
  wire max_start_i_1_n_0;
  wire md_irq;
  wire [2:0]p_0_in;
  wire [7:7]p_1_in;
  wire [15:13]rd_buf;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sdiAD_0;
  wire sdiAD_1;
  wire [2:0]sel0;
  wire \slv_reg0[7]_i_3_n_0 ;
  wire [15:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [30:30]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire \slv_reg3_reg_n_0_[10] ;
  wire \slv_reg3_reg_n_0_[11] ;
  wire \slv_reg3_reg_n_0_[12] ;
  wire \slv_reg3_reg_n_0_[13] ;
  wire \slv_reg3_reg_n_0_[14] ;
  wire \slv_reg3_reg_n_0_[15] ;
  wire \slv_reg3_reg_n_0_[16] ;
  wire \slv_reg3_reg_n_0_[17] ;
  wire \slv_reg3_reg_n_0_[18] ;
  wire \slv_reg3_reg_n_0_[19] ;
  wire \slv_reg3_reg_n_0_[1] ;
  wire \slv_reg3_reg_n_0_[20] ;
  wire \slv_reg3_reg_n_0_[21] ;
  wire \slv_reg3_reg_n_0_[22] ;
  wire \slv_reg3_reg_n_0_[23] ;
  wire \slv_reg3_reg_n_0_[24] ;
  wire \slv_reg3_reg_n_0_[25] ;
  wire \slv_reg3_reg_n_0_[26] ;
  wire \slv_reg3_reg_n_0_[27] ;
  wire \slv_reg3_reg_n_0_[28] ;
  wire \slv_reg3_reg_n_0_[29] ;
  wire \slv_reg3_reg_n_0_[2] ;
  wire \slv_reg3_reg_n_0_[31] ;
  wire \slv_reg3_reg_n_0_[3] ;
  wire \slv_reg3_reg_n_0_[4] ;
  wire \slv_reg3_reg_n_0_[5] ;
  wire \slv_reg3_reg_n_0_[6] ;
  wire \slv_reg3_reg_n_0_[7] ;
  wire \slv_reg3_reg_n_0_[8] ;
  wire \slv_reg3_reg_n_0_[9] ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire spi_transmp_i_1_n_0;
  wire spi_transmp_i_2_n_0;
  wire spi_transmp_reg_n_0;
  wire \spi_trr.trcnt[0]_i_1_n_0 ;
  wire \spi_trr.trcnt[1]_i_1_n_0 ;
  wire \spi_trr.trcnt[2]_i_1_n_0 ;
  wire \spi_trr.trcnt[3]_i_1_n_0 ;
  wire \spi_trr.trcnt[4]_i_1_n_0 ;
  wire spiclk_p_i_1_n_0;
  wire spiclk_p_reg_n_0;
  wire start;
  wire start_adc_i_1_n_0;
  wire start_adc_reg_n_0;
  wire [4:0]trcnt;
  wire xirq_i_1_n_0;
  wire [7:0]zLED;
  wire [4:0]zPushB;
  wire [7:0]zSwitch;
  wire [3:2]NLW_iTimer0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_iTimer0_carry__4_O_UNCONNECTED;

  zedbmg_sys_measdif_0_0_adc2lane adcRX
       (.AD1Sclk(AD1Sclk),
        .AD1csq(AD1csq),
        .D(reg_data_out[31:13]),
        .\FSM_onehot_ssl_state_reg[2]_0 (start_adc_reg_n_0),
        .\FSM_sequential_state_reg[2]_0 (spiclk_p_reg_n_0),
        .Q({\slv_reg3_reg_n_0_[31] ,slv_reg3,\slv_reg3_reg_n_0_[29] ,\slv_reg3_reg_n_0_[28] ,\slv_reg3_reg_n_0_[27] ,\slv_reg3_reg_n_0_[26] ,\slv_reg3_reg_n_0_[25] ,\slv_reg3_reg_n_0_[24] ,\slv_reg3_reg_n_0_[23] ,\slv_reg3_reg_n_0_[22] ,\slv_reg3_reg_n_0_[21] ,\slv_reg3_reg_n_0_[20] ,\slv_reg3_reg_n_0_[19] ,\slv_reg3_reg_n_0_[18] ,\slv_reg3_reg_n_0_[17] ,\slv_reg3_reg_n_0_[16] ,\slv_reg3_reg_n_0_[15] ,\slv_reg3_reg_n_0_[14] ,\slv_reg3_reg_n_0_[13] }),
        .SR(max_pmod_n_3),
        .\axi_rdata_reg[15] (rd_buf),
        .\axi_rdata_reg[31] (slv_reg7),
        .\axi_rdata_reg[31]_0 (slv_reg6),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sdiAD_0(sdiAD_0),
        .sdiAD_1(sdiAD_1),
        .sel0(sel0),
        .\slv_reg7_reg[0] (adcRX_n_33),
        .\slv_reg7_reg[10] (adcRX_n_23),
        .\slv_reg7_reg[11] (adcRX_n_22),
        .\slv_reg7_reg[12] (adcRX_n_21),
        .\slv_reg7_reg[1] (adcRX_n_32),
        .\slv_reg7_reg[2] (adcRX_n_31),
        .\slv_reg7_reg[3] (adcRX_n_30),
        .\slv_reg7_reg[4] (adcRX_n_29),
        .\slv_reg7_reg[5] (adcRX_n_28),
        .\slv_reg7_reg[6] (adcRX_n_27),
        .\slv_reg7_reg[7] (adcRX_n_26),
        .\slv_reg7_reg[8] (adcRX_n_25),
        .\slv_reg7_reg[9] (adcRX_n_24));
  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    aw_en_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .I4(aw_en_reg_n_0),
        .I5(S_AXI_AWREADY),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(max_pmod_n_3));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .S(max_pmod_n_3));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .S(max_pmod_n_3));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .S(max_pmod_n_3));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(max_pmod_n_3));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(max_pmod_n_3));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(max_pmod_n_3));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(max_pmod_n_3));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(max_pmod_n_3));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(max_pmod_n_3));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(max_pmod_n_3));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(max_pmod_n_3));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(max_pmod_n_3));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(max_pmod_n_3));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \clkdiv_p.cnt[0]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .O(\clkdiv_p.cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hC2)) 
    \clkdiv_p.cnt[1]_i_1 
       (.I0(cnt[2]),
        .I1(cnt[0]),
        .I2(cnt[1]),
        .O(\clkdiv_p.cnt[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \clkdiv_p.cnt[2]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt[2]),
        .O(\clkdiv_p.cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_p.cnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clkdiv_p.cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(max_pmod_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \clkdiv_p.cnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clkdiv_p.cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(max_pmod_n_3));
  FDSE #(
    .INIT(1'b1)) 
    \clkdiv_p.cnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clkdiv_p.cnt[2]_i_1_n_0 ),
        .Q(cnt[2]),
        .S(max_pmod_n_3));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 iTimer0_carry
       (.CI(1'b0),
        .CO({iTimer0_carry_n_0,iTimer0_carry_n_1,iTimer0_carry_n_2,iTimer0_carry_n_3}),
        .CYINIT(iTimer[0]),
        .DI(iTimer[4:1]),
        .O(data1[4:1]),
        .S({iTimer0_carry_i_1_n_0,iTimer0_carry_i_2_n_0,iTimer0_carry_i_3_n_0,iTimer0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 iTimer0_carry__0
       (.CI(iTimer0_carry_n_0),
        .CO({iTimer0_carry__0_n_0,iTimer0_carry__0_n_1,iTimer0_carry__0_n_2,iTimer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(iTimer[8:5]),
        .O(data1[8:5]),
        .S({iTimer0_carry__0_i_1_n_0,iTimer0_carry__0_i_2_n_0,iTimer0_carry__0_i_3_n_0,iTimer0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__0_i_1
       (.I0(iTimer[8]),
        .O(iTimer0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__0_i_2
       (.I0(iTimer[7]),
        .O(iTimer0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__0_i_3
       (.I0(iTimer[6]),
        .O(iTimer0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__0_i_4
       (.I0(iTimer[5]),
        .O(iTimer0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 iTimer0_carry__1
       (.CI(iTimer0_carry__0_n_0),
        .CO({iTimer0_carry__1_n_0,iTimer0_carry__1_n_1,iTimer0_carry__1_n_2,iTimer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(iTimer[12:9]),
        .O(data1[12:9]),
        .S({iTimer0_carry__1_i_1_n_0,iTimer0_carry__1_i_2_n_0,iTimer0_carry__1_i_3_n_0,iTimer0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__1_i_1
       (.I0(iTimer[12]),
        .O(iTimer0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__1_i_2
       (.I0(iTimer[11]),
        .O(iTimer0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__1_i_3
       (.I0(iTimer[10]),
        .O(iTimer0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__1_i_4
       (.I0(iTimer[9]),
        .O(iTimer0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 iTimer0_carry__2
       (.CI(iTimer0_carry__1_n_0),
        .CO({iTimer0_carry__2_n_0,iTimer0_carry__2_n_1,iTimer0_carry__2_n_2,iTimer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(iTimer[16:13]),
        .O(data1[16:13]),
        .S({iTimer0_carry__2_i_1_n_0,iTimer0_carry__2_i_2_n_0,iTimer0_carry__2_i_3_n_0,iTimer0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__2_i_1
       (.I0(iTimer[16]),
        .O(iTimer0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__2_i_2
       (.I0(iTimer[15]),
        .O(iTimer0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__2_i_3
       (.I0(iTimer[14]),
        .O(iTimer0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__2_i_4
       (.I0(iTimer[13]),
        .O(iTimer0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 iTimer0_carry__3
       (.CI(iTimer0_carry__2_n_0),
        .CO({iTimer0_carry__3_n_0,iTimer0_carry__3_n_1,iTimer0_carry__3_n_2,iTimer0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(iTimer[20:17]),
        .O(data1[20:17]),
        .S({iTimer0_carry__3_i_1_n_0,iTimer0_carry__3_i_2_n_0,iTimer0_carry__3_i_3_n_0,iTimer0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__3_i_1
       (.I0(iTimer[20]),
        .O(iTimer0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__3_i_2
       (.I0(iTimer[19]),
        .O(iTimer0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__3_i_3
       (.I0(iTimer[18]),
        .O(iTimer0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__3_i_4
       (.I0(iTimer[17]),
        .O(iTimer0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 iTimer0_carry__4
       (.CI(iTimer0_carry__3_n_0),
        .CO({NLW_iTimer0_carry__4_CO_UNCONNECTED[3:2],iTimer0_carry__4_n_2,iTimer0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,iTimer[22:21]}),
        .O({NLW_iTimer0_carry__4_O_UNCONNECTED[3],data1[23:21]}),
        .S({1'b0,iTimer0_carry__4_i_1_n_0,iTimer0_carry__4_i_2_n_0,iTimer0_carry__4_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__4_i_1
       (.I0(iTimer[23]),
        .O(iTimer0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__4_i_2
       (.I0(iTimer[22]),
        .O(iTimer0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry__4_i_3
       (.I0(iTimer[21]),
        .O(iTimer0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry_i_1
       (.I0(iTimer[4]),
        .O(iTimer0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry_i_2
       (.I0(iTimer[3]),
        .O(iTimer0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry_i_3
       (.I0(iTimer[2]),
        .O(iTimer0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    iTimer0_carry_i_4
       (.I0(iTimer[1]),
        .O(iTimer0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \iTimer[0]_i_1 
       (.I0(iTimer[0]),
        .I1(\slv_reg3_reg_n_0_[0] ),
        .I2(irq_pulse_1),
        .O(iTimer_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[10]_i_1 
       (.I0(\slv_reg3_reg_n_0_[10] ),
        .I1(irq_pulse_1),
        .I2(data1[10]),
        .O(iTimer_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[11]_i_1 
       (.I0(\slv_reg3_reg_n_0_[11] ),
        .I1(irq_pulse_1),
        .I2(data1[11]),
        .O(iTimer_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[12]_i_1 
       (.I0(\slv_reg3_reg_n_0_[12] ),
        .I1(irq_pulse_1),
        .I2(data1[12]),
        .O(iTimer_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[13]_i_1 
       (.I0(\slv_reg3_reg_n_0_[13] ),
        .I1(irq_pulse_1),
        .I2(data1[13]),
        .O(iTimer_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[14]_i_1 
       (.I0(\slv_reg3_reg_n_0_[14] ),
        .I1(irq_pulse_1),
        .I2(data1[14]),
        .O(iTimer_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[15]_i_1 
       (.I0(\slv_reg3_reg_n_0_[15] ),
        .I1(irq_pulse_1),
        .I2(data1[15]),
        .O(iTimer_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[16]_i_1 
       (.I0(\slv_reg3_reg_n_0_[16] ),
        .I1(irq_pulse_1),
        .I2(data1[16]),
        .O(iTimer_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[17]_i_1 
       (.I0(\slv_reg3_reg_n_0_[17] ),
        .I1(irq_pulse_1),
        .I2(data1[17]),
        .O(iTimer_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[18]_i_1 
       (.I0(\slv_reg3_reg_n_0_[18] ),
        .I1(irq_pulse_1),
        .I2(data1[18]),
        .O(iTimer_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[19]_i_1 
       (.I0(\slv_reg3_reg_n_0_[19] ),
        .I1(irq_pulse_1),
        .I2(data1[19]),
        .O(iTimer_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[1]_i_1 
       (.I0(\slv_reg3_reg_n_0_[1] ),
        .I1(irq_pulse_1),
        .I2(data1[1]),
        .O(iTimer_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[20]_i_1 
       (.I0(\slv_reg3_reg_n_0_[20] ),
        .I1(irq_pulse_1),
        .I2(data1[20]),
        .O(iTimer_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[21]_i_1 
       (.I0(\slv_reg3_reg_n_0_[21] ),
        .I1(irq_pulse_1),
        .I2(data1[21]),
        .O(iTimer_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[22]_i_1 
       (.I0(\slv_reg3_reg_n_0_[22] ),
        .I1(irq_pulse_1),
        .I2(data1[22]),
        .O(iTimer_0[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \iTimer[23]_i_1 
       (.I0(\slv_reg3_reg_n_0_[31] ),
        .O(\iTimer[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[23]_i_2 
       (.I0(\slv_reg3_reg_n_0_[23] ),
        .I1(irq_pulse_1),
        .I2(data1[23]),
        .O(iTimer_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[2]_i_1 
       (.I0(\slv_reg3_reg_n_0_[2] ),
        .I1(irq_pulse_1),
        .I2(data1[2]),
        .O(iTimer_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[3]_i_1 
       (.I0(\slv_reg3_reg_n_0_[3] ),
        .I1(irq_pulse_1),
        .I2(data1[3]),
        .O(iTimer_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[4]_i_1 
       (.I0(\slv_reg3_reg_n_0_[4] ),
        .I1(irq_pulse_1),
        .I2(data1[4]),
        .O(iTimer_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[5]_i_1 
       (.I0(\slv_reg3_reg_n_0_[5] ),
        .I1(irq_pulse_1),
        .I2(data1[5]),
        .O(iTimer_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[6]_i_1 
       (.I0(\slv_reg3_reg_n_0_[6] ),
        .I1(irq_pulse_1),
        .I2(data1[6]),
        .O(iTimer_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[7]_i_1 
       (.I0(\slv_reg3_reg_n_0_[7] ),
        .I1(irq_pulse_1),
        .I2(data1[7]),
        .O(iTimer_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[8]_i_1 
       (.I0(\slv_reg3_reg_n_0_[8] ),
        .I1(irq_pulse_1),
        .I2(data1[8]),
        .O(iTimer_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \iTimer[9]_i_1 
       (.I0(\slv_reg3_reg_n_0_[9] ),
        .I1(irq_pulse_1),
        .I2(data1[9]),
        .O(iTimer_0[9]));
  FDSE \iTimer_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[0]),
        .Q(iTimer[0]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[10]),
        .Q(iTimer[10]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[11]),
        .Q(iTimer[11]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[12]),
        .Q(iTimer[12]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[13]),
        .Q(iTimer[13]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[14]),
        .Q(iTimer[14]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[15]),
        .Q(iTimer[15]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[16]),
        .Q(iTimer[16]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[17]),
        .Q(iTimer[17]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[18]),
        .Q(iTimer[18]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[19]),
        .Q(iTimer[19]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[1]),
        .Q(iTimer[1]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[20]),
        .Q(iTimer[20]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[21]),
        .Q(iTimer[21]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[22]),
        .Q(iTimer[22]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[23]),
        .Q(iTimer[23]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[2]),
        .Q(iTimer[2]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[3]),
        .Q(iTimer[3]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[4]),
        .Q(iTimer[4]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[5]),
        .Q(iTimer[5]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[6]),
        .Q(iTimer[6]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[7]),
        .Q(iTimer[7]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[8]),
        .Q(iTimer[8]),
        .S(\iTimer[23]_i_1_n_0 ));
  FDSE \iTimer_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(iTimer_0[9]),
        .Q(iTimer[9]),
        .S(\iTimer[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    irq_pulse_i_1
       (.I0(irq_pulse_i_2_n_0),
        .I1(irq_pulse_i_3_n_0),
        .I2(irq_pulse_i_4_n_0),
        .I3(irq_pulse_i_5_n_0),
        .I4(irq_pulse_i_6_n_0),
        .I5(irq_pulse_i_7_n_0),
        .O(irq_pulse_1));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_pulse_i_2
       (.I0(iTimer[20]),
        .I1(iTimer[21]),
        .I2(iTimer[22]),
        .I3(iTimer[14]),
        .O(irq_pulse_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    irq_pulse_i_3
       (.I0(iTimer[7]),
        .I1(iTimer[6]),
        .I2(iTimer[3]),
        .I3(iTimer[15]),
        .O(irq_pulse_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_pulse_i_4
       (.I0(iTimer[10]),
        .I1(iTimer[8]),
        .I2(iTimer[0]),
        .I3(iTimer[5]),
        .O(irq_pulse_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_pulse_i_5
       (.I0(iTimer[9]),
        .I1(iTimer[11]),
        .I2(iTimer[2]),
        .I3(iTimer[17]),
        .O(irq_pulse_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_pulse_i_6
       (.I0(iTimer[16]),
        .I1(iTimer[1]),
        .I2(iTimer[13]),
        .I3(iTimer[18]),
        .O(irq_pulse_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    irq_pulse_i_7
       (.I0(iTimer[4]),
        .I1(iTimer[23]),
        .I2(iTimer[19]),
        .I3(iTimer[12]),
        .O(irq_pulse_i_7_n_0));
  FDRE irq_pulse_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(irq_pulse_1),
        .Q(irq_pulse),
        .R(\iTimer[23]_i_1_n_0 ));
  FDSE max_drdyn_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(mDRDYn),
        .Q(max_drdyn),
        .S(max_pmod_n_3));
  zedbmg_sys_measdif_0_0_sph1pol1 max_pmod
       (.D(reg_data_out[12:0]),
        .\FSM_sequential_state_reg[2]_0 (spi_transmp_reg_n_0),
        .Q(slv_reg1),
        .SR(max_pmod_n_3),
        .\axi_rdata_reg[0] (adcRX_n_33),
        .\axi_rdata_reg[10] (adcRX_n_23),
        .\axi_rdata_reg[11] (adcRX_n_22),
        .\axi_rdata_reg[12] (adcRX_n_21),
        .\axi_rdata_reg[12]_0 ({\slv_reg3_reg_n_0_[12] ,\slv_reg3_reg_n_0_[11] ,\slv_reg3_reg_n_0_[10] ,\slv_reg3_reg_n_0_[9] ,\slv_reg3_reg_n_0_[8] ,\slv_reg3_reg_n_0_[7] ,\slv_reg3_reg_n_0_[6] ,\slv_reg3_reg_n_0_[5] ,\slv_reg3_reg_n_0_[4] ,\slv_reg3_reg_n_0_[3] ,\slv_reg3_reg_n_0_[2] ,\slv_reg3_reg_n_0_[1] ,\slv_reg3_reg_n_0_[0] }),
        .\axi_rdata_reg[1] (adcRX_n_32),
        .\axi_rdata_reg[2] (adcRX_n_31),
        .\axi_rdata_reg[3] (adcRX_n_30),
        .\axi_rdata_reg[4] (adcRX_n_29),
        .\axi_rdata_reg[5] (adcRX_n_28),
        .\axi_rdata_reg[6] (adcRX_n_27),
        .\axi_rdata_reg[7] (adcRX_n_26),
        .\axi_rdata_reg[8] (adcRX_n_25),
        .\axi_rdata_reg[9] (adcRX_n_24),
        .mCSn(mCSn),
        .mMISO(mMISO),
        .mMOSI(mMOSI),
        .mSCLK(mSCLK),
        .max_drdyn(max_drdyn),
        .\rd_buf_reg[15]_0 (rd_buf),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .sel0(sel0),
        .start(start),
        .zPushB(zPushB),
        .zSwitch(zSwitch));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    max_start_i_1
       (.I0(p_0_in[2]),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\slv_reg0[7]_i_3_n_0 ),
        .I4(s00_axi_aresetn),
        .O(max_start_i_1_n_0));
  FDRE max_start_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(max_start_i_1_n_0),
        .Q(start),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[7]_i_2 
       (.I0(\slv_reg0[7]_i_3_n_0 ),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[7]_i_3 
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .O(\slv_reg0[7]_i_3_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[0]),
        .Q(zLED[0]),
        .R(max_pmod_n_3));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[1]),
        .Q(zLED[1]),
        .R(max_pmod_n_3));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[2]),
        .Q(zLED[2]),
        .R(max_pmod_n_3));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[3]),
        .Q(zLED[3]),
        .R(max_pmod_n_3));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[4]),
        .Q(zLED[4]),
        .R(max_pmod_n_3));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[5]),
        .Q(zLED[5]),
        .R(max_pmod_n_3));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[6]),
        .Q(zLED[6]),
        .R(max_pmod_n_3));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in),
        .D(s00_axi_wdata[7]),
        .Q(zLED[7]),
        .R(max_pmod_n_3));
  LUT5 #(
    .INIT(32'h04000000)) 
    \slv_reg1[15]_i_1 
       (.I0(p_0_in[2]),
        .I1(\slv_reg0[7]_i_3_n_0 ),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \slv_reg1[7]_i_1 
       (.I0(p_0_in[2]),
        .I1(\slv_reg0[7]_i_3_n_0 ),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(max_pmod_n_3));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(max_pmod_n_3));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wstrb[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wstrb[2]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wstrb[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wstrb[0]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg_n_0_[10] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg_n_0_[11] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg_n_0_[12] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg_n_0_[13] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg_n_0_[14] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg_n_0_[15] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg_n_0_[16] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg_n_0_[17] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg_n_0_[18] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg_n_0_[19] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg_n_0_[1] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg_n_0_[20] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg_n_0_[21] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg_n_0_[22] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg_n_0_[23] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg_n_0_[24] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg_n_0_[25] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg_n_0_[26] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg_n_0_[27] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg_n_0_[28] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg_n_0_[29] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg_n_0_[2] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg3_reg_n_0_[31] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg3_reg_n_0_[3] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg_n_0_[4] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg_n_0_[5] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg_n_0_[6] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg_n_0_[7] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg3_reg_n_0_[8] ),
        .R(max_pmod_n_3));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg_n_0_[9] ),
        .R(max_pmod_n_3));
  LUT5 #(
    .INIT(32'h40000000)) 
    \slv_reg6[15]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \slv_reg6[23]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \slv_reg6[31]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \slv_reg6[7]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(max_pmod_n_3));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(max_pmod_n_3));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[2]),
        .I4(\slv_reg0[7]_i_3_n_0 ),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(max_pmod_n_3));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(max_pmod_n_3));
  LUT3 #(
    .INIT(8'h3A)) 
    spi_transmp_i_1
       (.I0(spi_transmp_reg_n_0),
        .I1(spi_transmp_i_2_n_0),
        .I2(s00_axi_aresetn),
        .O(spi_transmp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spi_transmp_i_2
       (.I0(trcnt[4]),
        .I1(trcnt[2]),
        .I2(trcnt[1]),
        .I3(trcnt[0]),
        .I4(trcnt[3]),
        .O(spi_transmp_i_2_n_0));
  FDRE spi_transmp_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spi_transmp_i_1_n_0),
        .Q(spi_transmp_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \spi_trr.trcnt[0]_i_1 
       (.I0(trcnt[3]),
        .I1(trcnt[1]),
        .I2(trcnt[2]),
        .I3(trcnt[4]),
        .I4(trcnt[0]),
        .O(\spi_trr.trcnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF0000FE)) 
    \spi_trr.trcnt[1]_i_1 
       (.I0(trcnt[3]),
        .I1(trcnt[2]),
        .I2(trcnt[4]),
        .I3(trcnt[1]),
        .I4(trcnt[0]),
        .O(\spi_trr.trcnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFF0000E)) 
    \spi_trr.trcnt[2]_i_1 
       (.I0(trcnt[3]),
        .I1(trcnt[4]),
        .I2(trcnt[0]),
        .I3(trcnt[1]),
        .I4(trcnt[2]),
        .O(\spi_trr.trcnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \spi_trr.trcnt[3]_i_1 
       (.I0(trcnt[2]),
        .I1(trcnt[1]),
        .I2(trcnt[0]),
        .I3(trcnt[3]),
        .O(\spi_trr.trcnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \spi_trr.trcnt[4]_i_1 
       (.I0(trcnt[4]),
        .I1(trcnt[2]),
        .I2(trcnt[1]),
        .I3(trcnt[0]),
        .I4(trcnt[3]),
        .O(\spi_trr.trcnt[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_trr.trcnt_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_trr.trcnt[0]_i_1_n_0 ),
        .Q(trcnt[0]),
        .R(max_pmod_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \spi_trr.trcnt_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_trr.trcnt[1]_i_1_n_0 ),
        .Q(trcnt[1]),
        .R(max_pmod_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \spi_trr.trcnt_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_trr.trcnt[2]_i_1_n_0 ),
        .Q(trcnt[2]),
        .R(max_pmod_n_3));
  FDSE #(
    .INIT(1'b1)) 
    \spi_trr.trcnt_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_trr.trcnt[3]_i_1_n_0 ),
        .Q(trcnt[3]),
        .S(max_pmod_n_3));
  FDSE #(
    .INIT(1'b1)) 
    \spi_trr.trcnt_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\spi_trr.trcnt[4]_i_1_n_0 ),
        .Q(trcnt[4]),
        .S(max_pmod_n_3));
  LUT5 #(
    .INIT(32'h0003AAAA)) 
    spiclk_p_i_1
       (.I0(spiclk_p_reg_n_0),
        .I1(cnt[2]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(s00_axi_aresetn),
        .O(spiclk_p_i_1_n_0));
  FDRE spiclk_p_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(spiclk_p_i_1_n_0),
        .Q(spiclk_p_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    start_adc_i_1
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\slv_reg0[7]_i_3_n_0 ),
        .I4(s00_axi_aresetn),
        .O(start_adc_i_1_n_0));
  FDRE start_adc_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(start_adc_i_1_n_0),
        .Q(start_adc_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    xirq_i_1
       (.I0(md_irq),
        .I1(irq_pulse),
        .I2(s00_axi_aresetn),
        .I3(slv_reg3),
        .O(xirq_i_1_n_0));
  FDRE xirq_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(xirq_i_1_n_0),
        .Q(md_irq),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sph1pol1" *) 
module zedbmg_sys_measdif_0_0_sph1pol1
   (mCSn,
    mSCLK,
    mMOSI,
    SR,
    D,
    \rd_buf_reg[15]_0 ,
    s00_axi_aclk,
    Q,
    s00_axi_aresetn,
    \FSM_sequential_state_reg[2]_0 ,
    start,
    sel0,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[12]_0 ,
    zPushB,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[7] ,
    zSwitch,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[1] ,
    max_drdyn,
    \axi_rdata_reg[0] ,
    mMISO);
  output mCSn;
  output mSCLK;
  output mMOSI;
  output [0:0]SR;
  output [12:0]D;
  output [2:0]\rd_buf_reg[15]_0 ;
  input s00_axi_aclk;
  input [15:0]Q;
  input s00_axi_aresetn;
  input \FSM_sequential_state_reg[2]_0 ;
  input start;
  input [2:0]sel0;
  input \axi_rdata_reg[12] ;
  input [12:0]\axi_rdata_reg[12]_0 ;
  input [4:0]zPushB;
  input \axi_rdata_reg[11] ;
  input \axi_rdata_reg[10] ;
  input \axi_rdata_reg[9] ;
  input \axi_rdata_reg[8] ;
  input \axi_rdata_reg[7] ;
  input [7:0]zSwitch;
  input \axi_rdata_reg[6] ;
  input \axi_rdata_reg[5] ;
  input \axi_rdata_reg[4] ;
  input \axi_rdata_reg[3] ;
  input \axi_rdata_reg[2] ;
  input \axi_rdata_reg[1] ;
  input max_drdyn;
  input \axi_rdata_reg[0] ;
  input mMISO;

  wire [12:0]D;
  wire \FSM_onehot_ssl_state[0]_i_1_n_0 ;
  wire \FSM_onehot_ssl_state[1]_i_1_n_0 ;
  wire \FSM_onehot_ssl_state[2]_i_1_n_0 ;
  wire \FSM_onehot_ssl_state[2]_i_2_n_0 ;
  wire \FSM_onehot_ssl_state[2]_i_3_n_0 ;
  wire \FSM_onehot_ssl_state_reg_n_0_[2] ;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[2]_0 ;
  wire [15:0]Q;
  wire [0:0]SR;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire [12:0]\axi_rdata_reg[12]_0 ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_2__0_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire done;
  wire mCSn;
  wire mMISO;
  wire mMOSI;
  wire mSCLK;
  wire max_drdyn;
  wire p_0_in;
  wire [12:0]rd_buf;
  wire rd_buf_0;
  wire [2:0]\rd_buf_reg[15]_0 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire sclk_i_1_n_0;
  wire scsq_i_1_n_0;
  wire sdo_i_1_n_0;
  wire [2:0]sel0;
  wire start;
  wire start_i;
  wire [2:0]state;
  wire [15:15]wr_buf;
  wire \wr_buf[10]_i_1_n_0 ;
  wire \wr_buf[11]_i_1_n_0 ;
  wire \wr_buf[12]_i_1_n_0 ;
  wire \wr_buf[13]_i_1_n_0 ;
  wire \wr_buf[14]_i_1_n_0 ;
  wire \wr_buf[15]_i_2_n_0 ;
  wire \wr_buf[15]_i_3_n_0 ;
  wire \wr_buf[15]_i_4_n_0 ;
  wire \wr_buf[1]_i_1_n_0 ;
  wire \wr_buf[2]_i_1_n_0 ;
  wire \wr_buf[3]_i_1_n_0 ;
  wire \wr_buf[4]_i_1_n_0 ;
  wire \wr_buf[5]_i_1_n_0 ;
  wire \wr_buf[6]_i_1_n_0 ;
  wire \wr_buf[7]_i_1_n_0 ;
  wire \wr_buf[8]_i_1_n_0 ;
  wire \wr_buf[9]_i_1_n_0 ;
  wire \wr_buf_reg_n_0_[0] ;
  wire \wr_buf_reg_n_0_[10] ;
  wire \wr_buf_reg_n_0_[11] ;
  wire \wr_buf_reg_n_0_[12] ;
  wire \wr_buf_reg_n_0_[13] ;
  wire \wr_buf_reg_n_0_[14] ;
  wire \wr_buf_reg_n_0_[1] ;
  wire \wr_buf_reg_n_0_[2] ;
  wire \wr_buf_reg_n_0_[3] ;
  wire \wr_buf_reg_n_0_[4] ;
  wire \wr_buf_reg_n_0_[5] ;
  wire \wr_buf_reg_n_0_[6] ;
  wire \wr_buf_reg_n_0_[7] ;
  wire \wr_buf_reg_n_0_[8] ;
  wire \wr_buf_reg_n_0_[9] ;
  wire [4:0]zPushB;
  wire [7:0]zSwitch;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_ssl_state[0]_i_1 
       (.I0(\FSM_onehot_ssl_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_ssl_state[2]_i_2_n_0 ),
        .I2(done),
        .O(\FSM_onehot_ssl_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_ssl_state[1]_i_1 
       (.I0(done),
        .I1(\FSM_onehot_ssl_state[2]_i_2_n_0 ),
        .I2(start_i),
        .O(\FSM_onehot_ssl_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_ssl_state[2]_i_1 
       (.I0(start_i),
        .I1(\FSM_onehot_ssl_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_ssl_state_reg_n_0_[2] ),
        .O(\FSM_onehot_ssl_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \FSM_onehot_ssl_state[2]_i_2 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(start_i),
        .I3(state[2]),
        .I4(\FSM_onehot_ssl_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_ssl_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101010001000100)) 
    \FSM_onehot_ssl_state[2]_i_3 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_onehot_ssl_state_reg_n_0_[2] ),
        .I4(start),
        .I5(done),
        .O(\FSM_onehot_ssl_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "ssl_idle:001,ssl_start:010,ssl_run:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_ssl_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_ssl_state[0]_i_1_n_0 ),
        .Q(done),
        .S(SR));
  (* FSM_ENCODED_STATES = "ssl_idle:001,ssl_start:010,ssl_run:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ssl_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_ssl_state[1]_i_1_n_0 ),
        .Q(start_i),
        .R(SR));
  (* FSM_ENCODED_STATES = "ssl_idle:001,ssl_start:010,ssl_run:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_ssl_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_ssl_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_ssl_state_reg_n_0_[2] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00FF7600)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(start_i),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h11FFEA00)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFEA00)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[3] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "sidle:000,sstart_lo:010,sclk_lo:100,stop_lo:110,sstartx:001,sclk_hi:011,stop_hi:101" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sidle:000,sstart_lo:010,sclk_lo:100,stop_lo:110,sstartx:001,sclk_hi:011,stop_hi:101" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "sidle:000,sstart_lo:010,sclk_lo:100,stop_lo:110,sstartx:001,sclk_hi:011,stop_hi:101" *) 
  FDRE \FSM_sequential_state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [0]),
        .I1(rd_buf[0]),
        .I2(sel0[1]),
        .I3(done),
        .I4(sel0[0]),
        .I5(zSwitch[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[10]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [10]),
        .I1(rd_buf[10]),
        .I2(sel0[1]),
        .I3(zPushB[2]),
        .I4(sel0[0]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[11]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [11]),
        .I1(rd_buf[11]),
        .I2(sel0[1]),
        .I3(zPushB[3]),
        .I4(sel0[0]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[12]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [12]),
        .I1(rd_buf[12]),
        .I2(sel0[1]),
        .I3(zPushB[4]),
        .I4(sel0[0]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [1]),
        .I1(rd_buf[1]),
        .I2(sel0[1]),
        .I3(max_drdyn),
        .I4(sel0[0]),
        .I5(zSwitch[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [2]),
        .I1(rd_buf[2]),
        .I2(sel0[1]),
        .I3(zSwitch[2]),
        .I4(sel0[0]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[3]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [3]),
        .I1(rd_buf[3]),
        .I2(sel0[1]),
        .I3(zSwitch[3]),
        .I4(sel0[0]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[4]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [4]),
        .I1(rd_buf[4]),
        .I2(sel0[1]),
        .I3(zSwitch[4]),
        .I4(sel0[0]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [5]),
        .I1(rd_buf[5]),
        .I2(sel0[1]),
        .I3(zSwitch[5]),
        .I4(sel0[0]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [6]),
        .I1(rd_buf[6]),
        .I2(sel0[1]),
        .I3(zSwitch[6]),
        .I4(sel0[0]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[7]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [7]),
        .I1(rd_buf[7]),
        .I2(sel0[1]),
        .I3(zSwitch[7]),
        .I4(sel0[0]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[8]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [8]),
        .I1(rd_buf[8]),
        .I2(sel0[1]),
        .I3(zPushB[0]),
        .I4(sel0[0]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_rdata_reg[12]_0 [9]),
        .I1(rd_buf[9]),
        .I2(sel0[1]),
        .I3(zPushB[1]),
        .I4(sel0[0]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata_reg[0] ),
        .O(D[0]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata_reg[10] ),
        .O(D[10]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata_reg[11] ),
        .O(D[11]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata_reg[12] ),
        .O(D[12]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata_reg[1] ),
        .O(D[1]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata_reg[2] ),
        .O(D[2]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata_reg[3] ),
        .O(D[3]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata_reg[4] ),
        .O(D[4]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata_reg[5] ),
        .O(D[5]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata_reg[6] ),
        .O(D[6]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata_reg[7] ),
        .O(D[7]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata_reg[8] ),
        .O(D[8]),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata_reg[9] ),
        .O(D[9]),
        .S(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count[3]_i_3_n_0 ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \count[1]_i_1__0 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count[3]_i_3_n_0 ),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE1FF)) 
    \count[2]_i_1__0 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count[3]_i_3_n_0 ),
        .O(\count[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00820082002A0028)) 
    \count[3]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(start_i),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFE01FFFF)) 
    \count[3]_i_2__0 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\count[3]_i_3_n_0 ),
        .O(\count[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hF5FFFFF1)) 
    \count[3]_i_3 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(start_i),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(\count[3]_i_3_n_0 ));
  FDSE \count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(count),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .S(SR));
  FDSE \count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(count),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .S(SR));
  FDSE \count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(count),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .S(SR));
  FDSE \count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(count),
        .D(\count[3]_i_2__0_n_0 ),
        .Q(\count_reg_n_0_[3] ),
        .S(SR));
  LUT5 #(
    .INIT(32'h00808000)) 
    \rd_buf[15]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .O(rd_buf_0));
  FDRE \rd_buf_reg[0] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(mMISO),
        .Q(rd_buf[0]),
        .R(1'b0));
  FDRE \rd_buf_reg[10] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[9]),
        .Q(rd_buf[10]),
        .R(1'b0));
  FDRE \rd_buf_reg[11] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[10]),
        .Q(rd_buf[11]),
        .R(1'b0));
  FDRE \rd_buf_reg[12] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[11]),
        .Q(rd_buf[12]),
        .R(1'b0));
  FDRE \rd_buf_reg[13] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[12]),
        .Q(\rd_buf_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \rd_buf_reg[14] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(\rd_buf_reg[15]_0 [0]),
        .Q(\rd_buf_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \rd_buf_reg[15] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(\rd_buf_reg[15]_0 [1]),
        .Q(\rd_buf_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \rd_buf_reg[1] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[0]),
        .Q(rd_buf[1]),
        .R(1'b0));
  FDRE \rd_buf_reg[2] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[1]),
        .Q(rd_buf[2]),
        .R(1'b0));
  FDRE \rd_buf_reg[3] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[2]),
        .Q(rd_buf[3]),
        .R(1'b0));
  FDRE \rd_buf_reg[4] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[3]),
        .Q(rd_buf[4]),
        .R(1'b0));
  FDRE \rd_buf_reg[5] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[4]),
        .Q(rd_buf[5]),
        .R(1'b0));
  FDRE \rd_buf_reg[6] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[5]),
        .Q(rd_buf[6]),
        .R(1'b0));
  FDRE \rd_buf_reg[7] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[6]),
        .Q(rd_buf[7]),
        .R(1'b0));
  FDRE \rd_buf_reg[8] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[7]),
        .Q(rd_buf[8]),
        .R(1'b0));
  FDRE \rd_buf_reg[9] 
       (.C(s00_axi_aclk),
        .CE(rd_buf_0),
        .D(rd_buf[8]),
        .Q(rd_buf[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h79FFFFFF79000000)) 
    sclk_i_1
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(s00_axi_aresetn),
        .I5(mSCLK),
        .O(sclk_i_1_n_0));
  FDRE sclk_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(mSCLK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h41FFFFFF41000000)) 
    scsq_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(s00_axi_aresetn),
        .I5(mCSn),
        .O(scsq_i_1_n_0));
  FDRE scsq_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(scsq_i_1_n_0),
        .Q(mCSn),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h28FFFFFF28000000)) 
    sdo_i_1
       (.I0(p_0_in),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state_reg[2]_0 ),
        .I4(s00_axi_aresetn),
        .I5(mMOSI),
        .O(sdo_i_1_n_0));
  FDRE sdo_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(sdo_i_1_n_0),
        .Q(mMOSI),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \slv_reg0[7]_i_1 
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[10]_i_1 
       (.I0(\wr_buf_reg_n_0_[9] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[10]),
        .O(\wr_buf[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[11]_i_1 
       (.I0(\wr_buf_reg_n_0_[10] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[11]),
        .O(\wr_buf[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[12]_i_1 
       (.I0(\wr_buf_reg_n_0_[11] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[12]),
        .O(\wr_buf[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[13]_i_1 
       (.I0(\wr_buf_reg_n_0_[12] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[13]),
        .O(\wr_buf[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[14]_i_1 
       (.I0(\wr_buf_reg_n_0_[13] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[14]),
        .O(\wr_buf[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080800800800000)) 
    \wr_buf[15]_i_1 
       (.I0(s00_axi_aresetn),
        .I1(\FSM_sequential_state_reg[2]_0 ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(\wr_buf[15]_i_3_n_0 ),
        .O(wr_buf));
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[15]_i_2 
       (.I0(\wr_buf_reg_n_0_[14] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[15]),
        .O(\wr_buf[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010FF1000)) 
    \wr_buf[15]_i_3 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\wr_buf[15]_i_4_n_0 ),
        .I3(state[2]),
        .I4(start_i),
        .I5(state[1]),
        .O(\wr_buf[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wr_buf[15]_i_4 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\wr_buf[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[1]_i_1 
       (.I0(\wr_buf_reg_n_0_[0] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[1]),
        .O(\wr_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[2]_i_1 
       (.I0(\wr_buf_reg_n_0_[1] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[2]),
        .O(\wr_buf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[3]_i_1 
       (.I0(\wr_buf_reg_n_0_[2] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[3]),
        .O(\wr_buf[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[4]_i_1 
       (.I0(\wr_buf_reg_n_0_[3] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[4]),
        .O(\wr_buf[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[5]_i_1 
       (.I0(\wr_buf_reg_n_0_[4] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[5]),
        .O(\wr_buf[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[6]_i_1 
       (.I0(\wr_buf_reg_n_0_[5] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[6]),
        .O(\wr_buf[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[7]_i_1 
       (.I0(\wr_buf_reg_n_0_[6] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[7]),
        .O(\wr_buf[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[8]_i_1 
       (.I0(\wr_buf_reg_n_0_[7] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[8]),
        .O(\wr_buf[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_buf[9]_i_1 
       (.I0(\wr_buf_reg_n_0_[8] ),
        .I1(\count[3]_i_3_n_0 ),
        .I2(Q[9]),
        .O(\wr_buf[9]_i_1_n_0 ));
  FDRE \wr_buf_reg[0] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(Q[0]),
        .Q(\wr_buf_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \wr_buf_reg[10] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[10]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \wr_buf_reg[11] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[11]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \wr_buf_reg[12] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[12]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \wr_buf_reg[13] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[13]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \wr_buf_reg[14] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[14]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \wr_buf_reg[15] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[15]_i_2_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \wr_buf_reg[1] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[1]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \wr_buf_reg[2] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[2]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \wr_buf_reg[3] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[3]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \wr_buf_reg[4] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[4]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \wr_buf_reg[5] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[5]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \wr_buf_reg[6] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[6]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \wr_buf_reg[7] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[7]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \wr_buf_reg[8] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[8]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \wr_buf_reg[9] 
       (.C(s00_axi_aclk),
        .CE(wr_buf),
        .D(\wr_buf[9]_i_1_n_0 ),
        .Q(\wr_buf_reg_n_0_[9] ),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
