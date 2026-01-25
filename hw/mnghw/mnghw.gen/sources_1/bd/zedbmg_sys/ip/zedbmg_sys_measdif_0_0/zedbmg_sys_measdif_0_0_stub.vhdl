-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Thu Oct  2 14:44:51 2025
-- Host        : pae26lx running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dmplab/MNGWYw26/umgn/mnghw/mnghw.gen/sources_1/bd/zedbmg_sys/ip/zedbmg_sys_measdif_0_0/zedbmg_sys_measdif_0_0_stub.vhdl
-- Design      : zedbmg_sys_measdif_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zedbmg_sys_measdif_0_0 is
  Port ( 
    zLED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    zSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    zPushB : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mCSn : out STD_LOGIC;
    mSCLK : out STD_LOGIC;
    mMOSI : out STD_LOGIC;
    mMISO : in STD_LOGIC;
    mDRDYn : in STD_LOGIC;
    AD1csq : out STD_LOGIC;
    AD1Sclk : out STD_LOGIC;
    sdiAD_1 : in STD_LOGIC;
    sdiAD_0 : in STD_LOGIC;
    md_irq : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );

end zedbmg_sys_measdif_0_0;

architecture stub of zedbmg_sys_measdif_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "zLED[7:0],zSwitch[7:0],zPushB[4:0],mCSn,mSCLK,mMOSI,mMISO,mDRDYn,AD1csq,AD1Sclk,sdiAD_1,sdiAD_0,md_irq,s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[4:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[4:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "measdif_v1_0,Vivado 2022.1";
begin
end;
