--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Thu Oct  2 14:47:57 2025
--Host        : pae26lx running 64-bit Ubuntu 20.04.6 LTS
--Command     : generate_target zedbmg_sys_wrapper.bd
--Design      : zedbmg_sys_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zedbmg_sys_wrapper is
  port (
    AD1Sclk : out STD_LOGIC;
    AD1csq : out STD_LOGIC;
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    mCSn : out STD_LOGIC;
    mDRDYn : in STD_LOGIC;
    mMISO : in STD_LOGIC;
    mMOSI : out STD_LOGIC;
    mSCLK : out STD_LOGIC;
    sdiAD_0 : in STD_LOGIC;
    sdiAD_1 : in STD_LOGIC;
    zLED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    zPushB : in STD_LOGIC_VECTOR ( 4 downto 0 );
    zSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end zedbmg_sys_wrapper;

architecture STRUCTURE of zedbmg_sys_wrapper is
  component zedbmg_sys is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    zLED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mCSn : out STD_LOGIC;
    mSCLK : out STD_LOGIC;
    mMOSI : out STD_LOGIC;
    AD1csq : out STD_LOGIC;
    AD1Sclk : out STD_LOGIC;
    zSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    zPushB : in STD_LOGIC_VECTOR ( 4 downto 0 );
    mMISO : in STD_LOGIC;
    mDRDYn : in STD_LOGIC;
    sdiAD_1 : in STD_LOGIC;
    sdiAD_0 : in STD_LOGIC
  );
  end component zedbmg_sys;
begin
zedbmg_sys_i: component zedbmg_sys
     port map (
      AD1Sclk => AD1Sclk,
      AD1csq => AD1csq,
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      mCSn => mCSn,
      mDRDYn => mDRDYn,
      mMISO => mMISO,
      mMOSI => mMOSI,
      mSCLK => mSCLK,
      sdiAD_0 => sdiAD_0,
      sdiAD_1 => sdiAD_1,
      zLED(7 downto 0) => zLED(7 downto 0),
      zPushB(4 downto 0) => zPushB(4 downto 0),
      zSwitch(7 downto 0) => zSwitch(7 downto 0)
    );
end STRUCTURE;
