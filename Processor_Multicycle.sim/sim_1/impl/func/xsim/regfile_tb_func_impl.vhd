-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Mar 22 13:20:34 2024
-- Host        : yannos running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Yannos/FILES/PROGRAMS/FPGA/VIVADO/MSc_Control_and_Computing-UoA/PROJECTS/Project_2/Processor_Multicycle/Processor_Multicycle.sim/sim_1/impl/func/xsim/regfile_tb_func_impl.vhd
-- Design      : regfile
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity regfile_core is
  port (
    RD1_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RD2_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    WD3_IBUF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RegWrite_IBUF : in STD_LOGIC;
    A3_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    A1_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    A2_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    R15_IBUF : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end regfile_core;

architecture STRUCTURE of regfile_core is
  signal DATA_OUT1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DATA_OUT2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_RF_reg_r1_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r1_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r1_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r1_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r1_0_15_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_RF_reg_r1_0_15_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_RF_reg_r1_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r2_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r2_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r2_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r2_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_RF_reg_r2_0_15_30_31_SPO_UNCONNECTED : STD_LOGIC;
  signal \NLW_RF_reg_r2_0_15_30_31__0_SPO_UNCONNECTED\ : STD_LOGIC;
  signal NLW_RF_reg_r2_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_0_5 : label is 512;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_0_5 : label is "rf/RF_reg_r1_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RF_reg_r1_0_15_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RF_reg_r1_0_15_0_5 : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of RF_reg_r1_0_15_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RF_reg_r1_0_15_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RF_reg_r1_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_12_17 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_12_17 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_12_17 : label is "rf/RF_reg_r1_0_15_12_17";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r1_0_15_12_17 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_12_17 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_12_17 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_12_17 : label is 12;
  attribute ram_slice_end of RF_reg_r1_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_18_23 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_18_23 : label is "rf/RF_reg_r1_0_15_18_23";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r1_0_15_18_23 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_18_23 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_18_23 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_18_23 : label is 18;
  attribute ram_slice_end of RF_reg_r1_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_24_29 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_24_29 : label is "rf/RF_reg_r1_0_15_24_29";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r1_0_15_24_29 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_24_29 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_24_29 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_24_29 : label is 24;
  attribute ram_slice_end of RF_reg_r1_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_30_31 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_30_31 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_30_31 : label is "rf/RF_reg_r1_0_15_30_31";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r1_0_15_30_31 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_30_31 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_30_31 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_30_31 : label is 30;
  attribute ram_slice_end of RF_reg_r1_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \RF_reg_r1_0_15_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \RF_reg_r1_0_15_30_31__0\ : label is 512;
  attribute RTL_RAM_NAME of \RF_reg_r1_0_15_30_31__0\ : label is "rf/RF_reg_r1_0_15_30_31";
  attribute RTL_RAM_TYPE of \RF_reg_r1_0_15_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \RF_reg_r1_0_15_30_31__0\ : label is 0;
  attribute ram_addr_end of \RF_reg_r1_0_15_30_31__0\ : label is 15;
  attribute ram_offset of \RF_reg_r1_0_15_30_31__0\ : label is 0;
  attribute ram_slice_begin of \RF_reg_r1_0_15_30_31__0\ : label is 30;
  attribute ram_slice_end of \RF_reg_r1_0_15_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_6_11 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_6_11 : label is "rf/RF_reg_r1_0_15_6_11";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r1_0_15_6_11 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_6_11 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_6_11 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_6_11 : label is 6;
  attribute ram_slice_end of RF_reg_r1_0_15_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_0_5 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_0_5 : label is "rf/RF_reg_r2_0_15_0_5";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r2_0_15_0_5 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_0_5 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_0_5 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_0_5 : label is 0;
  attribute ram_slice_end of RF_reg_r2_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_12_17 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_12_17 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_12_17 : label is "rf/RF_reg_r2_0_15_12_17";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r2_0_15_12_17 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_12_17 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_12_17 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_12_17 : label is 12;
  attribute ram_slice_end of RF_reg_r2_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_18_23 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_18_23 : label is "rf/RF_reg_r2_0_15_18_23";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r2_0_15_18_23 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_18_23 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_18_23 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_18_23 : label is 18;
  attribute ram_slice_end of RF_reg_r2_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_24_29 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_24_29 : label is "rf/RF_reg_r2_0_15_24_29";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r2_0_15_24_29 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_24_29 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_24_29 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_24_29 : label is 24;
  attribute ram_slice_end of RF_reg_r2_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_30_31 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_30_31 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_30_31 : label is "rf/RF_reg_r2_0_15_30_31";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r2_0_15_30_31 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_30_31 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_30_31 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_30_31 : label is 30;
  attribute ram_slice_end of RF_reg_r2_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \RF_reg_r2_0_15_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \RF_reg_r2_0_15_30_31__0\ : label is 512;
  attribute RTL_RAM_NAME of \RF_reg_r2_0_15_30_31__0\ : label is "rf/RF_reg_r2_0_15_30_31";
  attribute RTL_RAM_TYPE of \RF_reg_r2_0_15_30_31__0\ : label is "RAM_SDP";
  attribute ram_addr_begin of \RF_reg_r2_0_15_30_31__0\ : label is 0;
  attribute ram_addr_end of \RF_reg_r2_0_15_30_31__0\ : label is 15;
  attribute ram_offset of \RF_reg_r2_0_15_30_31__0\ : label is 0;
  attribute ram_slice_begin of \RF_reg_r2_0_15_30_31__0\ : label is 30;
  attribute ram_slice_end of \RF_reg_r2_0_15_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_6_11 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_6_11 : label is "rf/RF_reg_r2_0_15_6_11";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of RF_reg_r2_0_15_6_11 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_6_11 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_6_11 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_6_11 : label is 6;
  attribute ram_slice_end of RF_reg_r2_0_15_6_11 : label is 11;
begin
\RD1_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(0),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(0),
      O => RD1_OBUF(0)
    );
\RD1_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(10),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(10),
      O => RD1_OBUF(10)
    );
\RD1_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(11),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(11),
      O => RD1_OBUF(11)
    );
\RD1_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(12),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(12),
      O => RD1_OBUF(12)
    );
\RD1_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(13),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(13),
      O => RD1_OBUF(13)
    );
\RD1_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(14),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(14),
      O => RD1_OBUF(14)
    );
\RD1_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(15),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(15),
      O => RD1_OBUF(15)
    );
\RD1_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(16),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(16),
      O => RD1_OBUF(16)
    );
\RD1_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(17),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(17),
      O => RD1_OBUF(17)
    );
\RD1_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(18),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(18),
      O => RD1_OBUF(18)
    );
\RD1_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(19),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(19),
      O => RD1_OBUF(19)
    );
\RD1_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(1),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(1),
      O => RD1_OBUF(1)
    );
\RD1_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(20),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(20),
      O => RD1_OBUF(20)
    );
\RD1_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(21),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(21),
      O => RD1_OBUF(21)
    );
\RD1_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(22),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(22),
      O => RD1_OBUF(22)
    );
\RD1_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(23),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(23),
      O => RD1_OBUF(23)
    );
\RD1_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(24),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(24),
      O => RD1_OBUF(24)
    );
\RD1_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(25),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(25),
      O => RD1_OBUF(25)
    );
\RD1_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(26),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(26),
      O => RD1_OBUF(26)
    );
\RD1_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(27),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(27),
      O => RD1_OBUF(27)
    );
\RD1_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(28),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(28),
      O => RD1_OBUF(28)
    );
\RD1_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(29),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(29),
      O => RD1_OBUF(29)
    );
\RD1_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(2),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(2),
      O => RD1_OBUF(2)
    );
\RD1_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(30),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(30),
      O => RD1_OBUF(30)
    );
\RD1_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(31),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(31),
      O => RD1_OBUF(31)
    );
\RD1_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(3),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(3),
      O => RD1_OBUF(3)
    );
\RD1_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(4),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(4),
      O => RD1_OBUF(4)
    );
\RD1_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(5),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(5),
      O => RD1_OBUF(5)
    );
\RD1_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(6),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(6),
      O => RD1_OBUF(6)
    );
\RD1_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(7),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(7),
      O => RD1_OBUF(7)
    );
\RD1_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(8),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(8),
      O => RD1_OBUF(8)
    );
\RD1_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(9),
      I1 => A1_IBUF(1),
      I2 => A1_IBUF(0),
      I3 => A1_IBUF(3),
      I4 => A1_IBUF(2),
      I5 => DATA_OUT1(9),
      O => RD1_OBUF(9)
    );
\RD2_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(0),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(0),
      O => RD2_OBUF(0)
    );
\RD2_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(10),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(10),
      O => RD2_OBUF(10)
    );
\RD2_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(11),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(11),
      O => RD2_OBUF(11)
    );
\RD2_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(12),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(12),
      O => RD2_OBUF(12)
    );
\RD2_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(13),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(13),
      O => RD2_OBUF(13)
    );
\RD2_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(14),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(14),
      O => RD2_OBUF(14)
    );
\RD2_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(15),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(15),
      O => RD2_OBUF(15)
    );
\RD2_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(16),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(16),
      O => RD2_OBUF(16)
    );
\RD2_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(17),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(17),
      O => RD2_OBUF(17)
    );
\RD2_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(18),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(18),
      O => RD2_OBUF(18)
    );
\RD2_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(19),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(19),
      O => RD2_OBUF(19)
    );
\RD2_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(1),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(1),
      O => RD2_OBUF(1)
    );
\RD2_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(20),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(20),
      O => RD2_OBUF(20)
    );
\RD2_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(21),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(21),
      O => RD2_OBUF(21)
    );
\RD2_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(22),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(22),
      O => RD2_OBUF(22)
    );
\RD2_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(23),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(23),
      O => RD2_OBUF(23)
    );
\RD2_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(24),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(24),
      O => RD2_OBUF(24)
    );
\RD2_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(25),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(25),
      O => RD2_OBUF(25)
    );
\RD2_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(26),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(26),
      O => RD2_OBUF(26)
    );
\RD2_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(27),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(27),
      O => RD2_OBUF(27)
    );
\RD2_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(28),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(28),
      O => RD2_OBUF(28)
    );
\RD2_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(29),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(29),
      O => RD2_OBUF(29)
    );
\RD2_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(2),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(2),
      O => RD2_OBUF(2)
    );
\RD2_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(30),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(30),
      O => RD2_OBUF(30)
    );
\RD2_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(31),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(31),
      O => RD2_OBUF(31)
    );
\RD2_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(3),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(3),
      O => RD2_OBUF(3)
    );
\RD2_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(4),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(4),
      O => RD2_OBUF(4)
    );
\RD2_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(5),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(5),
      O => RD2_OBUF(5)
    );
\RD2_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(6),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(6),
      O => RD2_OBUF(6)
    );
\RD2_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(7),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(7),
      O => RD2_OBUF(7)
    );
\RD2_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(8),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(8),
      O => RD2_OBUF(8)
    );
\RD2_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => R15_IBUF(9),
      I1 => A2_IBUF(1),
      I2 => A2_IBUF(0),
      I3 => A2_IBUF(3),
      I4 => A2_IBUF(2),
      I5 => DATA_OUT2(9),
      O => RD2_OBUF(9)
    );
RF_reg_r1_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(1 downto 0),
      DIB(1 downto 0) => WD3_IBUF(3 downto 2),
      DIC(1 downto 0) => WD3_IBUF(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(1 downto 0),
      DOB(1 downto 0) => DATA_OUT1(3 downto 2),
      DOC(1 downto 0) => DATA_OUT1(5 downto 4),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r1_0_15_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(13 downto 12),
      DIB(1 downto 0) => WD3_IBUF(15 downto 14),
      DIC(1 downto 0) => WD3_IBUF(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(13 downto 12),
      DOB(1 downto 0) => DATA_OUT1(15 downto 14),
      DOC(1 downto 0) => DATA_OUT1(17 downto 16),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r1_0_15_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(19 downto 18),
      DIB(1 downto 0) => WD3_IBUF(21 downto 20),
      DIC(1 downto 0) => WD3_IBUF(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(19 downto 18),
      DOB(1 downto 0) => DATA_OUT1(21 downto 20),
      DOC(1 downto 0) => DATA_OUT1(23 downto 22),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r1_0_15_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(25 downto 24),
      DIB(1 downto 0) => WD3_IBUF(27 downto 26),
      DIC(1 downto 0) => WD3_IBUF(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(25 downto 24),
      DOB(1 downto 0) => DATA_OUT1(27 downto 26),
      DOC(1 downto 0) => DATA_OUT1(29 downto 28),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r1_0_15_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => A3_IBUF(0),
      A1 => A3_IBUF(1),
      A2 => A3_IBUF(2),
      A3 => A3_IBUF(3),
      A4 => '0',
      D => WD3_IBUF(30),
      DPO => DATA_OUT1(30),
      DPRA0 => A1_IBUF(0),
      DPRA1 => A1_IBUF(1),
      DPRA2 => A1_IBUF(2),
      DPRA3 => A1_IBUF(3),
      DPRA4 => '0',
      SPO => NLW_RF_reg_r1_0_15_30_31_SPO_UNCONNECTED,
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
\RF_reg_r1_0_15_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => A3_IBUF(0),
      A1 => A3_IBUF(1),
      A2 => A3_IBUF(2),
      A3 => A3_IBUF(3),
      A4 => '0',
      D => WD3_IBUF(31),
      DPO => DATA_OUT1(31),
      DPRA0 => A1_IBUF(0),
      DPRA1 => A1_IBUF(1),
      DPRA2 => A1_IBUF(2),
      DPRA3 => A1_IBUF(3),
      DPRA4 => '0',
      SPO => \NLW_RF_reg_r1_0_15_30_31__0_SPO_UNCONNECTED\,
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r1_0_15_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A1_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(7 downto 6),
      DIB(1 downto 0) => WD3_IBUF(9 downto 8),
      DIC(1 downto 0) => WD3_IBUF(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(7 downto 6),
      DOB(1 downto 0) => DATA_OUT1(9 downto 8),
      DOC(1 downto 0) => DATA_OUT1(11 downto 10),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r2_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(1 downto 0),
      DIB(1 downto 0) => WD3_IBUF(3 downto 2),
      DIC(1 downto 0) => WD3_IBUF(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(1 downto 0),
      DOB(1 downto 0) => DATA_OUT2(3 downto 2),
      DOC(1 downto 0) => DATA_OUT2(5 downto 4),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r2_0_15_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(13 downto 12),
      DIB(1 downto 0) => WD3_IBUF(15 downto 14),
      DIC(1 downto 0) => WD3_IBUF(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(13 downto 12),
      DOB(1 downto 0) => DATA_OUT2(15 downto 14),
      DOC(1 downto 0) => DATA_OUT2(17 downto 16),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r2_0_15_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(19 downto 18),
      DIB(1 downto 0) => WD3_IBUF(21 downto 20),
      DIC(1 downto 0) => WD3_IBUF(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(19 downto 18),
      DOB(1 downto 0) => DATA_OUT2(21 downto 20),
      DOC(1 downto 0) => DATA_OUT2(23 downto 22),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r2_0_15_24_29: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(25 downto 24),
      DIB(1 downto 0) => WD3_IBUF(27 downto 26),
      DIC(1 downto 0) => WD3_IBUF(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(25 downto 24),
      DOB(1 downto 0) => DATA_OUT2(27 downto 26),
      DOC(1 downto 0) => DATA_OUT2(29 downto 28),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r2_0_15_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => A3_IBUF(0),
      A1 => A3_IBUF(1),
      A2 => A3_IBUF(2),
      A3 => A3_IBUF(3),
      A4 => '0',
      D => WD3_IBUF(30),
      DPO => DATA_OUT2(30),
      DPRA0 => A2_IBUF(0),
      DPRA1 => A2_IBUF(1),
      DPRA2 => A2_IBUF(2),
      DPRA3 => A2_IBUF(3),
      DPRA4 => '0',
      SPO => NLW_RF_reg_r2_0_15_30_31_SPO_UNCONNECTED,
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
\RF_reg_r2_0_15_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => A3_IBUF(0),
      A1 => A3_IBUF(1),
      A2 => A3_IBUF(2),
      A3 => A3_IBUF(3),
      A4 => '0',
      D => WD3_IBUF(31),
      DPO => DATA_OUT2(31),
      DPRA0 => A2_IBUF(0),
      DPRA1 => A2_IBUF(1),
      DPRA2 => A2_IBUF(2),
      DPRA3 => A2_IBUF(3),
      DPRA4 => '0',
      SPO => \NLW_RF_reg_r2_0_15_30_31__0_SPO_UNCONNECTED\,
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
RF_reg_r2_0_15_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => A2_IBUF(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => A3_IBUF(3 downto 0),
      DIA(1 downto 0) => WD3_IBUF(7 downto 6),
      DIB(1 downto 0) => WD3_IBUF(9 downto 8),
      DIC(1 downto 0) => WD3_IBUF(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(7 downto 6),
      DOB(1 downto 0) => DATA_OUT2(9 downto 8),
      DOC(1 downto 0) => DATA_OUT2(11 downto 10),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity regfile is
  port (
    CLK : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    A1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    A2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    A3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    WD3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    R15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RD1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RD2 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of regfile : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of regfile : entity is "1ae0afe4";
  attribute M : integer;
  attribute M of regfile : entity is 32;
  attribute N : integer;
  attribute N of regfile : entity is 4;
end regfile;

architecture STRUCTURE of regfile is
  signal A1_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal A2_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal A3_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal R15_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RD1_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RD2_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RegWrite_IBUF : STD_LOGIC;
  signal WD3_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute IOB : string;
  attribute IOB of \RD1_OBUF[0]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[10]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[11]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[12]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[13]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[14]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[15]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[16]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[17]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[18]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[19]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[1]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[20]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[21]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[22]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[23]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[24]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[25]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[26]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[27]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[28]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[29]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[2]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[30]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[31]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[3]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[4]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[5]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[6]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[7]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[8]_inst\ : label is "TRUE";
  attribute IOB of \RD1_OBUF[9]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[0]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[10]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[11]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[12]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[13]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[14]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[15]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[16]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[17]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[18]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[19]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[1]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[20]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[21]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[22]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[23]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[24]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[25]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[26]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[27]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[28]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[29]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[2]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[30]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[31]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[3]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[4]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[5]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[6]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[7]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[8]_inst\ : label is "TRUE";
  attribute IOB of \RD2_OBUF[9]_inst\ : label is "TRUE";
begin
\A1_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A1(0),
      O => A1_IBUF(0)
    );
\A1_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A1(1),
      O => A1_IBUF(1)
    );
\A1_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A1(2),
      O => A1_IBUF(2)
    );
\A1_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A1(3),
      O => A1_IBUF(3)
    );
\A2_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A2(0),
      O => A2_IBUF(0)
    );
\A2_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A2(1),
      O => A2_IBUF(1)
    );
\A2_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A2(2),
      O => A2_IBUF(2)
    );
\A2_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A2(3),
      O => A2_IBUF(3)
    );
\A3_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A3(0),
      O => A3_IBUF(0)
    );
\A3_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A3(1),
      O => A3_IBUF(1)
    );
\A3_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A3(2),
      O => A3_IBUF(2)
    );
\A3_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => A3(3),
      O => A3_IBUF(3)
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => CLK,
      O => CLK_IBUF
    );
\R15_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(0),
      O => R15_IBUF(0)
    );
\R15_IBUF[10]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(10),
      O => R15_IBUF(10)
    );
\R15_IBUF[11]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(11),
      O => R15_IBUF(11)
    );
\R15_IBUF[12]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(12),
      O => R15_IBUF(12)
    );
\R15_IBUF[13]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(13),
      O => R15_IBUF(13)
    );
\R15_IBUF[14]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(14),
      O => R15_IBUF(14)
    );
\R15_IBUF[15]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(15),
      O => R15_IBUF(15)
    );
\R15_IBUF[16]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(16),
      O => R15_IBUF(16)
    );
\R15_IBUF[17]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(17),
      O => R15_IBUF(17)
    );
\R15_IBUF[18]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(18),
      O => R15_IBUF(18)
    );
\R15_IBUF[19]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(19),
      O => R15_IBUF(19)
    );
\R15_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(1),
      O => R15_IBUF(1)
    );
\R15_IBUF[20]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(20),
      O => R15_IBUF(20)
    );
\R15_IBUF[21]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(21),
      O => R15_IBUF(21)
    );
\R15_IBUF[22]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(22),
      O => R15_IBUF(22)
    );
\R15_IBUF[23]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(23),
      O => R15_IBUF(23)
    );
\R15_IBUF[24]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(24),
      O => R15_IBUF(24)
    );
\R15_IBUF[25]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(25),
      O => R15_IBUF(25)
    );
\R15_IBUF[26]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(26),
      O => R15_IBUF(26)
    );
\R15_IBUF[27]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(27),
      O => R15_IBUF(27)
    );
\R15_IBUF[28]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(28),
      O => R15_IBUF(28)
    );
\R15_IBUF[29]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(29),
      O => R15_IBUF(29)
    );
\R15_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(2),
      O => R15_IBUF(2)
    );
\R15_IBUF[30]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(30),
      O => R15_IBUF(30)
    );
\R15_IBUF[31]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(31),
      O => R15_IBUF(31)
    );
\R15_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(3),
      O => R15_IBUF(3)
    );
\R15_IBUF[4]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(4),
      O => R15_IBUF(4)
    );
\R15_IBUF[5]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(5),
      O => R15_IBUF(5)
    );
\R15_IBUF[6]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(6),
      O => R15_IBUF(6)
    );
\R15_IBUF[7]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(7),
      O => R15_IBUF(7)
    );
\R15_IBUF[8]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(8),
      O => R15_IBUF(8)
    );
\R15_IBUF[9]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => R15(9),
      O => R15_IBUF(9)
    );
\RD1_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(0),
      O => RD1(0)
    );
\RD1_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(10),
      O => RD1(10)
    );
\RD1_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(11),
      O => RD1(11)
    );
\RD1_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(12),
      O => RD1(12)
    );
\RD1_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(13),
      O => RD1(13)
    );
\RD1_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(14),
      O => RD1(14)
    );
\RD1_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(15),
      O => RD1(15)
    );
\RD1_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(16),
      O => RD1(16)
    );
\RD1_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(17),
      O => RD1(17)
    );
\RD1_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(18),
      O => RD1(18)
    );
\RD1_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(19),
      O => RD1(19)
    );
\RD1_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(1),
      O => RD1(1)
    );
\RD1_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(20),
      O => RD1(20)
    );
\RD1_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(21),
      O => RD1(21)
    );
\RD1_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(22),
      O => RD1(22)
    );
\RD1_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(23),
      O => RD1(23)
    );
\RD1_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(24),
      O => RD1(24)
    );
\RD1_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(25),
      O => RD1(25)
    );
\RD1_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(26),
      O => RD1(26)
    );
\RD1_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(27),
      O => RD1(27)
    );
\RD1_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(28),
      O => RD1(28)
    );
\RD1_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(29),
      O => RD1(29)
    );
\RD1_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(2),
      O => RD1(2)
    );
\RD1_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(30),
      O => RD1(30)
    );
\RD1_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(31),
      O => RD1(31)
    );
\RD1_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(3),
      O => RD1(3)
    );
\RD1_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(4),
      O => RD1(4)
    );
\RD1_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(5),
      O => RD1(5)
    );
\RD1_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(6),
      O => RD1(6)
    );
\RD1_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(7),
      O => RD1(7)
    );
\RD1_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(8),
      O => RD1(8)
    );
\RD1_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD1_OBUF(9),
      O => RD1(9)
    );
\RD2_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(0),
      O => RD2(0)
    );
\RD2_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(10),
      O => RD2(10)
    );
\RD2_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(11),
      O => RD2(11)
    );
\RD2_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(12),
      O => RD2(12)
    );
\RD2_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(13),
      O => RD2(13)
    );
\RD2_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(14),
      O => RD2(14)
    );
\RD2_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(15),
      O => RD2(15)
    );
\RD2_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(16),
      O => RD2(16)
    );
\RD2_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(17),
      O => RD2(17)
    );
\RD2_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(18),
      O => RD2(18)
    );
\RD2_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(19),
      O => RD2(19)
    );
\RD2_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(1),
      O => RD2(1)
    );
\RD2_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(20),
      O => RD2(20)
    );
\RD2_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(21),
      O => RD2(21)
    );
\RD2_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(22),
      O => RD2(22)
    );
\RD2_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(23),
      O => RD2(23)
    );
\RD2_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(24),
      O => RD2(24)
    );
\RD2_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(25),
      O => RD2(25)
    );
\RD2_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(26),
      O => RD2(26)
    );
\RD2_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(27),
      O => RD2(27)
    );
\RD2_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(28),
      O => RD2(28)
    );
\RD2_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(29),
      O => RD2(29)
    );
\RD2_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(2),
      O => RD2(2)
    );
\RD2_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(30),
      O => RD2(30)
    );
\RD2_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(31),
      O => RD2(31)
    );
\RD2_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(3),
      O => RD2(3)
    );
\RD2_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(4),
      O => RD2(4)
    );
\RD2_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(5),
      O => RD2(5)
    );
\RD2_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(6),
      O => RD2(6)
    );
\RD2_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(7),
      O => RD2(7)
    );
\RD2_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(8),
      O => RD2(8)
    );
\RD2_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => RD2_OBUF(9),
      O => RD2(9)
    );
RegWrite_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => RegWrite,
      O => RegWrite_IBUF
    );
\WD3_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(0),
      O => WD3_IBUF(0)
    );
\WD3_IBUF[10]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(10),
      O => WD3_IBUF(10)
    );
\WD3_IBUF[11]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(11),
      O => WD3_IBUF(11)
    );
\WD3_IBUF[12]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(12),
      O => WD3_IBUF(12)
    );
\WD3_IBUF[13]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(13),
      O => WD3_IBUF(13)
    );
\WD3_IBUF[14]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(14),
      O => WD3_IBUF(14)
    );
\WD3_IBUF[15]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(15),
      O => WD3_IBUF(15)
    );
\WD3_IBUF[16]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(16),
      O => WD3_IBUF(16)
    );
\WD3_IBUF[17]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(17),
      O => WD3_IBUF(17)
    );
\WD3_IBUF[18]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(18),
      O => WD3_IBUF(18)
    );
\WD3_IBUF[19]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(19),
      O => WD3_IBUF(19)
    );
\WD3_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(1),
      O => WD3_IBUF(1)
    );
\WD3_IBUF[20]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(20),
      O => WD3_IBUF(20)
    );
\WD3_IBUF[21]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(21),
      O => WD3_IBUF(21)
    );
\WD3_IBUF[22]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(22),
      O => WD3_IBUF(22)
    );
\WD3_IBUF[23]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(23),
      O => WD3_IBUF(23)
    );
\WD3_IBUF[24]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(24),
      O => WD3_IBUF(24)
    );
\WD3_IBUF[25]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(25),
      O => WD3_IBUF(25)
    );
\WD3_IBUF[26]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(26),
      O => WD3_IBUF(26)
    );
\WD3_IBUF[27]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(27),
      O => WD3_IBUF(27)
    );
\WD3_IBUF[28]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(28),
      O => WD3_IBUF(28)
    );
\WD3_IBUF[29]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(29),
      O => WD3_IBUF(29)
    );
\WD3_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(2),
      O => WD3_IBUF(2)
    );
\WD3_IBUF[30]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(30),
      O => WD3_IBUF(30)
    );
\WD3_IBUF[31]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(31),
      O => WD3_IBUF(31)
    );
\WD3_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(3),
      O => WD3_IBUF(3)
    );
\WD3_IBUF[4]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(4),
      O => WD3_IBUF(4)
    );
\WD3_IBUF[5]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(5),
      O => WD3_IBUF(5)
    );
\WD3_IBUF[6]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(6),
      O => WD3_IBUF(6)
    );
\WD3_IBUF[7]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(7),
      O => WD3_IBUF(7)
    );
\WD3_IBUF[8]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(8),
      O => WD3_IBUF(8)
    );
\WD3_IBUF[9]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => WD3(9),
      O => WD3_IBUF(9)
    );
rf: entity work.regfile_core
     port map (
      A1_IBUF(3 downto 0) => A1_IBUF(3 downto 0),
      A2_IBUF(3 downto 0) => A2_IBUF(3 downto 0),
      A3_IBUF(3 downto 0) => A3_IBUF(3 downto 0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      R15_IBUF(31 downto 0) => R15_IBUF(31 downto 0),
      RD1_OBUF(31 downto 0) => RD1_OBUF(31 downto 0),
      RD2_OBUF(31 downto 0) => RD2_OBUF(31 downto 0),
      RegWrite_IBUF => RegWrite_IBUF,
      WD3_IBUF(31 downto 0) => WD3_IBUF(31 downto 0)
    );
end STRUCTURE;
