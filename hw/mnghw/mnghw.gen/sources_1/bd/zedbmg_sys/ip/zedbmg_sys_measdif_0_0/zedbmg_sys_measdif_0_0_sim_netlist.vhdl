-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Thu Oct  2 14:44:51 2025
-- Host        : pae26lx running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/dmplab/MNGWYw26/umgn/mnghw/mnghw.gen/sources_1/bd/zedbmg_sys/ip/zedbmg_sys_measdif_0_0/zedbmg_sys_measdif_0_0_sim_netlist.vhdl
-- Design      : zedbmg_sys_measdif_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zedbmg_sys_measdif_0_0_adc2lane is
  port (
    AD1csq : out STD_LOGIC;
    AD1Sclk : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 18 downto 0 );
    \slv_reg7_reg[12]\ : out STD_LOGIC;
    \slv_reg7_reg[11]\ : out STD_LOGIC;
    \slv_reg7_reg[10]\ : out STD_LOGIC;
    \slv_reg7_reg[9]\ : out STD_LOGIC;
    \slv_reg7_reg[8]\ : out STD_LOGIC;
    \slv_reg7_reg[7]\ : out STD_LOGIC;
    \slv_reg7_reg[6]\ : out STD_LOGIC;
    \slv_reg7_reg[5]\ : out STD_LOGIC;
    \slv_reg7_reg[4]\ : out STD_LOGIC;
    \slv_reg7_reg[3]\ : out STD_LOGIC;
    \slv_reg7_reg[2]\ : out STD_LOGIC;
    \slv_reg7_reg[1]\ : out STD_LOGIC;
    \slv_reg7_reg[0]\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \FSM_onehot_ssl_state_reg[2]_0\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \axi_rdata_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[15]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sdiAD_0 : in STD_LOGIC;
    sdiAD_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zedbmg_sys_measdif_0_0_adc2lane : entity is "adc2lane";
end zedbmg_sys_measdif_0_0_adc2lane;

architecture STRUCTURE of zedbmg_sys_measdif_0_0_adc2lane is
  signal \^ad1sclk\ : STD_LOGIC;
  signal \^ad1csq\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_2_n_0\ : STD_LOGIC;
  signal \count[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal data5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal done_adc : STD_LOGIC;
  signal rd_buf_0 : STD_LOGIC;
  signal \sclk_i_1__0_n_0\ : STD_LOGIC;
  signal \scsq_i_1__0_n_0\ : STD_LOGIC;
  signal start_i : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_ssl_state[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_ssl_state[2]_i_1__0\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_ssl_state_reg[0]\ : label is "ssl_idle:001,ssl_start:010,ssl_run:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ssl_state_reg[1]\ : label is "ssl_idle:001,ssl_start:010,ssl_run:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ssl_state_reg[2]\ : label is "ssl_idle:001,ssl_start:010,ssl_run:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2__0\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "sidle:000,sclk_hi:010,sstop_hi:100,sstartx:001,sclk_lo:101,sstop_lo:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "sidle:000,sclk_hi:010,sstop_hi:100,sstartx:001,sclk_lo:101,sstop_lo:011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "sidle:000,sclk_hi:010,sstop_hi:100,sstartx:001,sclk_lo:101,sstop_lo:011";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_3__0\ : label is "soft_lutpair2";
begin
  AD1Sclk <= \^ad1sclk\;
  AD1csq <= \^ad1csq\;
\FSM_onehot_ssl_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_onehot_ssl_state[2]_i_2__0_n_0\,
      I2 => \FSM_onehot_ssl_state_reg_n_0_[2]\,
      I3 => done_adc,
      O => \FSM_onehot_ssl_state[0]_i_1__0_n_0\
    );
\FSM_onehot_ssl_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_onehot_ssl_state[2]_i_2__0_n_0\,
      I2 => done_adc,
      I3 => start_i,
      O => \FSM_onehot_ssl_state[1]_i_1__0_n_0\
    );
\FSM_onehot_ssl_state[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE10"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_onehot_ssl_state[2]_i_2__0_n_0\,
      I2 => start_i,
      I3 => \FSM_onehot_ssl_state_reg_n_0_[2]\,
      O => \FSM_onehot_ssl_state[2]_i_1__0_n_0\
    );
\FSM_onehot_ssl_state[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFFF07FF07"
    )
        port map (
      I0 => done_adc,
      I1 => \FSM_onehot_ssl_state_reg[2]_0\,
      I2 => \FSM_onehot_ssl_state_reg_n_0_[2]\,
      I3 => state(2),
      I4 => start_i,
      I5 => state(0),
      O => \FSM_onehot_ssl_state[2]_i_2__0_n_0\
    );
\FSM_onehot_ssl_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_ssl_state[0]_i_1__0_n_0\,
      Q => done_adc,
      S => SR(0)
    );
\FSM_onehot_ssl_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_ssl_state[1]_i_1__0_n_0\,
      Q => start_i,
      R => SR(0)
    );
\FSM_onehot_ssl_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_ssl_state[2]_i_1__0_n_0\,
      Q => \FSM_onehot_ssl_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_sequential_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0E00"
    )
        port map (
      I0 => start_i,
      I1 => state(1),
      I2 => state(2),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => state(0),
      O => \FSM_sequential_state[0]_i_1__0_n_0\
    );
\FSM_sequential_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFAA00"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[2]_i_2__0_n_0\,
      I2 => state(2),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => state(1),
      O => \FSM_sequential_state[1]_i_1__0_n_0\
    );
\FSM_sequential_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFE000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2__0_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => state(2),
      O => \FSM_sequential_state[2]_i_1__0_n_0\
    );
\FSM_sequential_state[2]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      O => \FSM_sequential_state[2]_i_2__0_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1__0_n_0\,
      Q => state(0),
      R => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1__0_n_0\,
      Q => state(1),
      R => SR(0)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1__0_n_0\,
      Q => state(2),
      R => SR(0)
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(0),
      I1 => \axi_rdata_reg[31]_0\(0),
      I2 => sel0(1),
      I3 => data5(0),
      I4 => sel0(0),
      I5 => done_adc,
      O => \slv_reg7_reg[0]\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(10),
      I1 => \axi_rdata_reg[31]_0\(10),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(10),
      O => \slv_reg7_reg[10]\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(11),
      I1 => \axi_rdata_reg[31]_0\(11),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(11),
      O => \slv_reg7_reg[11]\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(12),
      I1 => \axi_rdata_reg[31]_0\(12),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(12),
      O => \slv_reg7_reg[12]\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[15]\(0),
      I3 => sel0(0),
      I4 => Q(0),
      I5 => sel0(1),
      O => D(0)
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(13),
      I1 => \axi_rdata_reg[31]_0\(13),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[15]\(1),
      I3 => sel0(0),
      I4 => Q(1),
      I5 => sel0(1),
      O => D(1)
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(14),
      I1 => \axi_rdata_reg[31]_0\(14),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B888888888"
    )
        port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => sel0(2),
      I2 => \axi_rdata_reg[15]\(2),
      I3 => sel0(0),
      I4 => Q(2),
      I5 => sel0(1),
      O => D(2)
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(15),
      I1 => \axi_rdata_reg[31]_0\(15),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(3),
      O => D(3)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(16),
      I1 => \axi_rdata_reg[31]_0\(16),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(4),
      O => D(4)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(17),
      I1 => \axi_rdata_reg[31]_0\(17),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(5),
      O => D(5)
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(18),
      I1 => \axi_rdata_reg[31]_0\(18),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(6),
      O => D(6)
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(19),
      I1 => \axi_rdata_reg[31]_0\(19),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(1),
      I1 => \axi_rdata_reg[31]_0\(1),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(1),
      O => \slv_reg7_reg[1]\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(7),
      O => D(7)
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(20),
      I1 => \axi_rdata_reg[31]_0\(20),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(8),
      O => D(8)
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(21),
      I1 => \axi_rdata_reg[31]_0\(21),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(9),
      O => D(9)
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(22),
      I1 => \axi_rdata_reg[31]_0\(22),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(10),
      O => D(10)
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(23),
      I1 => \axi_rdata_reg[31]_0\(23),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(11),
      I4 => sel0(0),
      O => D(11)
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(24),
      I1 => \axi_rdata_reg[31]_0\(24),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(12),
      I4 => sel0(0),
      O => D(12)
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(25),
      I1 => \axi_rdata_reg[31]_0\(25),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(13),
      I4 => sel0(0),
      O => D(13)
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(26),
      I1 => \axi_rdata_reg[31]_0\(26),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(14),
      I4 => sel0(0),
      O => D(14)
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(27),
      I1 => \axi_rdata_reg[31]_0\(27),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(15),
      I4 => sel0(0),
      O => D(15)
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(28),
      I1 => \axi_rdata_reg[31]_0\(28),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => Q(16),
      I4 => sel0(0),
      O => D(16)
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(29),
      I1 => \axi_rdata_reg[31]_0\(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(2),
      I1 => \axi_rdata_reg[31]_0\(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(2),
      O => \slv_reg7_reg[2]\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(17),
      O => D(17)
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(30),
      I1 => \axi_rdata_reg[31]_0\(30),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
        port map (
      I0 => \axi_rdata[31]_i_3_n_0\,
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => Q(18),
      O => D(18)
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(31),
      I1 => \axi_rdata_reg[31]_0\(31),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(31),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(3),
      I1 => \axi_rdata_reg[31]_0\(3),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(3),
      O => \slv_reg7_reg[3]\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(4),
      I1 => \axi_rdata_reg[31]_0\(4),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(4),
      O => \slv_reg7_reg[4]\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(5),
      I1 => \axi_rdata_reg[31]_0\(5),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(5),
      O => \slv_reg7_reg[5]\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(6),
      I1 => \axi_rdata_reg[31]_0\(6),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(6),
      O => \slv_reg7_reg[6]\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(7),
      I1 => \axi_rdata_reg[31]_0\(7),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(7),
      O => \slv_reg7_reg[7]\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(8),
      I1 => \axi_rdata_reg[31]_0\(8),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(8),
      O => \slv_reg7_reg[8]\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => \axi_rdata_reg[31]\(9),
      I1 => \axi_rdata_reg[31]_0\(9),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => data5(9),
      O => \slv_reg7_reg[9]\
    );
\count[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => state(1),
      I1 => start_i,
      I2 => \count_reg_n_0_[0]\,
      O => \count[0]_i_1__0_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => \count[3]_i_3__0_n_0\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAB"
    )
        port map (
      I0 => \count[3]_i_3__0_n_0\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[2]\,
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030002200000000"
    )
        port map (
      I0 => start_i,
      I1 => state(0),
      I2 => \FSM_sequential_state[2]_i_2__0_n_0\,
      I3 => state(2),
      I4 => state(1),
      I5 => \FSM_sequential_state_reg[2]_0\,
      O => count
    );
\count[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAB"
    )
        port map (
      I0 => \count[3]_i_3__0_n_0\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[2]\,
      I4 => \count_reg_n_0_[3]\,
      O => \count[3]_i_2_n_0\
    );
\count[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => start_i,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      O => \count[3]_i_3__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => count,
      D => \count[0]_i_1__0_n_0\,
      Q => \count_reg_n_0_[0]\,
      S => SR(0)
    );
\count_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => count,
      D => \count[1]_i_1_n_0\,
      Q => \count_reg_n_0_[1]\,
      S => SR(0)
    );
\count_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => \count_reg_n_0_[2]\,
      S => SR(0)
    );
\count_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => count,
      D => \count[3]_i_2_n_0\,
      Q => \count_reg_n_0_[3]\,
      S => SR(0)
    );
\rd_buf_0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_0\,
      I1 => s00_axi_aresetn,
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      O => rd_buf_0
    );
\rd_buf_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => sdiAD_0,
      Q => data5(0),
      R => '0'
    );
\rd_buf_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(9),
      Q => data5(10),
      R => '0'
    );
\rd_buf_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(10),
      Q => data5(11),
      R => '0'
    );
\rd_buf_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(11),
      Q => data5(12),
      R => '0'
    );
\rd_buf_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(12),
      Q => data5(13),
      R => '0'
    );
\rd_buf_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(13),
      Q => data5(14),
      R => '0'
    );
\rd_buf_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(14),
      Q => data5(15),
      R => '0'
    );
\rd_buf_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(0),
      Q => data5(1),
      R => '0'
    );
\rd_buf_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(1),
      Q => data5(2),
      R => '0'
    );
\rd_buf_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(2),
      Q => data5(3),
      R => '0'
    );
\rd_buf_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(3),
      Q => data5(4),
      R => '0'
    );
\rd_buf_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(4),
      Q => data5(5),
      R => '0'
    );
\rd_buf_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(5),
      Q => data5(6),
      R => '0'
    );
\rd_buf_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(6),
      Q => data5(7),
      R => '0'
    );
\rd_buf_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(7),
      Q => data5(8),
      R => '0'
    );
\rd_buf_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(8),
      Q => data5(9),
      R => '0'
    );
\rd_buf_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => sdiAD_1,
      Q => data5(16),
      R => '0'
    );
\rd_buf_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(25),
      Q => data5(26),
      R => '0'
    );
\rd_buf_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(26),
      Q => data5(27),
      R => '0'
    );
\rd_buf_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(27),
      Q => data5(28),
      R => '0'
    );
\rd_buf_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(28),
      Q => data5(29),
      R => '0'
    );
\rd_buf_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(29),
      Q => data5(30),
      R => '0'
    );
\rd_buf_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(30),
      Q => data5(31),
      R => '0'
    );
\rd_buf_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(16),
      Q => data5(17),
      R => '0'
    );
\rd_buf_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(17),
      Q => data5(18),
      R => '0'
    );
\rd_buf_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(18),
      Q => data5(19),
      R => '0'
    );
\rd_buf_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(19),
      Q => data5(20),
      R => '0'
    );
\rd_buf_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(20),
      Q => data5(21),
      R => '0'
    );
\rd_buf_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(21),
      Q => data5(22),
      R => '0'
    );
\rd_buf_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(22),
      Q => data5(23),
      R => '0'
    );
\rd_buf_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(23),
      Q => data5(24),
      R => '0'
    );
\rd_buf_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => data5(24),
      Q => data5(25),
      R => '0'
    );
\sclk_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFF2F000000"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      I3 => s00_axi_aresetn,
      I4 => \FSM_sequential_state_reg[2]_0\,
      I5 => \^ad1sclk\,
      O => \sclk_i_1__0_n_0\
    );
sclk_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \sclk_i_1__0_n_0\,
      Q => \^ad1sclk\,
      R => '0'
    );
\scsq_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFF1000"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => s00_axi_aresetn,
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => \^ad1csq\,
      O => \scsq_i_1__0_n_0\
    );
scsq_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \scsq_i_1__0_n_0\,
      Q => \^ad1csq\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zedbmg_sys_measdif_0_0_sph1pol1 is
  port (
    mCSn : out STD_LOGIC;
    mSCLK : out STD_LOGIC;
    mMOSI : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    \rd_buf_reg[15]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    \FSM_sequential_state_reg[2]_0\ : in STD_LOGIC;
    start : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_rdata_reg[12]\ : in STD_LOGIC;
    \axi_rdata_reg[12]_0\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    zPushB : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \axi_rdata_reg[11]\ : in STD_LOGIC;
    \axi_rdata_reg[10]\ : in STD_LOGIC;
    \axi_rdata_reg[9]\ : in STD_LOGIC;
    \axi_rdata_reg[8]\ : in STD_LOGIC;
    \axi_rdata_reg[7]\ : in STD_LOGIC;
    zSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_rdata_reg[6]\ : in STD_LOGIC;
    \axi_rdata_reg[5]\ : in STD_LOGIC;
    \axi_rdata_reg[4]\ : in STD_LOGIC;
    \axi_rdata_reg[3]\ : in STD_LOGIC;
    \axi_rdata_reg[2]\ : in STD_LOGIC;
    \axi_rdata_reg[1]\ : in STD_LOGIC;
    max_drdyn : in STD_LOGIC;
    \axi_rdata_reg[0]\ : in STD_LOGIC;
    mMISO : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zedbmg_sys_measdif_0_0_sph1pol1 : entity is "sph1pol1";
end zedbmg_sys_measdif_0_0_sph1pol1;

architecture STRUCTURE of zedbmg_sys_measdif_0_0_sph1pol1 is
  signal \FSM_onehot_ssl_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ssl_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[3]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_reg_n_0_[3]\ : STD_LOGIC;
  signal done : STD_LOGIC;
  signal \^mcsn\ : STD_LOGIC;
  signal \^mmosi\ : STD_LOGIC;
  signal \^msclk\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rd_buf : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rd_buf_0 : STD_LOGIC;
  signal \^rd_buf_reg[15]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sclk_i_1_n_0 : STD_LOGIC;
  signal scsq_i_1_n_0 : STD_LOGIC;
  signal sdo_i_1_n_0 : STD_LOGIC;
  signal start_i : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wr_buf : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \wr_buf[10]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[11]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[12]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[13]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[14]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[15]_i_2_n_0\ : STD_LOGIC;
  signal \wr_buf[15]_i_3_n_0\ : STD_LOGIC;
  signal \wr_buf[15]_i_4_n_0\ : STD_LOGIC;
  signal \wr_buf[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[2]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[3]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[5]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[6]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf[9]_i_1_n_0\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[12]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[13]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[14]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_buf_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_ssl_state[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_ssl_state[2]_i_1\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_ssl_state_reg[0]\ : label is "ssl_idle:001,ssl_start:010,ssl_run:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ssl_state_reg[1]\ : label is "ssl_idle:001,ssl_start:010,ssl_run:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ssl_state_reg[2]\ : label is "ssl_idle:001,ssl_start:010,ssl_run:100,";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "sidle:000,sstart_lo:010,sclk_lo:100,stop_lo:110,sstartx:001,sclk_hi:011,stop_hi:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "sidle:000,sstart_lo:010,sclk_lo:100,stop_lo:110,sstartx:001,sclk_hi:011,stop_hi:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "sidle:000,sstart_lo:010,sclk_lo:100,stop_lo:110,sstartx:001,sclk_hi:011,stop_hi:101";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[1]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[3]_i_2__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_buf[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wr_buf[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wr_buf[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wr_buf[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wr_buf[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wr_buf[15]_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wr_buf[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_buf[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wr_buf[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_buf[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \wr_buf[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wr_buf[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wr_buf[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_buf[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wr_buf[9]_i_1\ : label is "soft_lutpair11";
begin
  SR(0) <= \^sr\(0);
  mCSn <= \^mcsn\;
  mMOSI <= \^mmosi\;
  mSCLK <= \^msclk\;
  \rd_buf_reg[15]_0\(2 downto 0) <= \^rd_buf_reg[15]_0\(2 downto 0);
\FSM_onehot_ssl_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_ssl_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_ssl_state[2]_i_2_n_0\,
      I2 => done,
      O => \FSM_onehot_ssl_state[0]_i_1_n_0\
    );
\FSM_onehot_ssl_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => done,
      I1 => \FSM_onehot_ssl_state[2]_i_2_n_0\,
      I2 => start_i,
      O => \FSM_onehot_ssl_state[1]_i_1_n_0\
    );
\FSM_onehot_ssl_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => start_i,
      I1 => \FSM_onehot_ssl_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_ssl_state_reg_n_0_[2]\,
      O => \FSM_onehot_ssl_state[2]_i_1_n_0\
    );
\FSM_onehot_ssl_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => start_i,
      I3 => state(2),
      I4 => \FSM_onehot_ssl_state[2]_i_3_n_0\,
      O => \FSM_onehot_ssl_state[2]_i_2_n_0\
    );
\FSM_onehot_ssl_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010001000100"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \FSM_onehot_ssl_state_reg_n_0_[2]\,
      I4 => start,
      I5 => done,
      O => \FSM_onehot_ssl_state[2]_i_3_n_0\
    );
\FSM_onehot_ssl_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_ssl_state[0]_i_1_n_0\,
      Q => done,
      S => \^sr\(0)
    );
\FSM_onehot_ssl_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_ssl_state[1]_i_1_n_0\,
      Q => start_i,
      R => \^sr\(0)
    );
\FSM_onehot_ssl_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_onehot_ssl_state[2]_i_1_n_0\,
      Q => \FSM_onehot_ssl_state_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF7600"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => start_i,
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11FFEA00"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \count_reg_n_0_[1]\,
      I3 => \count_reg_n_0_[0]\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFEA00"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => \count_reg_n_0_[0]\,
      I3 => \count_reg_n_0_[1]\,
      I4 => \count_reg_n_0_[3]\,
      I5 => \count_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => \^sr\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => \^sr\(0)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => \^sr\(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(0),
      I1 => rd_buf(0),
      I2 => sel0(1),
      I3 => done,
      I4 => sel0(0),
      I5 => zSwitch(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(10),
      I1 => rd_buf(10),
      I2 => sel0(1),
      I3 => zPushB(2),
      I4 => sel0(0),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(11),
      I1 => rd_buf(11),
      I2 => sel0(1),
      I3 => zPushB(3),
      I4 => sel0(0),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(12),
      I1 => rd_buf(12),
      I2 => sel0(1),
      I3 => zPushB(4),
      I4 => sel0(0),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(1),
      I1 => rd_buf(1),
      I2 => sel0(1),
      I3 => max_drdyn,
      I4 => sel0(0),
      I5 => zSwitch(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(2),
      I1 => rd_buf(2),
      I2 => sel0(1),
      I3 => zSwitch(2),
      I4 => sel0(0),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(3),
      I1 => rd_buf(3),
      I2 => sel0(1),
      I3 => zSwitch(3),
      I4 => sel0(0),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(4),
      I1 => rd_buf(4),
      I2 => sel0(1),
      I3 => zSwitch(4),
      I4 => sel0(0),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(5),
      I1 => rd_buf(5),
      I2 => sel0(1),
      I3 => zSwitch(5),
      I4 => sel0(0),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(6),
      I1 => rd_buf(6),
      I2 => sel0(1),
      I3 => zSwitch(6),
      I4 => sel0(0),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(7),
      I1 => rd_buf(7),
      I2 => sel0(1),
      I3 => zSwitch(7),
      I4 => sel0(0),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(8),
      I1 => rd_buf(8),
      I2 => sel0(1),
      I3 => zPushB(0),
      I4 => sel0(0),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => \axi_rdata_reg[12]_0\(9),
      I1 => rd_buf(9),
      I2 => sel0(1),
      I3 => zPushB(1),
      I4 => sel0(0),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata_reg[0]\,
      O => D(0),
      S => sel0(2)
    );
\axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata_reg[10]\,
      O => D(10),
      S => sel0(2)
    );
\axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata_reg[11]\,
      O => D(11),
      S => sel0(2)
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata_reg[12]\,
      O => D(12),
      S => sel0(2)
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata_reg[1]\,
      O => D(1),
      S => sel0(2)
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata_reg[2]\,
      O => D(2),
      S => sel0(2)
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata_reg[3]\,
      O => D(3),
      S => sel0(2)
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata_reg[4]\,
      O => D(4),
      S => sel0(2)
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata_reg[5]\,
      O => D(5),
      S => sel0(2)
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata_reg[6]\,
      O => D(6),
      S => sel0(2)
    );
\axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata_reg[7]\,
      O => D(7),
      S => sel0(2)
    );
\axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata_reg[8]\,
      O => D(8),
      S => sel0(2)
    );
\axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata_reg[9]\,
      O => D(9),
      S => sel0(2)
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count[3]_i_3_n_0\,
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count[3]_i_3_n_0\,
      O => \count[1]_i_1__0_n_0\
    );
\count[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1FF"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count[3]_i_3_n_0\,
      O => \count[2]_i_1__0_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00820082002A0028"
    )
        port map (
      I0 => \FSM_sequential_state_reg[2]_0\,
      I1 => state(2),
      I2 => state(1),
      I3 => state(0),
      I4 => start_i,
      I5 => \FSM_sequential_state[2]_i_2_n_0\,
      O => count
    );
\count[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE01FFFF"
    )
        port map (
      I0 => \count_reg_n_0_[1]\,
      I1 => \count_reg_n_0_[0]\,
      I2 => \count_reg_n_0_[2]\,
      I3 => \count_reg_n_0_[3]\,
      I4 => \count[3]_i_3_n_0\,
      O => \count[3]_i_2__0_n_0\
    );
\count[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5FFFFF1"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_2_n_0\,
      I1 => start_i,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => \count[3]_i_3_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => count,
      D => \count[0]_i_1_n_0\,
      Q => \count_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => count,
      D => \count[1]_i_1__0_n_0\,
      Q => \count_reg_n_0_[1]\,
      S => \^sr\(0)
    );
\count_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => count,
      D => \count[2]_i_1__0_n_0\,
      Q => \count_reg_n_0_[2]\,
      S => \^sr\(0)
    );
\count_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => count,
      D => \count[3]_i_2__0_n_0\,
      Q => \count_reg_n_0_[3]\,
      S => \^sr\(0)
    );
\rd_buf[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00808000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \FSM_sequential_state_reg[2]_0\,
      I2 => state(0),
      I3 => state(1),
      I4 => state(2),
      O => rd_buf_0
    );
\rd_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => mMISO,
      Q => rd_buf(0),
      R => '0'
    );
\rd_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(9),
      Q => rd_buf(10),
      R => '0'
    );
\rd_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(10),
      Q => rd_buf(11),
      R => '0'
    );
\rd_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(11),
      Q => rd_buf(12),
      R => '0'
    );
\rd_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(12),
      Q => \^rd_buf_reg[15]_0\(0),
      R => '0'
    );
\rd_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => \^rd_buf_reg[15]_0\(0),
      Q => \^rd_buf_reg[15]_0\(1),
      R => '0'
    );
\rd_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => \^rd_buf_reg[15]_0\(1),
      Q => \^rd_buf_reg[15]_0\(2),
      R => '0'
    );
\rd_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(0),
      Q => rd_buf(1),
      R => '0'
    );
\rd_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(1),
      Q => rd_buf(2),
      R => '0'
    );
\rd_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(2),
      Q => rd_buf(3),
      R => '0'
    );
\rd_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(3),
      Q => rd_buf(4),
      R => '0'
    );
\rd_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(4),
      Q => rd_buf(5),
      R => '0'
    );
\rd_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(5),
      Q => rd_buf(6),
      R => '0'
    );
\rd_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(6),
      Q => rd_buf(7),
      R => '0'
    );
\rd_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(7),
      Q => rd_buf(8),
      R => '0'
    );
\rd_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => rd_buf_0,
      D => rd_buf(8),
      Q => rd_buf(9),
      R => '0'
    );
sclk_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"79FFFFFF79000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => state(0),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => s00_axi_aresetn,
      I5 => \^msclk\,
      O => sclk_i_1_n_0
    );
sclk_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sclk_i_1_n_0,
      Q => \^msclk\,
      R => '0'
    );
scsq_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41FFFFFF41000000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => s00_axi_aresetn,
      I5 => \^mcsn\,
      O => scsq_i_1_n_0
    );
scsq_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => scsq_i_1_n_0,
      Q => \^mcsn\,
      R => '0'
    );
sdo_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28FFFFFF28000000"
    )
        port map (
      I0 => p_0_in,
      I1 => state(1),
      I2 => state(2),
      I3 => \FSM_sequential_state_reg[2]_0\,
      I4 => s00_axi_aresetn,
      I5 => \^mmosi\,
      O => sdo_i_1_n_0
    );
sdo_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => sdo_i_1_n_0,
      Q => \^mmosi\,
      R => '0'
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
\wr_buf[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[9]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(10),
      O => \wr_buf[10]_i_1_n_0\
    );
\wr_buf[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[10]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(11),
      O => \wr_buf[11]_i_1_n_0\
    );
\wr_buf[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[11]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(12),
      O => \wr_buf[12]_i_1_n_0\
    );
\wr_buf[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[12]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(13),
      O => \wr_buf[13]_i_1_n_0\
    );
\wr_buf[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[13]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(14),
      O => \wr_buf[14]_i_1_n_0\
    );
\wr_buf[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080800800800000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \FSM_sequential_state_reg[2]_0\,
      I2 => state(1),
      I3 => state(2),
      I4 => state(0),
      I5 => \wr_buf[15]_i_3_n_0\,
      O => wr_buf(15)
    );
\wr_buf[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[14]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(15),
      O => \wr_buf[15]_i_2_n_0\
    );
\wr_buf[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010FF1000"
    )
        port map (
      I0 => \count_reg_n_0_[2]\,
      I1 => \count_reg_n_0_[3]\,
      I2 => \wr_buf[15]_i_4_n_0\,
      I3 => state(2),
      I4 => start_i,
      I5 => state(1),
      O => \wr_buf[15]_i_3_n_0\
    );
\wr_buf[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_reg_n_0_[0]\,
      I1 => \count_reg_n_0_[1]\,
      O => \wr_buf[15]_i_4_n_0\
    );
\wr_buf[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[0]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(1),
      O => \wr_buf[1]_i_1_n_0\
    );
\wr_buf[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[1]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(2),
      O => \wr_buf[2]_i_1_n_0\
    );
\wr_buf[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[2]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(3),
      O => \wr_buf[3]_i_1_n_0\
    );
\wr_buf[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[3]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(4),
      O => \wr_buf[4]_i_1_n_0\
    );
\wr_buf[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[4]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(5),
      O => \wr_buf[5]_i_1_n_0\
    );
\wr_buf[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[5]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(6),
      O => \wr_buf[6]_i_1_n_0\
    );
\wr_buf[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[6]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(7),
      O => \wr_buf[7]_i_1_n_0\
    );
\wr_buf[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[7]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(8),
      O => \wr_buf[8]_i_1_n_0\
    );
\wr_buf[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wr_buf_reg_n_0_[8]\,
      I1 => \count[3]_i_3_n_0\,
      I2 => Q(9),
      O => \wr_buf[9]_i_1_n_0\
    );
\wr_buf_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => Q(0),
      Q => \wr_buf_reg_n_0_[0]\,
      R => '0'
    );
\wr_buf_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[10]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[10]\,
      R => '0'
    );
\wr_buf_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[11]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[11]\,
      R => '0'
    );
\wr_buf_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[12]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[12]\,
      R => '0'
    );
\wr_buf_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[13]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[13]\,
      R => '0'
    );
\wr_buf_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[14]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[14]\,
      R => '0'
    );
\wr_buf_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[15]_i_2_n_0\,
      Q => p_0_in,
      R => '0'
    );
\wr_buf_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[1]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[1]\,
      R => '0'
    );
\wr_buf_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[2]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[2]\,
      R => '0'
    );
\wr_buf_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[3]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[3]\,
      R => '0'
    );
\wr_buf_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[4]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[4]\,
      R => '0'
    );
\wr_buf_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[5]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[5]\,
      R => '0'
    );
\wr_buf_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[6]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[6]\,
      R => '0'
    );
\wr_buf_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[7]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[7]\,
      R => '0'
    );
\wr_buf_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[8]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[8]\,
      R => '0'
    );
\wr_buf_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => wr_buf(15),
      D => \wr_buf[9]_i_1_n_0\,
      Q => \wr_buf_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zedbmg_sys_measdif_0_0_measdif_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    zLED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    md_irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    mCSn : out STD_LOGIC;
    mSCLK : out STD_LOGIC;
    mMOSI : out STD_LOGIC;
    AD1Sclk : out STD_LOGIC;
    AD1csq : out STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mDRDYn : in STD_LOGIC;
    mMISO : in STD_LOGIC;
    sdiAD_0 : in STD_LOGIC;
    sdiAD_1 : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    zPushB : in STD_LOGIC_VECTOR ( 4 downto 0 );
    zSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zedbmg_sys_measdif_0_0_measdif_v1_0_S00_AXI : entity is "measdif_v1_0_S00_AXI";
end zedbmg_sys_measdif_0_0_measdif_v1_0_S00_AXI;

architecture STRUCTURE of zedbmg_sys_measdif_0_0_measdif_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal adcRX_n_21 : STD_LOGIC;
  signal adcRX_n_22 : STD_LOGIC;
  signal adcRX_n_23 : STD_LOGIC;
  signal adcRX_n_24 : STD_LOGIC;
  signal adcRX_n_25 : STD_LOGIC;
  signal adcRX_n_26 : STD_LOGIC;
  signal adcRX_n_27 : STD_LOGIC;
  signal adcRX_n_28 : STD_LOGIC;
  signal adcRX_n_29 : STD_LOGIC;
  signal adcRX_n_30 : STD_LOGIC;
  signal adcRX_n_31 : STD_LOGIC;
  signal adcRX_n_32 : STD_LOGIC;
  signal adcRX_n_33 : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \clkdiv_p.cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_p.cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \clkdiv_p.cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal iTimer : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \iTimer0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__0_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__0_n_1\ : STD_LOGIC;
  signal \iTimer0_carry__0_n_2\ : STD_LOGIC;
  signal \iTimer0_carry__0_n_3\ : STD_LOGIC;
  signal \iTimer0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__1_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__1_n_1\ : STD_LOGIC;
  signal \iTimer0_carry__1_n_2\ : STD_LOGIC;
  signal \iTimer0_carry__1_n_3\ : STD_LOGIC;
  signal \iTimer0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__2_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__2_n_1\ : STD_LOGIC;
  signal \iTimer0_carry__2_n_2\ : STD_LOGIC;
  signal \iTimer0_carry__2_n_3\ : STD_LOGIC;
  signal \iTimer0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__3_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__3_n_1\ : STD_LOGIC;
  signal \iTimer0_carry__3_n_2\ : STD_LOGIC;
  signal \iTimer0_carry__3_n_3\ : STD_LOGIC;
  signal \iTimer0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \iTimer0_carry__4_n_2\ : STD_LOGIC;
  signal \iTimer0_carry__4_n_3\ : STD_LOGIC;
  signal iTimer0_carry_i_1_n_0 : STD_LOGIC;
  signal iTimer0_carry_i_2_n_0 : STD_LOGIC;
  signal iTimer0_carry_i_3_n_0 : STD_LOGIC;
  signal iTimer0_carry_i_4_n_0 : STD_LOGIC;
  signal iTimer0_carry_n_0 : STD_LOGIC;
  signal iTimer0_carry_n_1 : STD_LOGIC;
  signal iTimer0_carry_n_2 : STD_LOGIC;
  signal iTimer0_carry_n_3 : STD_LOGIC;
  signal \iTimer[23]_i_1_n_0\ : STD_LOGIC;
  signal iTimer_0 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal irq_pulse : STD_LOGIC;
  signal irq_pulse_1 : STD_LOGIC;
  signal irq_pulse_i_2_n_0 : STD_LOGIC;
  signal irq_pulse_i_3_n_0 : STD_LOGIC;
  signal irq_pulse_i_4_n_0 : STD_LOGIC;
  signal irq_pulse_i_5_n_0 : STD_LOGIC;
  signal irq_pulse_i_6_n_0 : STD_LOGIC;
  signal irq_pulse_i_7_n_0 : STD_LOGIC;
  signal max_drdyn : STD_LOGIC;
  signal max_pmod_n_3 : STD_LOGIC;
  signal max_start_i_1_n_0 : STD_LOGIC;
  signal \^md_irq\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 to 7 );
  signal rd_buf : STD_LOGIC_VECTOR ( 15 downto 13 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0[7]_i_3_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal spi_transmp_i_1_n_0 : STD_LOGIC;
  signal spi_transmp_i_2_n_0 : STD_LOGIC;
  signal spi_transmp_reg_n_0 : STD_LOGIC;
  signal \spi_trr.trcnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_trr.trcnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_trr.trcnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_trr.trcnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_trr.trcnt[4]_i_1_n_0\ : STD_LOGIC;
  signal spiclk_p_i_1_n_0 : STD_LOGIC;
  signal spiclk_p_reg_n_0 : STD_LOGIC;
  signal start : STD_LOGIC;
  signal start_adc_i_1_n_0 : STD_LOGIC;
  signal start_adc_reg_n_0 : STD_LOGIC;
  signal trcnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xirq_i_1_n_0 : STD_LOGIC;
  signal \NLW_iTimer0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_iTimer0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of axi_awready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \clkdiv_p.cnt[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \clkdiv_p.cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of iTimer0_carry : label is 35;
  attribute ADDER_THRESHOLD of \iTimer0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \iTimer0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \iTimer0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \iTimer0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \iTimer0_carry__4\ : label is 35;
  attribute SOFT_HLUTNM of \iTimer[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \iTimer[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \iTimer[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \iTimer[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \iTimer[13]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \iTimer[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \iTimer[15]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \iTimer[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \iTimer[17]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \iTimer[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \iTimer[19]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \iTimer[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \iTimer[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \iTimer[21]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \iTimer[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \iTimer[23]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \iTimer[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \iTimer[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \iTimer[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \iTimer[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \iTimer[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \iTimer[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \iTimer[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \iTimer[9]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of max_start_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \slv_reg0[7]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of spi_transmp_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \spi_trr.trcnt[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spi_trr.trcnt[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \spi_trr.trcnt[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of start_adc_i_1 : label is "soft_lutpair18";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  md_irq <= \^md_irq\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
adcRX: entity work.zedbmg_sys_measdif_0_0_adc2lane
     port map (
      AD1Sclk => AD1Sclk,
      AD1csq => AD1csq,
      D(18 downto 0) => reg_data_out(31 downto 13),
      \FSM_onehot_ssl_state_reg[2]_0\ => start_adc_reg_n_0,
      \FSM_sequential_state_reg[2]_0\ => spiclk_p_reg_n_0,
      Q(18) => \slv_reg3_reg_n_0_[31]\,
      Q(17) => slv_reg3(30),
      Q(16) => \slv_reg3_reg_n_0_[29]\,
      Q(15) => \slv_reg3_reg_n_0_[28]\,
      Q(14) => \slv_reg3_reg_n_0_[27]\,
      Q(13) => \slv_reg3_reg_n_0_[26]\,
      Q(12) => \slv_reg3_reg_n_0_[25]\,
      Q(11) => \slv_reg3_reg_n_0_[24]\,
      Q(10) => \slv_reg3_reg_n_0_[23]\,
      Q(9) => \slv_reg3_reg_n_0_[22]\,
      Q(8) => \slv_reg3_reg_n_0_[21]\,
      Q(7) => \slv_reg3_reg_n_0_[20]\,
      Q(6) => \slv_reg3_reg_n_0_[19]\,
      Q(5) => \slv_reg3_reg_n_0_[18]\,
      Q(4) => \slv_reg3_reg_n_0_[17]\,
      Q(3) => \slv_reg3_reg_n_0_[16]\,
      Q(2) => \slv_reg3_reg_n_0_[15]\,
      Q(1) => \slv_reg3_reg_n_0_[14]\,
      Q(0) => \slv_reg3_reg_n_0_[13]\,
      SR(0) => max_pmod_n_3,
      \axi_rdata_reg[15]\(2 downto 0) => rd_buf(15 downto 13),
      \axi_rdata_reg[31]\(31 downto 0) => slv_reg7(31 downto 0),
      \axi_rdata_reg[31]_0\(31 downto 0) => slv_reg6(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sdiAD_0 => sdiAD_0,
      sdiAD_1 => sdiAD_1,
      sel0(2 downto 0) => sel0(2 downto 0),
      \slv_reg7_reg[0]\ => adcRX_n_33,
      \slv_reg7_reg[10]\ => adcRX_n_23,
      \slv_reg7_reg[11]\ => adcRX_n_22,
      \slv_reg7_reg[12]\ => adcRX_n_21,
      \slv_reg7_reg[1]\ => adcRX_n_32,
      \slv_reg7_reg[2]\ => adcRX_n_31,
      \slv_reg7_reg[3]\ => adcRX_n_30,
      \slv_reg7_reg[4]\ => adcRX_n_29,
      \slv_reg7_reg[5]\ => adcRX_n_28,
      \slv_reg7_reg[6]\ => adcRX_n_27,
      \slv_reg7_reg[7]\ => adcRX_n_26,
      \slv_reg7_reg[8]\ => adcRX_n_25,
      \slv_reg7_reg[9]\ => adcRX_n_24
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF8888"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^s00_axi_bvalid\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => aw_en_reg_n_0,
      I5 => \^s_axi_awready\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => max_pmod_n_3
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      S => max_pmod_n_3
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      S => max_pmod_n_3
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      S => max_pmod_n_3
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => max_pmod_n_3
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => max_pmod_n_3
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => max_pmod_n_3
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => max_pmod_n_3
    );
axi_awready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => max_pmod_n_3
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => max_pmod_n_3
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => max_pmod_n_3
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => max_pmod_n_3
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => max_pmod_n_3
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => max_pmod_n_3
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => max_pmod_n_3
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => max_pmod_n_3
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => max_pmod_n_3
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => max_pmod_n_3
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => max_pmod_n_3
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => max_pmod_n_3
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => max_pmod_n_3
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => max_pmod_n_3
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => max_pmod_n_3
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => max_pmod_n_3
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => max_pmod_n_3
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => max_pmod_n_3
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => max_pmod_n_3
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => max_pmod_n_3
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => max_pmod_n_3
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => max_pmod_n_3
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => max_pmod_n_3
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => max_pmod_n_3
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => max_pmod_n_3
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => max_pmod_n_3
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => max_pmod_n_3
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => max_pmod_n_3
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => max_pmod_n_3
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => max_pmod_n_3
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => max_pmod_n_3
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => max_pmod_n_3
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => max_pmod_n_3
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => max_pmod_n_3
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => max_pmod_n_3
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => max_pmod_n_3
    );
\clkdiv_p.cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(2),
      I2 => cnt(0),
      O => \clkdiv_p.cnt[0]_i_1_n_0\
    );
\clkdiv_p.cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C2"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \clkdiv_p.cnt[1]_i_1_n_0\
    );
\clkdiv_p.cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      O => \clkdiv_p.cnt[2]_i_1_n_0\
    );
\clkdiv_p.cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clkdiv_p.cnt[0]_i_1_n_0\,
      Q => cnt(0),
      R => max_pmod_n_3
    );
\clkdiv_p.cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clkdiv_p.cnt[1]_i_1_n_0\,
      Q => cnt(1),
      R => max_pmod_n_3
    );
\clkdiv_p.cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \clkdiv_p.cnt[2]_i_1_n_0\,
      Q => cnt(2),
      S => max_pmod_n_3
    );
iTimer0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => iTimer0_carry_n_0,
      CO(2) => iTimer0_carry_n_1,
      CO(1) => iTimer0_carry_n_2,
      CO(0) => iTimer0_carry_n_3,
      CYINIT => iTimer(0),
      DI(3 downto 0) => iTimer(4 downto 1),
      O(3 downto 0) => data1(4 downto 1),
      S(3) => iTimer0_carry_i_1_n_0,
      S(2) => iTimer0_carry_i_2_n_0,
      S(1) => iTimer0_carry_i_3_n_0,
      S(0) => iTimer0_carry_i_4_n_0
    );
\iTimer0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => iTimer0_carry_n_0,
      CO(3) => \iTimer0_carry__0_n_0\,
      CO(2) => \iTimer0_carry__0_n_1\,
      CO(1) => \iTimer0_carry__0_n_2\,
      CO(0) => \iTimer0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => iTimer(8 downto 5),
      O(3 downto 0) => data1(8 downto 5),
      S(3) => \iTimer0_carry__0_i_1_n_0\,
      S(2) => \iTimer0_carry__0_i_2_n_0\,
      S(1) => \iTimer0_carry__0_i_3_n_0\,
      S(0) => \iTimer0_carry__0_i_4_n_0\
    );
\iTimer0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(8),
      O => \iTimer0_carry__0_i_1_n_0\
    );
\iTimer0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(7),
      O => \iTimer0_carry__0_i_2_n_0\
    );
\iTimer0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(6),
      O => \iTimer0_carry__0_i_3_n_0\
    );
\iTimer0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(5),
      O => \iTimer0_carry__0_i_4_n_0\
    );
\iTimer0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimer0_carry__0_n_0\,
      CO(3) => \iTimer0_carry__1_n_0\,
      CO(2) => \iTimer0_carry__1_n_1\,
      CO(1) => \iTimer0_carry__1_n_2\,
      CO(0) => \iTimer0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => iTimer(12 downto 9),
      O(3 downto 0) => data1(12 downto 9),
      S(3) => \iTimer0_carry__1_i_1_n_0\,
      S(2) => \iTimer0_carry__1_i_2_n_0\,
      S(1) => \iTimer0_carry__1_i_3_n_0\,
      S(0) => \iTimer0_carry__1_i_4_n_0\
    );
\iTimer0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(12),
      O => \iTimer0_carry__1_i_1_n_0\
    );
\iTimer0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(11),
      O => \iTimer0_carry__1_i_2_n_0\
    );
\iTimer0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(10),
      O => \iTimer0_carry__1_i_3_n_0\
    );
\iTimer0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(9),
      O => \iTimer0_carry__1_i_4_n_0\
    );
\iTimer0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimer0_carry__1_n_0\,
      CO(3) => \iTimer0_carry__2_n_0\,
      CO(2) => \iTimer0_carry__2_n_1\,
      CO(1) => \iTimer0_carry__2_n_2\,
      CO(0) => \iTimer0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => iTimer(16 downto 13),
      O(3 downto 0) => data1(16 downto 13),
      S(3) => \iTimer0_carry__2_i_1_n_0\,
      S(2) => \iTimer0_carry__2_i_2_n_0\,
      S(1) => \iTimer0_carry__2_i_3_n_0\,
      S(0) => \iTimer0_carry__2_i_4_n_0\
    );
\iTimer0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(16),
      O => \iTimer0_carry__2_i_1_n_0\
    );
\iTimer0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(15),
      O => \iTimer0_carry__2_i_2_n_0\
    );
\iTimer0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(14),
      O => \iTimer0_carry__2_i_3_n_0\
    );
\iTimer0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(13),
      O => \iTimer0_carry__2_i_4_n_0\
    );
\iTimer0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimer0_carry__2_n_0\,
      CO(3) => \iTimer0_carry__3_n_0\,
      CO(2) => \iTimer0_carry__3_n_1\,
      CO(1) => \iTimer0_carry__3_n_2\,
      CO(0) => \iTimer0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => iTimer(20 downto 17),
      O(3 downto 0) => data1(20 downto 17),
      S(3) => \iTimer0_carry__3_i_1_n_0\,
      S(2) => \iTimer0_carry__3_i_2_n_0\,
      S(1) => \iTimer0_carry__3_i_3_n_0\,
      S(0) => \iTimer0_carry__3_i_4_n_0\
    );
\iTimer0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(20),
      O => \iTimer0_carry__3_i_1_n_0\
    );
\iTimer0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(19),
      O => \iTimer0_carry__3_i_2_n_0\
    );
\iTimer0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(18),
      O => \iTimer0_carry__3_i_3_n_0\
    );
\iTimer0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(17),
      O => \iTimer0_carry__3_i_4_n_0\
    );
\iTimer0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \iTimer0_carry__3_n_0\,
      CO(3 downto 2) => \NLW_iTimer0_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \iTimer0_carry__4_n_2\,
      CO(0) => \iTimer0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => iTimer(22 downto 21),
      O(3) => \NLW_iTimer0_carry__4_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(23 downto 21),
      S(3) => '0',
      S(2) => \iTimer0_carry__4_i_1_n_0\,
      S(1) => \iTimer0_carry__4_i_2_n_0\,
      S(0) => \iTimer0_carry__4_i_3_n_0\
    );
\iTimer0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(23),
      O => \iTimer0_carry__4_i_1_n_0\
    );
\iTimer0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(22),
      O => \iTimer0_carry__4_i_2_n_0\
    );
\iTimer0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(21),
      O => \iTimer0_carry__4_i_3_n_0\
    );
iTimer0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(4),
      O => iTimer0_carry_i_1_n_0
    );
iTimer0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(3),
      O => iTimer0_carry_i_2_n_0
    );
iTimer0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(2),
      O => iTimer0_carry_i_3_n_0
    );
iTimer0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => iTimer(1),
      O => iTimer0_carry_i_4_n_0
    );
\iTimer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => iTimer(0),
      I1 => \slv_reg3_reg_n_0_[0]\,
      I2 => irq_pulse_1,
      O => iTimer_0(0)
    );
\iTimer[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[10]\,
      I1 => irq_pulse_1,
      I2 => data1(10),
      O => iTimer_0(10)
    );
\iTimer[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[11]\,
      I1 => irq_pulse_1,
      I2 => data1(11),
      O => iTimer_0(11)
    );
\iTimer[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[12]\,
      I1 => irq_pulse_1,
      I2 => data1(12),
      O => iTimer_0(12)
    );
\iTimer[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[13]\,
      I1 => irq_pulse_1,
      I2 => data1(13),
      O => iTimer_0(13)
    );
\iTimer[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[14]\,
      I1 => irq_pulse_1,
      I2 => data1(14),
      O => iTimer_0(14)
    );
\iTimer[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[15]\,
      I1 => irq_pulse_1,
      I2 => data1(15),
      O => iTimer_0(15)
    );
\iTimer[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[16]\,
      I1 => irq_pulse_1,
      I2 => data1(16),
      O => iTimer_0(16)
    );
\iTimer[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[17]\,
      I1 => irq_pulse_1,
      I2 => data1(17),
      O => iTimer_0(17)
    );
\iTimer[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[18]\,
      I1 => irq_pulse_1,
      I2 => data1(18),
      O => iTimer_0(18)
    );
\iTimer[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[19]\,
      I1 => irq_pulse_1,
      I2 => data1(19),
      O => iTimer_0(19)
    );
\iTimer[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[1]\,
      I1 => irq_pulse_1,
      I2 => data1(1),
      O => iTimer_0(1)
    );
\iTimer[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[20]\,
      I1 => irq_pulse_1,
      I2 => data1(20),
      O => iTimer_0(20)
    );
\iTimer[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[21]\,
      I1 => irq_pulse_1,
      I2 => data1(21),
      O => iTimer_0(21)
    );
\iTimer[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[22]\,
      I1 => irq_pulse_1,
      I2 => data1(22),
      O => iTimer_0(22)
    );
\iTimer[23]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[31]\,
      O => \iTimer[23]_i_1_n_0\
    );
\iTimer[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[23]\,
      I1 => irq_pulse_1,
      I2 => data1(23),
      O => iTimer_0(23)
    );
\iTimer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[2]\,
      I1 => irq_pulse_1,
      I2 => data1(2),
      O => iTimer_0(2)
    );
\iTimer[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[3]\,
      I1 => irq_pulse_1,
      I2 => data1(3),
      O => iTimer_0(3)
    );
\iTimer[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[4]\,
      I1 => irq_pulse_1,
      I2 => data1(4),
      O => iTimer_0(4)
    );
\iTimer[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[5]\,
      I1 => irq_pulse_1,
      I2 => data1(5),
      O => iTimer_0(5)
    );
\iTimer[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[6]\,
      I1 => irq_pulse_1,
      I2 => data1(6),
      O => iTimer_0(6)
    );
\iTimer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[7]\,
      I1 => irq_pulse_1,
      I2 => data1(7),
      O => iTimer_0(7)
    );
\iTimer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[8]\,
      I1 => irq_pulse_1,
      I2 => data1(8),
      O => iTimer_0(8)
    );
\iTimer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[9]\,
      I1 => irq_pulse_1,
      I2 => data1(9),
      O => iTimer_0(9)
    );
\iTimer_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(0),
      Q => iTimer(0),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(10),
      Q => iTimer(10),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[11]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(11),
      Q => iTimer(11),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(12),
      Q => iTimer(12),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[13]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(13),
      Q => iTimer(13),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[14]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(14),
      Q => iTimer(14),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[15]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(15),
      Q => iTimer(15),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[16]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(16),
      Q => iTimer(16),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[17]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(17),
      Q => iTimer(17),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[18]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(18),
      Q => iTimer(18),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[19]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(19),
      Q => iTimer(19),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(1),
      Q => iTimer(1),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[20]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(20),
      Q => iTimer(20),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[21]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(21),
      Q => iTimer(21),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[22]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(22),
      Q => iTimer(22),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[23]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(23),
      Q => iTimer(23),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(2),
      Q => iTimer(2),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(3),
      Q => iTimer(3),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(4),
      Q => iTimer(4),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(5),
      Q => iTimer(5),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(6),
      Q => iTimer(6),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(7),
      Q => iTimer(7),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(8),
      Q => iTimer(8),
      S => \iTimer[23]_i_1_n_0\
    );
\iTimer_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => iTimer_0(9),
      Q => iTimer(9),
      S => \iTimer[23]_i_1_n_0\
    );
irq_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => irq_pulse_i_2_n_0,
      I1 => irq_pulse_i_3_n_0,
      I2 => irq_pulse_i_4_n_0,
      I3 => irq_pulse_i_5_n_0,
      I4 => irq_pulse_i_6_n_0,
      I5 => irq_pulse_i_7_n_0,
      O => irq_pulse_1
    );
irq_pulse_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iTimer(20),
      I1 => iTimer(21),
      I2 => iTimer(22),
      I3 => iTimer(14),
      O => irq_pulse_i_2_n_0
    );
irq_pulse_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => iTimer(7),
      I1 => iTimer(6),
      I2 => iTimer(3),
      I3 => iTimer(15),
      O => irq_pulse_i_3_n_0
    );
irq_pulse_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iTimer(10),
      I1 => iTimer(8),
      I2 => iTimer(0),
      I3 => iTimer(5),
      O => irq_pulse_i_4_n_0
    );
irq_pulse_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iTimer(9),
      I1 => iTimer(11),
      I2 => iTimer(2),
      I3 => iTimer(17),
      O => irq_pulse_i_5_n_0
    );
irq_pulse_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iTimer(16),
      I1 => iTimer(1),
      I2 => iTimer(13),
      I3 => iTimer(18),
      O => irq_pulse_i_6_n_0
    );
irq_pulse_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => iTimer(4),
      I1 => iTimer(23),
      I2 => iTimer(19),
      I3 => iTimer(12),
      O => irq_pulse_i_7_n_0
    );
irq_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => irq_pulse_1,
      Q => irq_pulse,
      R => \iTimer[23]_i_1_n_0\
    );
max_drdyn_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => mDRDYn,
      Q => max_drdyn,
      S => max_pmod_n_3
    );
max_pmod: entity work.zedbmg_sys_measdif_0_0_sph1pol1
     port map (
      D(12 downto 0) => reg_data_out(12 downto 0),
      \FSM_sequential_state_reg[2]_0\ => spi_transmp_reg_n_0,
      Q(15 downto 0) => slv_reg1(15 downto 0),
      SR(0) => max_pmod_n_3,
      \axi_rdata_reg[0]\ => adcRX_n_33,
      \axi_rdata_reg[10]\ => adcRX_n_23,
      \axi_rdata_reg[11]\ => adcRX_n_22,
      \axi_rdata_reg[12]\ => adcRX_n_21,
      \axi_rdata_reg[12]_0\(12) => \slv_reg3_reg_n_0_[12]\,
      \axi_rdata_reg[12]_0\(11) => \slv_reg3_reg_n_0_[11]\,
      \axi_rdata_reg[12]_0\(10) => \slv_reg3_reg_n_0_[10]\,
      \axi_rdata_reg[12]_0\(9) => \slv_reg3_reg_n_0_[9]\,
      \axi_rdata_reg[12]_0\(8) => \slv_reg3_reg_n_0_[8]\,
      \axi_rdata_reg[12]_0\(7) => \slv_reg3_reg_n_0_[7]\,
      \axi_rdata_reg[12]_0\(6) => \slv_reg3_reg_n_0_[6]\,
      \axi_rdata_reg[12]_0\(5) => \slv_reg3_reg_n_0_[5]\,
      \axi_rdata_reg[12]_0\(4) => \slv_reg3_reg_n_0_[4]\,
      \axi_rdata_reg[12]_0\(3) => \slv_reg3_reg_n_0_[3]\,
      \axi_rdata_reg[12]_0\(2) => \slv_reg3_reg_n_0_[2]\,
      \axi_rdata_reg[12]_0\(1) => \slv_reg3_reg_n_0_[1]\,
      \axi_rdata_reg[12]_0\(0) => \slv_reg3_reg_n_0_[0]\,
      \axi_rdata_reg[1]\ => adcRX_n_32,
      \axi_rdata_reg[2]\ => adcRX_n_31,
      \axi_rdata_reg[3]\ => adcRX_n_30,
      \axi_rdata_reg[4]\ => adcRX_n_29,
      \axi_rdata_reg[5]\ => adcRX_n_28,
      \axi_rdata_reg[6]\ => adcRX_n_27,
      \axi_rdata_reg[7]\ => adcRX_n_26,
      \axi_rdata_reg[8]\ => adcRX_n_25,
      \axi_rdata_reg[9]\ => adcRX_n_24,
      mCSn => mCSn,
      mMISO => mMISO,
      mMOSI => mMOSI,
      mSCLK => mSCLK,
      max_drdyn => max_drdyn,
      \rd_buf_reg[15]_0\(2 downto 0) => rd_buf(15 downto 13),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sel0(2 downto 0) => sel0(2 downto 0),
      start => start,
      zPushB(4 downto 0) => zPushB(4 downto 0),
      zSwitch(7 downto 0) => zSwitch(7 downto 0)
    );
max_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => \slv_reg0[7]_i_3_n_0\,
      I4 => s00_axi_aresetn,
      O => max_start_i_1_n_0
    );
max_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => max_start_i_1_n_0,
      Q => start,
      R => '0'
    );
\slv_reg0[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg0[7]_i_3_n_0\,
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(2),
      I4 => p_0_in(1),
      O => p_1_in(7)
    );
\slv_reg0[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      O => \slv_reg0[7]_i_3_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => zLED(0),
      R => max_pmod_n_3
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => zLED(1),
      R => max_pmod_n_3
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => zLED(2),
      R => max_pmod_n_3
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => zLED(3),
      R => max_pmod_n_3
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => zLED(4),
      R => max_pmod_n_3
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => zLED(5),
      R => max_pmod_n_3
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => zLED(6),
      R => max_pmod_n_3
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => zLED(7),
      R => max_pmod_n_3
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \slv_reg0[7]_i_3_n_0\,
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => p_0_in(2),
      I1 => \slv_reg0[7]_i_3_n_0\,
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => max_pmod_n_3
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => max_pmod_n_3
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => max_pmod_n_3
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => max_pmod_n_3
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => max_pmod_n_3
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => max_pmod_n_3
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => max_pmod_n_3
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => max_pmod_n_3
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => max_pmod_n_3
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => max_pmod_n_3
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => max_pmod_n_3
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => max_pmod_n_3
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => max_pmod_n_3
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => max_pmod_n_3
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => max_pmod_n_3
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => max_pmod_n_3
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => s00_axi_wstrb(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => max_pmod_n_3
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg3_reg_n_0_[31]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => max_pmod_n_3
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => max_pmod_n_3
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => max_pmod_n_3
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => max_pmod_n_3
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => max_pmod_n_3
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => max_pmod_n_3
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => max_pmod_n_3
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => max_pmod_n_3
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => max_pmod_n_3
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => max_pmod_n_3
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => max_pmod_n_3
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => max_pmod_n_3
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => max_pmod_n_3
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => max_pmod_n_3
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => max_pmod_n_3
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => max_pmod_n_3
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => max_pmod_n_3
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => max_pmod_n_3
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => max_pmod_n_3
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => max_pmod_n_3
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => max_pmod_n_3
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => max_pmod_n_3
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => max_pmod_n_3
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => max_pmod_n_3
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => max_pmod_n_3
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => max_pmod_n_3
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => max_pmod_n_3
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => max_pmod_n_3
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => max_pmod_n_3
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => max_pmod_n_3
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => max_pmod_n_3
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => max_pmod_n_3
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => max_pmod_n_3
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => max_pmod_n_3
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(2),
      I4 => \slv_reg0[7]_i_3_n_0\,
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => max_pmod_n_3
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => max_pmod_n_3
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => max_pmod_n_3
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => max_pmod_n_3
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => max_pmod_n_3
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => max_pmod_n_3
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => max_pmod_n_3
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => max_pmod_n_3
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => max_pmod_n_3
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => max_pmod_n_3
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => max_pmod_n_3
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => max_pmod_n_3
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => max_pmod_n_3
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => max_pmod_n_3
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => max_pmod_n_3
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => max_pmod_n_3
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => max_pmod_n_3
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => max_pmod_n_3
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => max_pmod_n_3
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => max_pmod_n_3
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => max_pmod_n_3
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => max_pmod_n_3
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => max_pmod_n_3
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => max_pmod_n_3
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => max_pmod_n_3
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => max_pmod_n_3
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => max_pmod_n_3
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => max_pmod_n_3
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => max_pmod_n_3
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => max_pmod_n_3
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => max_pmod_n_3
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => max_pmod_n_3
    );
spi_transmp_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => spi_transmp_reg_n_0,
      I1 => spi_transmp_i_2_n_0,
      I2 => s00_axi_aresetn,
      O => spi_transmp_i_1_n_0
    );
spi_transmp_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => trcnt(4),
      I1 => trcnt(2),
      I2 => trcnt(1),
      I3 => trcnt(0),
      I4 => trcnt(3),
      O => spi_transmp_i_2_n_0
    );
spi_transmp_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spi_transmp_i_1_n_0,
      Q => spi_transmp_reg_n_0,
      R => '0'
    );
\spi_trr.trcnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => trcnt(3),
      I1 => trcnt(1),
      I2 => trcnt(2),
      I3 => trcnt(4),
      I4 => trcnt(0),
      O => \spi_trr.trcnt[0]_i_1_n_0\
    );
\spi_trr.trcnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0000FE"
    )
        port map (
      I0 => trcnt(3),
      I1 => trcnt(2),
      I2 => trcnt(4),
      I3 => trcnt(1),
      I4 => trcnt(0),
      O => \spi_trr.trcnt[1]_i_1_n_0\
    );
\spi_trr.trcnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0000E"
    )
        port map (
      I0 => trcnt(3),
      I1 => trcnt(4),
      I2 => trcnt(0),
      I3 => trcnt(1),
      I4 => trcnt(2),
      O => \spi_trr.trcnt[2]_i_1_n_0\
    );
\spi_trr.trcnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => trcnt(2),
      I1 => trcnt(1),
      I2 => trcnt(0),
      I3 => trcnt(3),
      O => \spi_trr.trcnt[3]_i_1_n_0\
    );
\spi_trr.trcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => trcnt(4),
      I1 => trcnt(2),
      I2 => trcnt(1),
      I3 => trcnt(0),
      I4 => trcnt(3),
      O => \spi_trr.trcnt[4]_i_1_n_0\
    );
\spi_trr.trcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \spi_trr.trcnt[0]_i_1_n_0\,
      Q => trcnt(0),
      R => max_pmod_n_3
    );
\spi_trr.trcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \spi_trr.trcnt[1]_i_1_n_0\,
      Q => trcnt(1),
      R => max_pmod_n_3
    );
\spi_trr.trcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \spi_trr.trcnt[2]_i_1_n_0\,
      Q => trcnt(2),
      R => max_pmod_n_3
    );
\spi_trr.trcnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \spi_trr.trcnt[3]_i_1_n_0\,
      Q => trcnt(3),
      S => max_pmod_n_3
    );
\spi_trr.trcnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \spi_trr.trcnt[4]_i_1_n_0\,
      Q => trcnt(4),
      S => max_pmod_n_3
    );
spiclk_p_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0003AAAA"
    )
        port map (
      I0 => spiclk_p_reg_n_0,
      I1 => cnt(2),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => s00_axi_aresetn,
      O => spiclk_p_i_1_n_0
    );
spiclk_p_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => spiclk_p_i_1_n_0,
      Q => spiclk_p_reg_n_0,
      R => '0'
    );
start_adc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \slv_reg0[7]_i_3_n_0\,
      I4 => s00_axi_aresetn,
      O => start_adc_i_1_n_0
    );
start_adc_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => start_adc_i_1_n_0,
      Q => start_adc_reg_n_0,
      R => '0'
    );
xirq_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^md_irq\,
      I1 => irq_pulse,
      I2 => s00_axi_aresetn,
      I3 => slv_reg3(30),
      O => xirq_i_1_n_0
    );
xirq_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => xirq_i_1_n_0,
      Q => \^md_irq\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zedbmg_sys_measdif_0_0_measdif_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    zLED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    md_irq : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    mCSn : out STD_LOGIC;
    mSCLK : out STD_LOGIC;
    mMOSI : out STD_LOGIC;
    AD1Sclk : out STD_LOGIC;
    AD1csq : out STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mDRDYn : in STD_LOGIC;
    mMISO : in STD_LOGIC;
    sdiAD_0 : in STD_LOGIC;
    sdiAD_1 : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    zPushB : in STD_LOGIC_VECTOR ( 4 downto 0 );
    zSwitch : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zedbmg_sys_measdif_0_0_measdif_v1_0 : entity is "measdif_v1_0";
end zedbmg_sys_measdif_0_0_measdif_v1_0;

architecture STRUCTURE of zedbmg_sys_measdif_0_0_measdif_v1_0 is
begin
measdif_v1_0_S00_AXI_inst: entity work.zedbmg_sys_measdif_0_0_measdif_v1_0_S00_AXI
     port map (
      AD1Sclk => AD1Sclk,
      AD1csq => AD1csq,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      mCSn => mCSn,
      mDRDYn => mDRDYn,
      mMISO => mMISO,
      mMOSI => mMOSI,
      mSCLK => mSCLK,
      md_irq => md_irq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sdiAD_0 => sdiAD_0,
      sdiAD_1 => sdiAD_1,
      zLED(7 downto 0) => zLED(7 downto 0),
      zPushB(4 downto 0) => zPushB(4 downto 0),
      zSwitch(7 downto 0) => zSwitch(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zedbmg_sys_measdif_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zedbmg_sys_measdif_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zedbmg_sys_measdif_0_0 : entity is "zedbmg_sys_measdif_0_0,measdif_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of zedbmg_sys_measdif_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of zedbmg_sys_measdif_0_0 : entity is "measdif_v1_0,Vivado 2022.1";
end zedbmg_sys_measdif_0_0;

architecture STRUCTURE of zedbmg_sys_measdif_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of md_irq : signal is "xilinx.com:signal:interrupt:1.0 md_irq INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of md_irq : signal is "XIL_INTERFACENAME md_irq, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zedbmg_sys_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN zedbmg_sys_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.zedbmg_sys_measdif_0_0_measdif_v1_0
     port map (
      AD1Sclk => AD1Sclk,
      AD1csq => AD1csq,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      mCSn => mCSn,
      mDRDYn => mDRDYn,
      mMISO => mMISO,
      mMOSI => mMOSI,
      mSCLK => mSCLK,
      md_irq => md_irq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sdiAD_0 => sdiAD_0,
      sdiAD_1 => sdiAD_1,
      zLED(7 downto 0) => zLED(7 downto 0),
      zPushB(4 downto 0) => zPushB(4 downto 0),
      zSwitch(7 downto 0) => zSwitch(7 downto 0)
    );
end STRUCTURE;
