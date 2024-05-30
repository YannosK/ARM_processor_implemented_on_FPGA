-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Fri Mar 22 17:57:01 2024
-- Host        : yannos running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Yannos/FILES/PROGRAMS/FPGA/VIVADO/MSc_Control_and_Computing-UoA/PROJECTS/Project_2/Processor_Multicycle/Processor_Multicycle.sim/sim_1/impl/func/xsim/Processor_tb_func_impl.vhd
-- Design      : Processor
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FSM is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_1\ : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    PCWrite : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    IRWrite : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : in STD_LOGIC;
    Instruction_OBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_current_state_reg[1]_2\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_3\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_1\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end FSM;

architecture STRUCTURE of FSM is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal current_state : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s2_cmp:0101,s2_bl:0100,s2_b:0011,s4_sdppc:1010,s4_sdp:1001,s4_dppc:1000,s4_dp:0111,s1:0001,s0:0000,s3_ldr:1101,s4_condexnegtv:0010,s3_str:1100,s2_mem:1011,s4_ldrpc:1111,s4_ldr:1110,s2_dp:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s2_cmp:0101,s2_bl:0100,s2_b:0011,s4_sdppc:1010,s4_sdp:1001,s4_dppc:1000,s4_dp:0111,s1:0001,s0:0000,s3_ldr:1101,s4_condexnegtv:0010,s3_str:1100,s2_mem:1011,s4_ldrpc:1111,s4_ldr:1110,s2_dp:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "s2_cmp:0101,s2_bl:0100,s2_b:0011,s4_sdppc:1010,s4_sdp:1001,s4_dppc:1000,s4_dp:0111,s1:0001,s0:0000,s3_ldr:1101,s4_condexnegtv:0010,s3_str:1100,s2_mem:1011,s4_ldrpc:1111,s4_ldr:1110,s2_dp:0110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[3]\ : label is "s2_cmp:0101,s2_bl:0100,s2_b:0011,s4_sdppc:1010,s4_sdp:1001,s4_dppc:1000,s4_dp:0111,s1:0001,s0:0000,s3_ldr:1101,s4_condexnegtv:0010,s3_str:1100,s2_mem:1011,s4_ldrpc:1111,s4_ldr:1110,s2_dp:0110";
begin
  E(0) <= \^e\(0);
  Q(2 downto 0) <= \^q\(2 downto 0);
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00810201"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => current_state(0),
      I3 => \^q\(0),
      I4 => \FSM_sequential_current_state_reg[0]_0\,
      I5 => \FSM_sequential_current_state[0]_i_3_n_0\,
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888F88888888"
    )
        port map (
      I0 => \^e\(0),
      I1 => Instruction_OBUF(0),
      I2 => \FSM_sequential_current_state_reg[0]_1\,
      I3 => \FSM_sequential_current_state[0]_i_5_n_0\,
      I4 => \^q\(0),
      I5 => \FSM_sequential_current_state_reg[0]_2\,
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      O => \FSM_sequential_current_state[0]_i_5_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAAAAAFBAAAA"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_current_state_reg[1]_2\,
      I2 => \FSM_sequential_current_state_reg[1]_3\,
      I3 => \^q\(2),
      I4 => \FSM_sequential_current_state[1]_i_5_n_0\,
      I5 => \^q\(1),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0009000000000000"
    )
        port map (
      I0 => \FSM_sequential_current_state_reg[0]_0\,
      I1 => Instruction_OBUF(0),
      I2 => \^q\(2),
      I3 => current_state(0),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => \^q\(0),
      O => \FSM_sequential_current_state[1]_i_5_n_0\
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0555100000000000"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_current_state_reg[2]_0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => current_state(0),
      I5 => \FSM_sequential_current_state_reg[2]_1\,
      O => \FSM_sequential_current_state[2]_i_1_n_0\
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040004040400"
    )
        port map (
      I0 => \^q\(1),
      I1 => current_state(0),
      I2 => \^q\(0),
      I3 => Instruction_OBUF(2),
      I4 => Instruction_OBUF(3),
      I5 => Instruction_OBUF(1),
      O => \FSM_sequential_current_state[2]_i_2_n_0\
    );
\FSM_sequential_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF42804080"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => current_state(0),
      I3 => \^q\(0),
      I4 => \FSM_sequential_current_state_reg[2]_0\,
      I5 => \FSM_sequential_current_state[3]_i_3_n_0\,
      O => \FSM_sequential_current_state[3]_i_1_n_0\
    );
\FSM_sequential_current_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_5_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => Instruction_OBUF(2),
      I4 => Instruction_OBUF(3),
      I5 => \FSM_sequential_current_state_reg[1]_2\,
      O => \FSM_sequential_current_state[3]_i_3_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => RESET_IBUF
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => \^q\(0),
      R => RESET_IBUF
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_current_state[2]_i_1_n_0\,
      Q => \^q\(1),
      R => RESET_IBUF
    );
\FSM_sequential_current_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \FSM_sequential_current_state[3]_i_1_n_0\,
      Q => \^q\(2),
      R => RESET_IBUF
    );
RAM_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => WEA(0)
    );
RF_reg_r1_0_15_0_5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2490"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => RegWrite
    );
\d_out[31]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD6E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => current_state(0),
      I3 => \^q\(0),
      O => PCWrite
    );
\d_out[31]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => IRWrite
    );
\d_out[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBEB"
    )
        port map (
      I0 => \^q\(2),
      I1 => current_state(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \FSM_sequential_current_state_reg[3]_1\
    );
\d_out[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C33D"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \FSM_sequential_current_state_reg[1]_0\
    );
\d_out[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3DCE"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(0),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \FSM_sequential_current_state_reg[1]_1\
    );
\d_out[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0260"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => current_state(0),
      I3 => \^q\(0),
      O => \FSM_sequential_current_state_reg[3]_0\(0)
    );
\d_out[4]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^q\(0),
      I1 => current_state(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \^e\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RAM is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DOBDO : out STD_LOGIC_VECTOR ( 13 downto 0 );
    DOPADOP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    RAM_reg_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end RAM;

architecture STRUCTURE of RAM is
  signal NLW_RAM_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 14 );
  signal NLW_RAM_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of RAM_reg : label is "p2_d16";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of RAM_reg : label is "p0_d14";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg : label is "DataPath_MultiCycle/DataMemory/RAM_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of RAM_reg : label is "RAM_SP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg : label is 31;
  attribute ram_ext_slice_begin : integer;
  attribute ram_ext_slice_begin of RAM_reg : label is 18;
  attribute ram_ext_slice_end : integer;
  attribute ram_ext_slice_end of RAM_reg : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg : label is 480;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg : label is 17;
begin
RAM_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(13 downto 9) => B"01111",
      ADDRARDADDR(8 downto 4) => Q(4 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 9) => B"11111",
      ADDRBWRADDR(8 downto 4) => Q(4 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CLKARDCLK => CLK_IBUF_BUFG,
      CLKBWRCLK => CLK_IBUF_BUFG,
      DIADI(15 downto 0) => RAM_reg_0(15 downto 0),
      DIBDI(15 downto 14) => B"11",
      DIBDI(13 downto 0) => RAM_reg_0(31 downto 18),
      DIPADIP(1 downto 0) => RAM_reg_0(17 downto 16),
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 0) => DOADO(15 downto 0),
      DOBDO(15 downto 14) => NLW_RAM_reg_DOBDO_UNCONNECTED(15 downto 14),
      DOBDO(13 downto 0) => DOBDO(13 downto 0),
      DOPADOP(1 downto 0) => DOPADOP(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_RAM_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => RESET_IBUF,
      RSTRAMB => RESET_IBUF,
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 2) => B"00",
      WEBWE(1) => WEA(0),
      WEBWE(0) => WEA(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ROM is
  port (
    \d_out_reg[7]_rep\ : out STD_LOGIC_VECTOR ( 20 downto 0 );
    PC_OBUF : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end ROM;

architecture STRUCTURE of ROM is
begin
\d_out[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404101043010601"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(1),
      I4 => PC_OBUF(0),
      I5 => PC_OBUF(2),
      O => \d_out_reg[7]_rep\(0)
    );
\d_out[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5151440215025420"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(2),
      I3 => PC_OBUF(3),
      I4 => PC_OBUF(0),
      I5 => PC_OBUF(1),
      O => \d_out_reg[7]_rep\(6)
    );
\d_out[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010005253415354"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(0),
      I4 => PC_OBUF(1),
      I5 => PC_OBUF(2),
      O => \d_out_reg[7]_rep\(7)
    );
\d_out[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100011310564452"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(1),
      I4 => PC_OBUF(0),
      I5 => PC_OBUF(2),
      O => \d_out_reg[7]_rep\(8)
    );
\d_out[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010100200544246"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(0),
      I4 => PC_OBUF(1),
      I5 => PC_OBUF(2),
      O => \d_out_reg[7]_rep\(9)
    );
\d_out[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040154240024155"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(2),
      I3 => PC_OBUF(3),
      I4 => PC_OBUF(0),
      I5 => PC_OBUF(1),
      O => \d_out_reg[7]_rep\(10)
    );
\d_out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0045451054141301"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(2),
      I4 => PC_OBUF(1),
      I5 => PC_OBUF(0),
      O => \d_out_reg[7]_rep\(1)
    );
\d_out[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4002545041164650"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(2),
      I4 => PC_OBUF(0),
      I5 => PC_OBUF(1),
      O => \d_out_reg[7]_rep\(11)
    );
\d_out[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4143404410501300"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(2),
      I4 => PC_OBUF(0),
      I5 => PC_OBUF(1),
      O => \d_out_reg[7]_rep\(12)
    );
\d_out[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4553105111471252"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(2),
      I4 => PC_OBUF(1),
      I5 => PC_OBUF(0),
      O => \d_out_reg[7]_rep\(13)
    );
\d_out[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4105530555165256"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(0),
      I4 => PC_OBUF(2),
      I5 => PC_OBUF(1),
      O => \d_out_reg[7]_rep\(14)
    );
\d_out[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1414050504454200"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(1),
      I4 => PC_OBUF(2),
      I5 => PC_OBUF(0),
      O => \d_out_reg[7]_rep\(15)
    );
\d_out[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000200110506"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(2),
      I3 => PC_OBUF(3),
      I4 => PC_OBUF(1),
      I5 => PC_OBUF(0),
      O => \d_out_reg[7]_rep\(16)
    );
\d_out[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5444400210020452"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(0),
      I4 => PC_OBUF(1),
      I5 => PC_OBUF(2),
      O => \d_out_reg[7]_rep\(17)
    );
\d_out[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5111105543150755"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(1),
      I4 => PC_OBUF(0),
      I5 => PC_OBUF(2),
      O => \d_out_reg[7]_rep\(18)
    );
\d_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0054545400175705"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(0),
      I4 => PC_OBUF(2),
      I5 => PC_OBUF(1),
      O => \d_out_reg[7]_rep\(2)
    );
\d_out[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4104517355171175"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(0),
      I3 => PC_OBUF(3),
      I4 => PC_OBUF(2),
      I5 => PC_OBUF(1),
      O => \d_out_reg[7]_rep\(19)
    );
\d_out[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1540505F5517054D"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(0),
      I2 => PC_OBUF(4),
      I3 => PC_OBUF(3),
      I4 => PC_OBUF(2),
      I5 => PC_OBUF(1),
      O => \d_out_reg[7]_rep\(20)
    );
\d_out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040004120041"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(1),
      I3 => PC_OBUF(0),
      I4 => PC_OBUF(2),
      I5 => PC_OBUF(3),
      O => \d_out_reg[7]_rep\(3)
    );
\d_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000000800"
    )
        port map (
      I0 => PC_OBUF(0),
      I1 => PC_OBUF(5),
      I2 => PC_OBUF(4),
      I3 => PC_OBUF(1),
      I4 => PC_OBUF(2),
      I5 => PC_OBUF(3),
      O => \d_out_reg[7]_rep\(4)
    );
\d_out[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000001002400000"
    )
        port map (
      I0 => PC_OBUF(5),
      I1 => PC_OBUF(4),
      I2 => PC_OBUF(3),
      I3 => PC_OBUF(0),
      I4 => PC_OBUF(1),
      I5 => PC_OBUF(2),
      O => \d_out_reg[7]_rep\(5)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Rg is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    RESET_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end Rg;

architecture STRUCTURE of Rg is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_d_out_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_d_out_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => RESET_IBUF
    );
\d_out_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out_reg[0]_0\(0),
      CO(3 downto 1) => \NLW_d_out_reg[0]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => CO(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_d_out_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\d_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(10),
      Q => \^q\(10),
      R => RESET_IBUF
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(11),
      Q => \^q\(11),
      R => RESET_IBUF
    );
\d_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(12),
      Q => \^q\(12),
      R => RESET_IBUF
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(13),
      Q => \^q\(13),
      R => RESET_IBUF
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(14),
      Q => \^q\(14),
      R => RESET_IBUF
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(15),
      Q => \^q\(15),
      R => RESET_IBUF
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(16),
      Q => \^q\(16),
      R => RESET_IBUF
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(17),
      Q => \^q\(17),
      R => RESET_IBUF
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(18),
      Q => \^q\(18),
      R => RESET_IBUF
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(19),
      Q => \^q\(19),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => RESET_IBUF
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(20),
      Q => \^q\(20),
      R => RESET_IBUF
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(21),
      Q => \^q\(21),
      R => RESET_IBUF
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(22),
      Q => \^q\(22),
      R => RESET_IBUF
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(23),
      Q => \^q\(23),
      R => RESET_IBUF
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(24),
      Q => \^q\(24),
      R => RESET_IBUF
    );
\d_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(25),
      Q => \^q\(25),
      R => RESET_IBUF
    );
\d_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(26),
      Q => \^q\(26),
      R => RESET_IBUF
    );
\d_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(27),
      Q => \^q\(27),
      R => RESET_IBUF
    );
\d_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(28),
      Q => \^q\(28),
      R => RESET_IBUF
    );
\d_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(29),
      Q => \^q\(29),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => RESET_IBUF
    );
\d_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(30),
      Q => \^q\(30),
      R => RESET_IBUF
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(31),
      Q => \^q\(31),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => RESET_IBUF
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => RESET_IBUF
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => RESET_IBUF
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => RESET_IBUF
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(8),
      Q => \^q\(8),
      R => RESET_IBUF
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(9),
      Q => \^q\(9),
      R => RESET_IBUF
    );
\sum0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(31),
      O => DI(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Rg_0 is
  port (
    \d_out_reg[30]_rep_0\ : out STD_LOGIC;
    WriteData_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Instruction_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult_OBUF[0]_inst_i_4\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Rg_0 : entity is "Rg";
end Rg_0;

architecture STRUCTURE of Rg_0 is
  signal \^writedata_obuf\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute IOB : string;
  attribute IOB of \d_out_reg[0]\ : label is "TRUE";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \d_out_reg[0]\ : label is "d_out_reg[0]";
  attribute ORIG_CELL_NAME of \d_out_reg[0]_rep\ : label is "d_out_reg[0]";
  attribute IOB of \d_out_reg[10]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[10]\ : label is "d_out_reg[10]";
  attribute ORIG_CELL_NAME of \d_out_reg[10]_rep\ : label is "d_out_reg[10]";
  attribute IOB of \d_out_reg[11]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[11]\ : label is "d_out_reg[11]";
  attribute ORIG_CELL_NAME of \d_out_reg[11]_rep\ : label is "d_out_reg[11]";
  attribute IOB of \d_out_reg[12]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[12]\ : label is "d_out_reg[12]";
  attribute ORIG_CELL_NAME of \d_out_reg[12]_rep\ : label is "d_out_reg[12]";
  attribute IOB of \d_out_reg[13]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[13]\ : label is "d_out_reg[13]";
  attribute ORIG_CELL_NAME of \d_out_reg[13]_rep\ : label is "d_out_reg[13]";
  attribute IOB of \d_out_reg[14]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[14]\ : label is "d_out_reg[14]";
  attribute ORIG_CELL_NAME of \d_out_reg[14]_rep\ : label is "d_out_reg[14]";
  attribute IOB of \d_out_reg[15]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[15]\ : label is "d_out_reg[15]";
  attribute ORIG_CELL_NAME of \d_out_reg[15]_rep\ : label is "d_out_reg[15]";
  attribute IOB of \d_out_reg[16]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[16]\ : label is "d_out_reg[16]";
  attribute ORIG_CELL_NAME of \d_out_reg[16]_rep\ : label is "d_out_reg[16]";
  attribute IOB of \d_out_reg[17]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[17]\ : label is "d_out_reg[17]";
  attribute ORIG_CELL_NAME of \d_out_reg[17]_rep\ : label is "d_out_reg[17]";
  attribute IOB of \d_out_reg[18]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[18]\ : label is "d_out_reg[18]";
  attribute ORIG_CELL_NAME of \d_out_reg[18]_rep\ : label is "d_out_reg[18]";
  attribute IOB of \d_out_reg[19]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[19]\ : label is "d_out_reg[19]";
  attribute ORIG_CELL_NAME of \d_out_reg[19]_rep\ : label is "d_out_reg[19]";
  attribute IOB of \d_out_reg[1]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[1]\ : label is "d_out_reg[1]";
  attribute ORIG_CELL_NAME of \d_out_reg[1]_rep\ : label is "d_out_reg[1]";
  attribute IOB of \d_out_reg[20]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[20]\ : label is "d_out_reg[20]";
  attribute ORIG_CELL_NAME of \d_out_reg[20]_rep\ : label is "d_out_reg[20]";
  attribute IOB of \d_out_reg[21]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[21]\ : label is "d_out_reg[21]";
  attribute ORIG_CELL_NAME of \d_out_reg[21]_rep\ : label is "d_out_reg[21]";
  attribute IOB of \d_out_reg[22]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[22]\ : label is "d_out_reg[22]";
  attribute ORIG_CELL_NAME of \d_out_reg[22]_rep\ : label is "d_out_reg[22]";
  attribute IOB of \d_out_reg[23]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[23]\ : label is "d_out_reg[23]";
  attribute ORIG_CELL_NAME of \d_out_reg[23]_rep\ : label is "d_out_reg[23]";
  attribute IOB of \d_out_reg[24]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[24]\ : label is "d_out_reg[24]";
  attribute ORIG_CELL_NAME of \d_out_reg[24]_rep\ : label is "d_out_reg[24]";
  attribute IOB of \d_out_reg[25]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[25]\ : label is "d_out_reg[25]";
  attribute ORIG_CELL_NAME of \d_out_reg[25]_rep\ : label is "d_out_reg[25]";
  attribute IOB of \d_out_reg[26]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[26]\ : label is "d_out_reg[26]";
  attribute ORIG_CELL_NAME of \d_out_reg[26]_rep\ : label is "d_out_reg[26]";
  attribute IOB of \d_out_reg[27]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[27]\ : label is "d_out_reg[27]";
  attribute ORIG_CELL_NAME of \d_out_reg[27]_rep\ : label is "d_out_reg[27]";
  attribute IOB of \d_out_reg[28]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[28]\ : label is "d_out_reg[28]";
  attribute ORIG_CELL_NAME of \d_out_reg[28]_rep\ : label is "d_out_reg[28]";
  attribute IOB of \d_out_reg[29]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[29]\ : label is "d_out_reg[29]";
  attribute ORIG_CELL_NAME of \d_out_reg[29]_rep\ : label is "d_out_reg[29]";
  attribute IOB of \d_out_reg[2]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[2]\ : label is "d_out_reg[2]";
  attribute ORIG_CELL_NAME of \d_out_reg[2]_rep\ : label is "d_out_reg[2]";
  attribute IOB of \d_out_reg[30]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[30]\ : label is "d_out_reg[30]";
  attribute ORIG_CELL_NAME of \d_out_reg[30]_rep\ : label is "d_out_reg[30]";
  attribute IOB of \d_out_reg[31]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[31]\ : label is "d_out_reg[31]";
  attribute ORIG_CELL_NAME of \d_out_reg[31]_rep\ : label is "d_out_reg[31]";
  attribute IOB of \d_out_reg[3]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[3]\ : label is "d_out_reg[3]";
  attribute ORIG_CELL_NAME of \d_out_reg[3]_rep\ : label is "d_out_reg[3]";
  attribute IOB of \d_out_reg[4]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[4]\ : label is "d_out_reg[4]";
  attribute ORIG_CELL_NAME of \d_out_reg[4]_rep\ : label is "d_out_reg[4]";
  attribute IOB of \d_out_reg[5]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[5]\ : label is "d_out_reg[5]";
  attribute ORIG_CELL_NAME of \d_out_reg[5]_rep\ : label is "d_out_reg[5]";
  attribute IOB of \d_out_reg[6]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[6]\ : label is "d_out_reg[6]";
  attribute ORIG_CELL_NAME of \d_out_reg[6]_rep\ : label is "d_out_reg[6]";
  attribute IOB of \d_out_reg[7]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[7]\ : label is "d_out_reg[7]";
  attribute ORIG_CELL_NAME of \d_out_reg[7]_rep\ : label is "d_out_reg[7]";
  attribute IOB of \d_out_reg[8]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[8]\ : label is "d_out_reg[8]";
  attribute ORIG_CELL_NAME of \d_out_reg[8]_rep\ : label is "d_out_reg[8]";
  attribute IOB of \d_out_reg[9]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[9]\ : label is "d_out_reg[9]";
  attribute ORIG_CELL_NAME of \d_out_reg[9]_rep\ : label is "d_out_reg[9]";
begin
  WriteData_OBUF(31 downto 0) <= \^writedata_obuf\(31 downto 0);
\ALUResult_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \^writedata_obuf\(30),
      I1 => Q(1),
      I2 => Instruction_OBUF(0),
      I3 => \^writedata_obuf\(2),
      I4 => \ALUResult_OBUF[0]_inst_i_4\,
      I5 => Q(0),
      O => \d_out_reg[30]_rep_0\
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => d_out(0),
      R => RESET_IBUF
    );
\d_out_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => \^writedata_obuf\(0),
      R => RESET_IBUF
    );
\d_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(10),
      Q => d_out(10),
      R => RESET_IBUF
    );
\d_out_reg[10]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(10),
      Q => \^writedata_obuf\(10),
      R => RESET_IBUF
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(11),
      Q => d_out(11),
      R => RESET_IBUF
    );
\d_out_reg[11]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(11),
      Q => \^writedata_obuf\(11),
      R => RESET_IBUF
    );
\d_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(12),
      Q => d_out(12),
      R => RESET_IBUF
    );
\d_out_reg[12]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(12),
      Q => \^writedata_obuf\(12),
      R => RESET_IBUF
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(13),
      Q => d_out(13),
      R => RESET_IBUF
    );
\d_out_reg[13]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(13),
      Q => \^writedata_obuf\(13),
      R => RESET_IBUF
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(14),
      Q => d_out(14),
      R => RESET_IBUF
    );
\d_out_reg[14]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(14),
      Q => \^writedata_obuf\(14),
      R => RESET_IBUF
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(15),
      Q => d_out(15),
      R => RESET_IBUF
    );
\d_out_reg[15]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(15),
      Q => \^writedata_obuf\(15),
      R => RESET_IBUF
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(16),
      Q => d_out(16),
      R => RESET_IBUF
    );
\d_out_reg[16]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(16),
      Q => \^writedata_obuf\(16),
      R => RESET_IBUF
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(17),
      Q => d_out(17),
      R => RESET_IBUF
    );
\d_out_reg[17]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(17),
      Q => \^writedata_obuf\(17),
      R => RESET_IBUF
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(18),
      Q => d_out(18),
      R => RESET_IBUF
    );
\d_out_reg[18]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(18),
      Q => \^writedata_obuf\(18),
      R => RESET_IBUF
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(19),
      Q => d_out(19),
      R => RESET_IBUF
    );
\d_out_reg[19]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(19),
      Q => \^writedata_obuf\(19),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => d_out(1),
      R => RESET_IBUF
    );
\d_out_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => \^writedata_obuf\(1),
      R => RESET_IBUF
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(20),
      Q => d_out(20),
      R => RESET_IBUF
    );
\d_out_reg[20]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(20),
      Q => \^writedata_obuf\(20),
      R => RESET_IBUF
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(21),
      Q => d_out(21),
      R => RESET_IBUF
    );
\d_out_reg[21]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(21),
      Q => \^writedata_obuf\(21),
      R => RESET_IBUF
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(22),
      Q => d_out(22),
      R => RESET_IBUF
    );
\d_out_reg[22]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(22),
      Q => \^writedata_obuf\(22),
      R => RESET_IBUF
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(23),
      Q => d_out(23),
      R => RESET_IBUF
    );
\d_out_reg[23]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(23),
      Q => \^writedata_obuf\(23),
      R => RESET_IBUF
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(24),
      Q => d_out(24),
      R => RESET_IBUF
    );
\d_out_reg[24]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(24),
      Q => \^writedata_obuf\(24),
      R => RESET_IBUF
    );
\d_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(25),
      Q => d_out(25),
      R => RESET_IBUF
    );
\d_out_reg[25]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(25),
      Q => \^writedata_obuf\(25),
      R => RESET_IBUF
    );
\d_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(26),
      Q => d_out(26),
      R => RESET_IBUF
    );
\d_out_reg[26]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(26),
      Q => \^writedata_obuf\(26),
      R => RESET_IBUF
    );
\d_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(27),
      Q => d_out(27),
      R => RESET_IBUF
    );
\d_out_reg[27]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(27),
      Q => \^writedata_obuf\(27),
      R => RESET_IBUF
    );
\d_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(28),
      Q => d_out(28),
      R => RESET_IBUF
    );
\d_out_reg[28]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(28),
      Q => \^writedata_obuf\(28),
      R => RESET_IBUF
    );
\d_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(29),
      Q => d_out(29),
      R => RESET_IBUF
    );
\d_out_reg[29]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(29),
      Q => \^writedata_obuf\(29),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => d_out(2),
      R => RESET_IBUF
    );
\d_out_reg[2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => \^writedata_obuf\(2),
      R => RESET_IBUF
    );
\d_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(30),
      Q => d_out(30),
      R => RESET_IBUF
    );
\d_out_reg[30]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(30),
      Q => \^writedata_obuf\(30),
      R => RESET_IBUF
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(31),
      Q => d_out(31),
      R => RESET_IBUF
    );
\d_out_reg[31]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(31),
      Q => \^writedata_obuf\(31),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => d_out(3),
      R => RESET_IBUF
    );
\d_out_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => \^writedata_obuf\(3),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(4),
      Q => d_out(4),
      R => RESET_IBUF
    );
\d_out_reg[4]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(4),
      Q => \^writedata_obuf\(4),
      R => RESET_IBUF
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(5),
      Q => d_out(5),
      R => RESET_IBUF
    );
\d_out_reg[5]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(5),
      Q => \^writedata_obuf\(5),
      R => RESET_IBUF
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(6),
      Q => d_out(6),
      R => RESET_IBUF
    );
\d_out_reg[6]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(6),
      Q => \^writedata_obuf\(6),
      R => RESET_IBUF
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(7),
      Q => d_out(7),
      R => RESET_IBUF
    );
\d_out_reg[7]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(7),
      Q => \^writedata_obuf\(7),
      R => RESET_IBUF
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(8),
      Q => d_out(8),
      R => RESET_IBUF
    );
\d_out_reg[8]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(8),
      Q => \^writedata_obuf\(8),
      R => RESET_IBUF
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(9),
      Q => d_out(9),
      R => RESET_IBUF
    );
\d_out_reg[9]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(9),
      Q => \^writedata_obuf\(9),
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Rg_1 is
  port (
    \d_out_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 );
    WriteData_OBUF : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Instruction_OBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ALUResult_OBUF[30]_inst_i_5\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Rg_1 : entity is "Rg";
end Rg_1;

architecture STRUCTURE of Rg_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 24 downto 0 );
begin
  Q(24 downto 0) <= \^q\(24 downto 0);
\ALUResult_OBUF[30]_inst_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q\(1),
      I1 => WriteData_OBUF(0),
      I2 => Instruction_OBUF(0),
      I3 => WriteData_OBUF(1),
      I4 => \ALUResult_OBUF[30]_inst_i_5\,
      I5 => \^q\(24),
      O => \d_out_reg[1]_0\
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => RESET_IBUF
    );
\d_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(10),
      Q => \^q\(10),
      R => RESET_IBUF
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Instruction_OBUF(0),
      Q => \^q\(11),
      R => RESET_IBUF
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(11),
      Q => \^q\(12),
      R => RESET_IBUF
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(12),
      Q => \^q\(13),
      R => RESET_IBUF
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(13),
      Q => \^q\(14),
      R => RESET_IBUF
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(14),
      Q => \^q\(15),
      R => RESET_IBUF
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(15),
      Q => \^q\(16),
      R => RESET_IBUF
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(16),
      Q => \^q\(17),
      R => RESET_IBUF
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(17),
      Q => \^q\(18),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => RESET_IBUF
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(18),
      Q => \^q\(19),
      R => RESET_IBUF
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(19),
      Q => \^q\(20),
      R => RESET_IBUF
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(20),
      Q => \^q\(21),
      R => RESET_IBUF
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(21),
      Q => \^q\(22),
      R => RESET_IBUF
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(22),
      Q => \^q\(23),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => RESET_IBUF
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(23),
      Q => \^q\(24),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(4),
      Q => \^q\(4),
      R => RESET_IBUF
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(5),
      Q => \^q\(5),
      R => RESET_IBUF
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(6),
      Q => \^q\(6),
      R => RESET_IBUF
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(7),
      Q => \^q\(7),
      R => RESET_IBUF
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(8),
      Q => \^q\(8),
      R => RESET_IBUF
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(9),
      Q => \^q\(9),
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Rg_2 is
  port (
    \d_out_reg[21]_rep_0\ : out STD_LOGIC;
    \d_out_reg[30]_rep_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[24]_rep_0\ : out STD_LOGIC;
    \d_out_reg[26]_rep_0\ : out STD_LOGIC;
    \d_out_reg[27]_rep_0\ : out STD_LOGIC;
    \d_out_reg[24]_rep_1\ : out STD_LOGIC;
    DATA_IN : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_out_reg[20]_rep_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_out_reg[7]_rep_rep_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Result_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out[2]_i_3_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \d_out_reg[26]_rep_1\ : out STD_LOGIC;
    \d_out_reg[21]_rep_1\ : out STD_LOGIC;
    \d_out_reg[31]_rep_0\ : out STD_LOGIC;
    RA2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRC : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_current_state_reg[3]\ : out STD_LOGIC;
    \d_out_reg[23]_rep_0\ : out STD_LOGIC_VECTOR ( 23 downto 0 );
    \d_out_reg[14]_rep_0\ : out STD_LOGIC;
    \d_out_reg[13]_rep_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[11]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[15]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[19]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[23]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[27]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[31]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[13]_rep_1\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_out_reg[17]_rep_0\ : out STD_LOGIC;
    \d_out_reg[31]_1\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \d_out_reg[11]_rep_0\ : out STD_LOGIC;
    \d_out_reg[11]_rep_rep_0\ : out STD_LOGIC;
    \d_out_reg[7]_rep_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DOADO : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \d_out_reg[31]_2\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_out_reg[31]_3\ : in STD_LOGIC;
    \d_out_reg[31]_4\ : in STD_LOGIC;
    \d_out_reg[31]_5\ : in STD_LOGIC;
    DOPADOP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \d_out_reg[28]_0\ : in STD_LOGIC_VECTOR ( 24 downto 0 );
    WriteData_OBUF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_out_reg[31]_6\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[0]_0\ : in STD_LOGIC;
    \ALUResult_OBUF[30]_inst_i_2_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_current_state[0]_i_3\ : in STD_LOGIC;
    \FSM_sequential_current_state[2]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DATA_OUT2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    R15 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    RESET_IBUF : in STD_LOGIC;
    IRWrite : in STD_LOGIC;
    \d_out_reg[31]_7\ : in STD_LOGIC_VECTOR ( 28 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Rg_2 : entity is "Rg";
end Rg_2;

architecture STRUCTURE of Rg_2 is
  signal \ALUResult_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[10]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[11]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[12]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[13]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[13]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[13]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[13]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[14]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[15]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[16]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[17]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[18]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[19]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[20]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[21]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[22]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[23]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[24]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[25]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[26]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[27]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[28]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[29]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_12_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[30]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_10_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_8_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[31]_inst_i_9_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[8]_inst_i_7_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_2_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_3_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_4_n_0\ : STD_LOGIC;
  signal \ALUResult_OBUF[9]_inst_i_5_n_0\ : STD_LOGIC;
  signal \ALUblock/Carry\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[2]_i_7_n_0\ : STD_LOGIC;
  signal Instruction_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ra2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^result_obuf\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SrcB_integer : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SrcB_integer0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \d_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_4_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_5_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_6_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_7_n_0\ : STD_LOGIC;
  signal \d_out[2]_i_8_n_0\ : STD_LOGIC;
  signal \^d_out_reg[20]_rep_0\ : STD_LOGIC;
  signal \^d_out_reg[24]_rep_0\ : STD_LOGIC;
  signal \^d_out_reg[26]_rep_0\ : STD_LOGIC;
  signal \^d_out_reg[26]_rep_1\ : STD_LOGIC;
  signal \^d_out_reg[27]_rep_0\ : STD_LOGIC;
  signal \^d_out_reg[30]_rep_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^d_out_reg[31]_rep_0\ : STD_LOGIC;
  signal \^d_out_reg[7]_rep_rep_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \sum0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sum0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_i_9_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_5_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_6_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_7_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_8_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_i_9_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_5_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_6_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_7_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_8_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_i_9_n_0\ : STD_LOGIC;
  signal \sum0_carry__6_i_8_n_0\ : STD_LOGIC;
  signal \sum0_carry__6_i_9_n_0\ : STD_LOGIC;
  signal sum0_carry_i_10_n_0 : STD_LOGIC;
  signal sum0_carry_i_11_n_0 : STD_LOGIC;
  signal sum0_carry_i_12_n_0 : STD_LOGIC;
  signal sum0_carry_i_6_n_0 : STD_LOGIC;
  signal sum0_carry_i_7_n_0 : STD_LOGIC;
  signal sum0_carry_i_9_n_0 : STD_LOGIC;
  signal \NLW_d_out_reg[1]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_d_out_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum0_carry__0_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__1_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__2_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__3_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__4_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__5_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__6_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum0_carry__6_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sum0_carry_i_7_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \ALUResult_OBUF[23]_inst_i_2\ : label is "RETARGET";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \d_out[0]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \d_out[0]_i_1__2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \d_out[10]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \d_out[13]_i_1__1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \d_out[14]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \d_out[15]_i_1__1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \d_out[16]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \d_out[17]_i_1__1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \d_out[18]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \d_out[19]_i_1__1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \d_out[1]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \d_out[1]_i_1__2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \d_out[20]_i_1__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \d_out[21]_i_1__1\ : label is "soft_lutpair48";
  attribute OPT_MODIFIED of \d_out[23]_i_1__0\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \d_out[23]_i_1__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \d_out[24]_i_1__1\ : label is "soft_lutpair49";
  attribute OPT_MODIFIED of \d_out[2]_i_1__1\ : label is "RETARGET";
  attribute SOFT_HLUTNM of \d_out[2]_i_1__2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \d_out[3]_i_1__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \d_out[4]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \d_out[5]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \d_out[6]_i_1__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \d_out[7]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \d_out[8]_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \d_out[9]_i_1__1\ : label is "soft_lutpair34";
  attribute IOB : string;
  attribute IOB of \d_out_reg[0]\ : label is "TRUE";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \d_out_reg[0]\ : label is "d_out_reg[0]";
  attribute ORIG_CELL_NAME of \d_out_reg[0]_rep\ : label is "d_out_reg[0]";
  attribute IOB of \d_out_reg[11]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[11]\ : label is "d_out_reg[11]";
  attribute IOB of \d_out_reg[11]_rep\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[11]_rep\ : label is "d_out_reg[11]";
  attribute IOB of \d_out_reg[11]_rep_rep\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[11]_rep_rep\ : label is "d_out_reg[11]";
  attribute ORIG_CELL_NAME of \d_out_reg[11]_rep_rep_rep\ : label is "d_out_reg[11]";
  attribute IOB of \d_out_reg[12]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[12]\ : label is "d_out_reg[12]";
  attribute ORIG_CELL_NAME of \d_out_reg[12]_rep\ : label is "d_out_reg[12]";
  attribute IOB of \d_out_reg[13]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[13]\ : label is "d_out_reg[13]";
  attribute ORIG_CELL_NAME of \d_out_reg[13]_rep\ : label is "d_out_reg[13]";
  attribute IOB of \d_out_reg[14]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[14]\ : label is "d_out_reg[14]";
  attribute ORIG_CELL_NAME of \d_out_reg[14]_rep\ : label is "d_out_reg[14]";
  attribute IOB of \d_out_reg[15]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[15]\ : label is "d_out_reg[15]";
  attribute ORIG_CELL_NAME of \d_out_reg[15]_rep\ : label is "d_out_reg[15]";
  attribute IOB of \d_out_reg[16]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[16]\ : label is "d_out_reg[16]";
  attribute ORIG_CELL_NAME of \d_out_reg[16]_rep\ : label is "d_out_reg[16]";
  attribute IOB of \d_out_reg[17]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[17]\ : label is "d_out_reg[17]";
  attribute ORIG_CELL_NAME of \d_out_reg[17]_rep\ : label is "d_out_reg[17]";
  attribute IOB of \d_out_reg[18]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[18]\ : label is "d_out_reg[18]";
  attribute ORIG_CELL_NAME of \d_out_reg[18]_rep\ : label is "d_out_reg[18]";
  attribute IOB of \d_out_reg[19]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[19]\ : label is "d_out_reg[19]";
  attribute ORIG_CELL_NAME of \d_out_reg[19]_rep\ : label is "d_out_reg[19]";
  attribute IOB of \d_out_reg[1]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[1]\ : label is "d_out_reg[1]";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \d_out_reg[1]_i_2\ : label is 35;
  attribute ORIG_CELL_NAME of \d_out_reg[1]_rep\ : label is "d_out_reg[1]";
  attribute IOB of \d_out_reg[20]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[20]\ : label is "d_out_reg[20]";
  attribute ORIG_CELL_NAME of \d_out_reg[20]_rep\ : label is "d_out_reg[20]";
  attribute IOB of \d_out_reg[21]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[21]\ : label is "d_out_reg[21]";
  attribute ORIG_CELL_NAME of \d_out_reg[21]_rep\ : label is "d_out_reg[21]";
  attribute IOB of \d_out_reg[22]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[22]\ : label is "d_out_reg[22]";
  attribute ORIG_CELL_NAME of \d_out_reg[22]_rep\ : label is "d_out_reg[22]";
  attribute IOB of \d_out_reg[23]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[23]\ : label is "d_out_reg[23]";
  attribute ORIG_CELL_NAME of \d_out_reg[23]_rep\ : label is "d_out_reg[23]";
  attribute IOB of \d_out_reg[24]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[24]\ : label is "d_out_reg[24]";
  attribute ORIG_CELL_NAME of \d_out_reg[24]_rep\ : label is "d_out_reg[24]";
  attribute IOB of \d_out_reg[25]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[25]\ : label is "d_out_reg[25]";
  attribute ORIG_CELL_NAME of \d_out_reg[25]_rep\ : label is "d_out_reg[25]";
  attribute IOB of \d_out_reg[26]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[26]\ : label is "d_out_reg[26]";
  attribute ORIG_CELL_NAME of \d_out_reg[26]_rep\ : label is "d_out_reg[26]";
  attribute IOB of \d_out_reg[27]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[27]\ : label is "d_out_reg[27]";
  attribute ORIG_CELL_NAME of \d_out_reg[27]_rep\ : label is "d_out_reg[27]";
  attribute IOB of \d_out_reg[28]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[28]\ : label is "d_out_reg[28]";
  attribute ORIG_CELL_NAME of \d_out_reg[28]_rep\ : label is "d_out_reg[28]";
  attribute IOB of \d_out_reg[29]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[29]\ : label is "d_out_reg[29]";
  attribute ORIG_CELL_NAME of \d_out_reg[29]_rep\ : label is "d_out_reg[29]";
  attribute IOB of \d_out_reg[2]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[2]\ : label is "d_out_reg[2]";
  attribute ORIG_CELL_NAME of \d_out_reg[2]_rep\ : label is "d_out_reg[2]";
  attribute IOB of \d_out_reg[30]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[30]\ : label is "d_out_reg[30]";
  attribute ORIG_CELL_NAME of \d_out_reg[30]_rep\ : label is "d_out_reg[30]";
  attribute IOB of \d_out_reg[31]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[31]\ : label is "d_out_reg[31]";
  attribute ORIG_CELL_NAME of \d_out_reg[31]_rep\ : label is "d_out_reg[31]";
  attribute IOB of \d_out_reg[3]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[3]\ : label is "d_out_reg[3]";
  attribute ORIG_CELL_NAME of \d_out_reg[3]_rep\ : label is "d_out_reg[3]";
  attribute IOB of \d_out_reg[4]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[4]\ : label is "d_out_reg[4]";
  attribute ORIG_CELL_NAME of \d_out_reg[4]_rep\ : label is "d_out_reg[4]";
  attribute IOB of \d_out_reg[5]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[5]\ : label is "d_out_reg[5]";
  attribute ORIG_CELL_NAME of \d_out_reg[5]_rep\ : label is "d_out_reg[5]";
  attribute IOB of \d_out_reg[7]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[7]\ : label is "d_out_reg[7]";
  attribute IOB of \d_out_reg[7]_rep\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[7]_rep\ : label is "d_out_reg[7]";
  attribute ORIG_CELL_NAME of \d_out_reg[7]_rep_rep\ : label is "d_out_reg[7]";
  attribute IOB of \d_out_reg[8]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[8]\ : label is "d_out_reg[8]";
  attribute ORIG_CELL_NAME of \d_out_reg[8]_rep\ : label is "d_out_reg[8]";
  attribute ADDER_THRESHOLD of \sum0_carry__0_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__1_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__2_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__3_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__4_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__5_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \sum0_carry__6_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of sum0_carry_i_7 : label is 35;
begin
  RA2(3 downto 0) <= \^ra2\(3 downto 0);
  Result_OBUF(31 downto 0) <= \^result_obuf\(31 downto 0);
  \d_out_reg[20]_rep_0\ <= \^d_out_reg[20]_rep_0\;
  \d_out_reg[24]_rep_0\ <= \^d_out_reg[24]_rep_0\;
  \d_out_reg[26]_rep_0\ <= \^d_out_reg[26]_rep_0\;
  \d_out_reg[26]_rep_1\ <= \^d_out_reg[26]_rep_1\;
  \d_out_reg[27]_rep_0\ <= \^d_out_reg[27]_rep_0\;
  \d_out_reg[30]_rep_0\(3 downto 0) <= \^d_out_reg[30]_rep_0\(3 downto 0);
  \d_out_reg[31]_rep_0\ <= \^d_out_reg[31]_rep_0\;
  \d_out_reg[7]_rep_rep_0\(31 downto 0) <= \^d_out_reg[7]_rep_rep_0\(31 downto 0);
\ALUResult_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F100"
    )
        port map (
      I0 => \ALUResult_OBUF[0]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[0]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[0]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(0)
    );
\ALUResult_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCDCDC232323DC23"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I1 => sum0_carry_i_6_n_0,
      I2 => \d_out_reg[31]_6\(0),
      I3 => \d_out_reg[28]_0\(0),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(0),
      O => \ALUResult_OBUF[0]_inst_i_2_n_0\
    );
\ALUResult_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFAEAAAEAAAEAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I1 => S_0(0),
      I2 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => SrcB_integer(0),
      I5 => \d_out_reg[31]_6\(0),
      O => \ALUResult_OBUF[0]_inst_i_3_n_0\
    );
\ALUResult_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FFF0F2F2"
    )
        port map (
      I0 => Instruction_OBUF(8),
      I1 => \d_out_reg[0]_0\,
      I2 => \ALUResult_OBUF[0]_inst_i_7_n_0\,
      I3 => \ALUResult_OBUF[1]_inst_i_3_n_0\,
      I4 => Instruction_OBUF(6),
      I5 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[0]_inst_i_4_n_0\
    );
\ALUResult_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBE8082"
    )
        port map (
      I0 => WriteData_OBUF(0),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(0),
      O => SrcB_integer(0)
    );
\ALUResult_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000020FFFFFFFF"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_10_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => Instruction_OBUF(8),
      I4 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I5 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[0]_inst_i_7_n_0\
    );
\ALUResult_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF22F222F222F222"
    )
        port map (
      I0 => \ALUResult_OBUF[10]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[10]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[10]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[10]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[20]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[10]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(10)
    );
\ALUResult_OBUF[10]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA5A9"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \d_out_reg[31]_6\(10),
      I2 => sum0_carry_i_6_n_0,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[10]_inst_i_2_n_0\
    );
\ALUResult_OBUF[10]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(10),
      I1 => \d_out_reg[31]_6\(10),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(10),
      O => \ALUResult_OBUF[10]_inst_i_3_n_0\
    );
\ALUResult_OBUF[10]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[11]_inst_i_5_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[10]_inst_i_4_n_0\
    );
\ALUResult_OBUF[10]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFEE"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[10]_inst_i_7_n_0\,
      I2 => \ALUResult_OBUF[11]_inst_i_7_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[10]_inst_i_5_n_0\
    );
\ALUResult_OBUF[10]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555CFC0"
    )
        port map (
      I0 => p_0_in(7),
      I1 => WriteData_OBUF(9),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(9),
      I4 => Instruction_OBUF(8),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[10]_inst_i_6_n_0\
    );
\ALUResult_OBUF[10]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F4F7F"
    )
        port map (
      I0 => p_0_in(12),
      I1 => Instruction_OBUF(8),
      I2 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I3 => p_0_in(10),
      I4 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[10]_inst_i_7_n_0\
    );
\ALUResult_OBUF[10]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(7),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(7),
      O => p_0_in(7)
    );
\ALUResult_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[11]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[11]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[11]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(11)
    );
\ALUResult_OBUF[11]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5030"
    )
        port map (
      I0 => \ALUResult_OBUF[11]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[12]_inst_i_8_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[11]_inst_i_2_n_0\
    );
\ALUResult_OBUF[11]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(11),
      I2 => \d_out_reg[31]_6\(11),
      I3 => S_0(11),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[11]_inst_i_3_n_0\
    );
\ALUResult_OBUF[11]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \ALUResult_OBUF[12]_inst_i_9_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[11]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[11]_inst_i_4_n_0\
    );
\ALUResult_OBUF[11]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FBFBFBF8FB"
    )
        port map (
      I0 => p_0_in(8),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(10),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(10),
      O => \ALUResult_OBUF[11]_inst_i_5_n_0\
    );
\ALUResult_OBUF[11]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(11),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(11),
      O => p_0_in(11)
    );
\ALUResult_OBUF[11]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C8CCC0"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(11),
      I4 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[11]_inst_i_7_n_0\
    );
\ALUResult_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF22F222F222F222"
    )
        port map (
      I0 => \ALUResult_OBUF[12]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[12]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[12]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[12]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[12]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[19]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(12)
    );
\ALUResult_OBUF[12]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(10),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(10),
      O => p_0_in(10)
    );
\ALUResult_OBUF[12]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA5A9"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \d_out_reg[31]_6\(12),
      I2 => sum0_carry_i_6_n_0,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[12]_inst_i_2_n_0\
    );
\ALUResult_OBUF[12]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(12),
      I1 => \d_out_reg[31]_6\(12),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(12),
      O => \ALUResult_OBUF[12]_inst_i_3_n_0\
    );
\ALUResult_OBUF[12]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D00"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[12]_inst_i_8_n_0\,
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[12]_inst_i_4_n_0\
    );
\ALUResult_OBUF[12]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[12]_inst_i_9_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[13]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[12]_inst_i_5_n_0\
    );
\ALUResult_OBUF[12]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077744474"
    )
        port map (
      I0 => p_0_in(10),
      I1 => Instruction_OBUF(8),
      I2 => \d_out_reg[28]_0\(12),
      I3 => \^d_out_reg[26]_rep_1\,
      I4 => WriteData_OBUF(12),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[12]_inst_i_6_n_0\
    );
\ALUResult_OBUF[12]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(12),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(12),
      O => p_0_in(12)
    );
\ALUResult_OBUF[12]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAAAFFFEEEEEEEE"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => p_0_in(11),
      I2 => WriteData_OBUF(9),
      I3 => \^d_out_reg[26]_rep_1\,
      I4 => \d_out_reg[28]_0\(9),
      I5 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[12]_inst_i_8_n_0\
    );
\ALUResult_OBUF[12]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(14),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(12),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[12]_inst_i_9_n_0\
    );
\ALUResult_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[13]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[13]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[13]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(13)
    );
\ALUResult_OBUF[13]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \ALUResult_OBUF[12]_inst_i_6_n_0\,
      I1 => \ALUResult_OBUF[14]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[13]_inst_i_2_n_0\
    );
\ALUResult_OBUF[13]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00A5A544449999"
    )
        port map (
      I0 => p_0_in(13),
      I1 => \d_out_reg[31]_6\(13),
      I2 => sum0_carry_i_6_n_0,
      I3 => S_0(13),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[13]_inst_i_3_n_0\
    );
\ALUResult_OBUF[13]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[14]_inst_i_9_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[13]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[13]_inst_i_4_n_0\
    );
\ALUResult_OBUF[13]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(13),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(12),
      O => p_0_in(13)
    );
\ALUResult_OBUF[13]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF001D1D"
    )
        port map (
      I0 => p_0_in(13),
      I1 => Instruction_OBUF(8),
      I2 => p_0_in(15),
      I3 => \ALUResult_OBUF[31]_inst_i_6_n_0\,
      I4 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[13]_inst_i_6_n_0\
    );
\ALUResult_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[14]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[14]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[14]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(14)
    );
\ALUResult_OBUF[14]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \ALUResult_OBUF[14]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[15]_inst_i_6_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[14]_inst_i_2_n_0\
    );
\ALUResult_OBUF[14]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00A5A544449999"
    )
        port map (
      I0 => p_0_in(14),
      I1 => \d_out_reg[31]_6\(14),
      I2 => sum0_carry_i_6_n_0,
      I3 => S_0(14),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[14]_inst_i_3_n_0\
    );
\ALUResult_OBUF[14]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47FFFFFF47FF0000"
    )
        port map (
      I0 => \ALUResult_OBUF[14]_inst_i_6_n_0\,
      I1 => Instruction_OBUF(8),
      I2 => \ALUResult_OBUF[14]_inst_i_7_n_0\,
      I3 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I4 => Instruction_OBUF(6),
      I5 => \ALUResult_OBUF[14]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[14]_inst_i_4_n_0\
    );
\ALUResult_OBUF[14]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E200FF"
    )
        port map (
      I0 => \d_out_reg[28]_0\(11),
      I1 => \^d_out_reg[26]_rep_1\,
      I2 => WriteData_OBUF(11),
      I3 => p_0_in(13),
      I4 => Instruction_OBUF(8),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[14]_inst_i_5_n_0\
    );
\ALUResult_OBUF[14]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBBBBAFFBBBBBF"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => \d_out_reg[28]_0\(16),
      I2 => Instruction_OBUF(25),
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \^d_out_reg[26]_rep_0\,
      I5 => WriteData_OBUF(17),
      O => \ALUResult_OBUF[14]_inst_i_6_n_0\
    );
\ALUResult_OBUF[14]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBBBBAFFBBBBBF"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => \d_out_reg[28]_0\(14),
      I2 => Instruction_OBUF(25),
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \^d_out_reg[26]_rep_0\,
      I5 => WriteData_OBUF(15),
      O => \ALUResult_OBUF[14]_inst_i_7_n_0\
    );
\ALUResult_OBUF[14]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55777775FF77777F"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => \d_out_reg[28]_0\(24),
      I2 => Instruction_OBUF(25),
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \^d_out_reg[26]_rep_0\,
      I5 => WriteData_OBUF(31),
      O => \ALUResult_OBUF[14]_inst_i_8_n_0\
    );
\ALUResult_OBUF[14]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(16),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(14),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[14]_inst_i_9_n_0\
    );
\ALUResult_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF22F222F222F222"
    )
        port map (
      I0 => \ALUResult_OBUF[15]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[15]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[15]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[15]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[15]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[20]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(15)
    );
\ALUResult_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCE31"
    )
        port map (
      I0 => \d_out_reg[31]_6\(15),
      I1 => sum0_carry_i_6_n_0,
      I2 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I3 => p_0_in(15),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[15]_inst_i_2_n_0\
    );
\ALUResult_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(15),
      I1 => \d_out_reg[31]_6\(15),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(15),
      O => \ALUResult_OBUF[15]_inst_i_3_n_0\
    );
\ALUResult_OBUF[15]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[16]_inst_i_8_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[15]_inst_i_4_n_0\
    );
\ALUResult_OBUF[15]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[15]_inst_i_8_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[16]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[15]_inst_i_5_n_0\
    );
\ALUResult_OBUF[15]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E200FF"
    )
        port map (
      I0 => \d_out_reg[28]_0\(12),
      I1 => \^d_out_reg[26]_rep_1\,
      I2 => WriteData_OBUF(12),
      I3 => p_0_in(14),
      I4 => Instruction_OBUF(8),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[15]_inst_i_6_n_0\
    );
\ALUResult_OBUF[15]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(15),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(14),
      O => p_0_in(15)
    );
\ALUResult_OBUF[15]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(17),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(15),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[15]_inst_i_8_n_0\
    );
\ALUResult_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F222FF22F222"
    )
        port map (
      I0 => \ALUResult_OBUF[16]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[16]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[16]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[16]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[19]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[16]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(16)
    );
\ALUResult_OBUF[16]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(14),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(13),
      O => p_0_in(14)
    );
\ALUResult_OBUF[16]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFCE31"
    )
        port map (
      I0 => \d_out_reg[31]_6\(16),
      I1 => sum0_carry_i_6_n_0,
      I2 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I3 => p_0_in(16),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[16]_inst_i_2_n_0\
    );
\ALUResult_OBUF[16]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(16),
      I1 => \d_out_reg[31]_6\(16),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(16),
      O => \ALUResult_OBUF[16]_inst_i_3_n_0\
    );
\ALUResult_OBUF[16]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D00"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[16]_inst_i_8_n_0\,
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[16]_inst_i_4_n_0\
    );
\ALUResult_OBUF[16]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[16]_inst_i_9_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[17]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[16]_inst_i_5_n_0\
    );
\ALUResult_OBUF[16]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FBFBFBF8FB"
    )
        port map (
      I0 => p_0_in(14),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(15),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(16),
      O => \ALUResult_OBUF[16]_inst_i_6_n_0\
    );
\ALUResult_OBUF[16]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(16),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(15),
      O => p_0_in(16)
    );
\ALUResult_OBUF[16]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FBFBFBF8FB"
    )
        port map (
      I0 => p_0_in(13),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(14),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(15),
      O => \ALUResult_OBUF[16]_inst_i_8_n_0\
    );
\ALUResult_OBUF[16]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(18),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(16),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[16]_inst_i_9_n_0\
    );
\ALUResult_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F222FF22F222"
    )
        port map (
      I0 => \ALUResult_OBUF[17]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[17]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[17]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[17]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[19]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[18]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(17)
    );
\ALUResult_OBUF[17]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA5A9"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \d_out_reg[31]_6\(17),
      I2 => sum0_carry_i_6_n_0,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[17]_inst_i_2_n_0\
    );
\ALUResult_OBUF[17]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(17),
      I1 => \d_out_reg[31]_6\(17),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(17),
      O => \ALUResult_OBUF[17]_inst_i_3_n_0\
    );
\ALUResult_OBUF[17]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D00"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[16]_inst_i_6_n_0\,
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[17]_inst_i_4_n_0\
    );
\ALUResult_OBUF[17]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[17]_inst_i_6_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[18]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[17]_inst_i_5_n_0\
    );
\ALUResult_OBUF[17]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F4F7F"
    )
        port map (
      I0 => p_0_in(19),
      I1 => Instruction_OBUF(8),
      I2 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I3 => p_0_in(17),
      I4 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[17]_inst_i_6_n_0\
    );
\ALUResult_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F222FF22F222"
    )
        port map (
      I0 => \ALUResult_OBUF[18]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[18]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[18]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[18]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[20]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[18]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(18)
    );
\ALUResult_OBUF[18]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA5A9"
    )
        port map (
      I0 => p_0_in(18),
      I1 => \d_out_reg[31]_6\(18),
      I2 => sum0_carry_i_6_n_0,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[18]_inst_i_2_n_0\
    );
\ALUResult_OBUF[18]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(18),
      I1 => \d_out_reg[31]_6\(18),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(18),
      O => \ALUResult_OBUF[18]_inst_i_3_n_0\
    );
\ALUResult_OBUF[18]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[19]_inst_i_7_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[18]_inst_i_4_n_0\
    );
\ALUResult_OBUF[18]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[18]_inst_i_8_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[19]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[18]_inst_i_5_n_0\
    );
\ALUResult_OBUF[18]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1DFFFFFF1D00"
    )
        port map (
      I0 => \d_out_reg[28]_0\(14),
      I1 => \^d_out_reg[26]_rep_1\,
      I2 => WriteData_OBUF(15),
      I3 => Instruction_OBUF(8),
      I4 => \^d_out_reg[30]_rep_0\(0),
      I5 => p_0_in(17),
      O => \ALUResult_OBUF[18]_inst_i_6_n_0\
    );
\ALUResult_OBUF[18]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(18),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(17),
      O => p_0_in(18)
    );
\ALUResult_OBUF[18]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(20),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(18),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[18]_inst_i_8_n_0\
    );
\ALUResult_OBUF[18]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(17),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(16),
      O => p_0_in(17)
    );
\ALUResult_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F222FF22F222"
    )
        port map (
      I0 => \ALUResult_OBUF[19]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[19]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[19]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[19]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[19]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[20]_inst_i_7_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(19)
    );
\ALUResult_OBUF[19]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA5A9"
    )
        port map (
      I0 => p_0_in(19),
      I1 => \d_out_reg[31]_6\(19),
      I2 => sum0_carry_i_6_n_0,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[19]_inst_i_2_n_0\
    );
\ALUResult_OBUF[19]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(19),
      I1 => \d_out_reg[31]_6\(19),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(19),
      O => \ALUResult_OBUF[19]_inst_i_3_n_0\
    );
\ALUResult_OBUF[19]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D00"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[19]_inst_i_7_n_0\,
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[19]_inst_i_4_n_0\
    );
\ALUResult_OBUF[19]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[19]_inst_i_8_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[20]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[19]_inst_i_5_n_0\
    );
\ALUResult_OBUF[19]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007EE4"
    )
        port map (
      I0 => Instruction_OBUF(22),
      I1 => \^d_out_reg[24]_rep_0\,
      I2 => Instruction_OBUF(23),
      I3 => Instruction_OBUF(21),
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I5 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[19]_inst_i_6_n_0\
    );
\ALUResult_OBUF[19]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2FEFEFEF2FE"
    )
        port map (
      I0 => p_0_in(18),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(15),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(16),
      O => \ALUResult_OBUF[19]_inst_i_7_n_0\
    );
\ALUResult_OBUF[19]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(21),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(19),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[19]_inst_i_8_n_0\
    );
\ALUResult_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00B8B8FF000000"
    )
        port map (
      I0 => \ALUResult_OBUF[1]_inst_i_2_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[1]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[1]_inst_i_4_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I5 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(1)
    );
\ALUResult_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F7070505F7F7F"
    )
        port map (
      I0 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I1 => p_0_in(4),
      I2 => Instruction_OBUF(8),
      I3 => p_0_in(30),
      I4 => \^d_out_reg[30]_rep_0\(0),
      I5 => p_0_in(2),
      O => \ALUResult_OBUF[1]_inst_i_2_n_0\
    );
\ALUResult_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C050CF5FCF5FCF5"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \ALUResult_OBUF[1]_inst_i_5_n_0\,
      I2 => Instruction_OBUF(8),
      I3 => \^d_out_reg[30]_rep_0\(0),
      I4 => p_0_in(3),
      I5 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[1]_inst_i_3_n_0\
    );
\ALUResult_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00A5A544449999"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \d_out_reg[31]_6\(1),
      I2 => sum0_carry_i_6_n_0,
      I3 => S_0(1),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[1]_inst_i_4_n_0\
    );
\ALUResult_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBE8082"
    )
        port map (
      I0 => WriteData_OBUF(29),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \ALUResult_OBUF[1]_inst_i_5_n_0\
    );
\ALUResult_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222F222FF22F222"
    )
        port map (
      I0 => \ALUResult_OBUF[20]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[20]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[20]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[20]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[20]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[20]_inst_i_7_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(20)
    );
\ALUResult_OBUF[20]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(19),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(18),
      O => p_0_in(19)
    );
\ALUResult_OBUF[20]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA5A9"
    )
        port map (
      I0 => p_0_in(20),
      I1 => \d_out_reg[31]_6\(20),
      I2 => sum0_carry_i_6_n_0,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[20]_inst_i_2_n_0\
    );
\ALUResult_OBUF[20]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(20),
      I1 => \d_out_reg[31]_6\(20),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(20),
      O => \ALUResult_OBUF[20]_inst_i_3_n_0\
    );
\ALUResult_OBUF[20]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5D00"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[21]_inst_i_6_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[20]_inst_i_4_n_0\
    );
\ALUResult_OBUF[20]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[20]_inst_i_9_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[21]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[20]_inst_i_5_n_0\
    );
\ALUResult_OBUF[20]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007EE400000000"
    )
        port map (
      I0 => Instruction_OBUF(22),
      I1 => \^d_out_reg[24]_rep_0\,
      I2 => Instruction_OBUF(23),
      I3 => Instruction_OBUF(21),
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I5 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[20]_inst_i_6_n_0\
    );
\ALUResult_OBUF[20]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2FEFEFEF2FE"
    )
        port map (
      I0 => p_0_in(19),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(16),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(17),
      O => \ALUResult_OBUF[20]_inst_i_7_n_0\
    );
\ALUResult_OBUF[20]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(20),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(19),
      O => p_0_in(20)
    );
\ALUResult_OBUF[20]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(22),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(20),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[20]_inst_i_9_n_0\
    );
\ALUResult_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0EEF0CC"
    )
        port map (
      I0 => \ALUResult_OBUF[21]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[21]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[21]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I4 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(21)
    );
\ALUResult_OBUF[21]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[22]_inst_i_6_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[21]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[21]_inst_i_2_n_0\
    );
\ALUResult_OBUF[21]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \ALUResult_OBUF[21]_inst_i_6_n_0\,
      I1 => \ALUResult_OBUF[22]_inst_i_7_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[21]_inst_i_3_n_0\
    );
\ALUResult_OBUF[21]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(21),
      I2 => \d_out_reg[31]_6\(21),
      I3 => S_0(21),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[21]_inst_i_4_n_0\
    );
\ALUResult_OBUF[21]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(23),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(21),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[21]_inst_i_5_n_0\
    );
\ALUResult_OBUF[21]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077744474"
    )
        port map (
      I0 => p_0_in(18),
      I1 => Instruction_OBUF(8),
      I2 => \d_out_reg[28]_0\(19),
      I3 => \^d_out_reg[26]_rep_1\,
      I4 => WriteData_OBUF(20),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[21]_inst_i_6_n_0\
    );
\ALUResult_OBUF[21]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(21),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(20),
      O => p_0_in(21)
    );
\ALUResult_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0EEF0CC"
    )
        port map (
      I0 => \ALUResult_OBUF[22]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[22]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[22]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I4 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(22)
    );
\ALUResult_OBUF[22]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[22]_inst_i_5_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[22]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[22]_inst_i_2_n_0\
    );
\ALUResult_OBUF[22]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \ALUResult_OBUF[22]_inst_i_7_n_0\,
      I1 => \ALUResult_OBUF[22]_inst_i_8_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[22]_inst_i_3_n_0\
    );
\ALUResult_OBUF[22]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(22),
      I2 => \d_out_reg[31]_6\(22),
      I3 => S_0(22),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[22]_inst_i_4_n_0\
    );
\ALUResult_OBUF[22]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05FF11FF"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => p_0_in(23),
      I2 => p_0_in(25),
      I3 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I4 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[22]_inst_i_5_n_0\
    );
\ALUResult_OBUF[22]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(24),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(22),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[22]_inst_i_6_n_0\
    );
\ALUResult_OBUF[22]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8B800FF"
    )
        port map (
      I0 => WriteData_OBUF(19),
      I1 => \^d_out_reg[26]_rep_1\,
      I2 => \d_out_reg[28]_0\(18),
      I3 => p_0_in(21),
      I4 => Instruction_OBUF(8),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[22]_inst_i_7_n_0\
    );
\ALUResult_OBUF[22]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E200FF"
    )
        port map (
      I0 => \d_out_reg[28]_0\(19),
      I1 => \^d_out_reg[26]_rep_1\,
      I2 => WriteData_OBUF(20),
      I3 => p_0_in(22),
      I4 => Instruction_OBUF(8),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[22]_inst_i_8_n_0\
    );
\ALUResult_OBUF[22]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1514D5D7"
    )
        port map (
      I0 => \d_out_reg[28]_0\(21),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => WriteData_OBUF(22),
      O => p_0_in(22)
    );
\ALUResult_OBUF[23]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33330555"
    )
        port map (
      I0 => \ALUResult_OBUF[23]_inst_i_3_n_0\,
      I1 => \ALUResult_OBUF[23]_inst_i_4_n_0\,
      I2 => \ALUResult_OBUF[23]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(23)
    );
\ALUResult_OBUF[23]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7400"
    )
        port map (
      I0 => \ALUResult_OBUF[22]_inst_i_8_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[24]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[23]_inst_i_3_n_0\
    );
\ALUResult_OBUF[23]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00CF663CFFCF663C"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(23),
      I2 => \d_out_reg[31]_6\(23),
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(23),
      O => \ALUResult_OBUF[23]_inst_i_4_n_0\
    );
\ALUResult_OBUF[23]_inst_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \ALUResult_OBUF[24]_inst_i_7_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[23]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[23]_inst_i_5_n_0\
    );
\ALUResult_OBUF[23]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFABAEAAA"
    )
        port map (
      I0 => Instruction_OBUF(6),
      I1 => Instruction_OBUF(8),
      I2 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I3 => p_0_in(25),
      I4 => p_0_in(23),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[23]_inst_i_6_n_0\
    );
\ALUResult_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[24]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[24]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[24]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(24)
    );
\ALUResult_OBUF[24]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5030"
    )
        port map (
      I0 => \ALUResult_OBUF[24]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[25]_inst_i_6_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[24]_inst_i_2_n_0\
    );
\ALUResult_OBUF[24]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(24),
      I2 => \d_out_reg[31]_6\(24),
      I3 => S_0(24),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[24]_inst_i_3_n_0\
    );
\ALUResult_OBUF[24]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \ALUResult_OBUF[25]_inst_i_4_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[24]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[24]_inst_i_4_n_0\
    );
\ALUResult_OBUF[24]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FBFBFBF8FB"
    )
        port map (
      I0 => p_0_in(21),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(22),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(23),
      O => \ALUResult_OBUF[24]_inst_i_5_n_0\
    );
\ALUResult_OBUF[24]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(24),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(23),
      O => p_0_in(24)
    );
\ALUResult_OBUF[24]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05FF11FF"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => p_0_in(24),
      I2 => p_0_in(26),
      I3 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I4 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[24]_inst_i_7_n_0\
    );
\ALUResult_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I1 => \ALUResult_OBUF[25]_inst_i_2_n_0\,
      I2 => \ALUResult_OBUF[25]_inst_i_3_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(25)
    );
\ALUResult_OBUF[25]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCAF0CA0FCA00CA"
    )
        port map (
      I0 => \ALUResult_OBUF[25]_inst_i_4_n_0\,
      I1 => \ALUResult_OBUF[25]_inst_i_5_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I4 => \ALUResult_OBUF[26]_inst_i_4_n_0\,
      I5 => \ALUResult_OBUF[25]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[25]_inst_i_2_n_0\
    );
\ALUResult_OBUF[25]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333221100303201"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => \ALUResult_OBUF[25]_inst_i_7_n_0\,
      I2 => \d_out_reg[31]_6\(25),
      I3 => p_0_in(25),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[25]_inst_i_3_n_0\
    );
\ALUResult_OBUF[25]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C8CCC0"
    )
        port map (
      I0 => p_0_in(27),
      I1 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(25),
      I4 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[25]_inst_i_4_n_0\
    );
\ALUResult_OBUF[25]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C8CCC0"
    )
        port map (
      I0 => p_0_in(28),
      I1 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(26),
      I4 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[25]_inst_i_5_n_0\
    );
\ALUResult_OBUF[25]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAABABFBABF"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => WriteData_OBUF(24),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(23),
      I4 => p_0_in(22),
      I5 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[25]_inst_i_6_n_0\
    );
\ALUResult_OBUF[25]_inst_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => S_0(25),
      I1 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \ALUResult_OBUF[25]_inst_i_7_n_0\
    );
\ALUResult_OBUF[25]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(25),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => p_0_in(25)
    );
\ALUResult_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I1 => \ALUResult_OBUF[26]_inst_i_2_n_0\,
      I2 => \ALUResult_OBUF[26]_inst_i_3_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(26)
    );
\ALUResult_OBUF[26]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555105400001054"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[27]_inst_i_8_n_0\,
      I3 => \ALUResult_OBUF[26]_inst_i_4_n_0\,
      I4 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[26]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[26]_inst_i_2_n_0\
    );
\ALUResult_OBUF[26]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(26),
      I2 => \d_out_reg[31]_6\(26),
      I3 => S_0(26),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[26]_inst_i_3_n_0\
    );
\ALUResult_OBUF[26]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEFEAEAEAEFEFEF"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => p_0_in(23),
      I2 => Instruction_OBUF(8),
      I3 => WriteData_OBUF(25),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => \d_out_reg[28]_0\(24),
      O => \ALUResult_OBUF[26]_inst_i_4_n_0\
    );
\ALUResult_OBUF[26]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBBBBB8BBBB"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_7_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => Instruction_OBUF(8),
      I3 => \ALUResult_OBUF[26]_inst_i_8_n_0\,
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I5 => \ALUResult_OBUF[26]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[26]_inst_i_5_n_0\
    );
\ALUResult_OBUF[26]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(26),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => p_0_in(26)
    );
\ALUResult_OBUF[26]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(23),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(22),
      O => p_0_in(23)
    );
\ALUResult_OBUF[26]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FAAB0AA8"
    )
        port map (
      I0 => \d_out_reg[28]_0\(24),
      I1 => Instruction_OBUF(25),
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => \^d_out_reg[26]_rep_0\,
      I4 => WriteData_OBUF(26),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[26]_inst_i_8_n_0\
    );
\ALUResult_OBUF[26]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABBBBBAFFBBBBBF"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => \d_out_reg[28]_0\(24),
      I2 => Instruction_OBUF(25),
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \^d_out_reg[26]_rep_0\,
      I5 => WriteData_OBUF(28),
      O => \ALUResult_OBUF[26]_inst_i_9_n_0\
    );
\ALUResult_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0EEEEFFF0CCCC"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[27]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[27]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I5 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(27)
    );
\ALUResult_OBUF[27]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBE8082"
    )
        port map (
      I0 => WriteData_OBUF(27),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \ALUResult_OBUF[27]_inst_i_10_n_0\
    );
\ALUResult_OBUF[27]_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_6_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[27]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[27]_inst_i_2_n_0\
    );
\ALUResult_OBUF[27]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_8_n_0\,
      I1 => \ALUResult_OBUF[28]_inst_i_8_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[27]_inst_i_3_n_0\
    );
\ALUResult_OBUF[27]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"410A4155415F4100"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I1 => sum0_carry_i_6_n_0,
      I2 => p_0_in(27),
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \d_out_reg[31]_6\(27),
      I5 => \ALUResult_OBUF[27]_inst_i_10_n_0\,
      O => \ALUResult_OBUF[27]_inst_i_4_n_0\
    );
\ALUResult_OBUF[27]_inst_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I1 => S_0(27),
      O => \ALUResult_OBUF[27]_inst_i_5_n_0\
    );
\ALUResult_OBUF[27]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC00FDF0"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_7_n_0\,
      I1 => \ALUResult_OBUF[30]_inst_i_8_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[30]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      I5 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      O => \ALUResult_OBUF[27]_inst_i_6_n_0\
    );
\ALUResult_OBUF[27]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \ALUResult_OBUF[27]_inst_i_10_n_0\,
      I1 => Instruction_OBUF(8),
      I2 => \ALUResult_OBUF[1]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_6_n_0\,
      I4 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[27]_inst_i_7_n_0\
    );
\ALUResult_OBUF[27]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077744474"
    )
        port map (
      I0 => p_0_in(24),
      I1 => Instruction_OBUF(8),
      I2 => \d_out_reg[28]_0\(24),
      I3 => \^d_out_reg[26]_rep_1\,
      I4 => WriteData_OBUF(26),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[27]_inst_i_8_n_0\
    );
\ALUResult_OBUF[27]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(27),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => p_0_in(27)
    );
\ALUResult_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4F4F44"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I1 => \ALUResult_OBUF[28]_inst_i_2_n_0\,
      I2 => \ALUResult_OBUF[28]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[28]_inst_i_4_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(28)
    );
\ALUResult_OBUF[28]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBE8082"
    )
        port map (
      I0 => WriteData_OBUF(28),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \ALUResult_OBUF[28]_inst_i_10_n_0\
    );
\ALUResult_OBUF[28]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCAF0CA0FCA00CA"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_6_n_0\,
      I1 => \ALUResult_OBUF[28]_inst_i_7_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I4 => \ALUResult_OBUF[29]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[28]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[28]_inst_i_2_n_0\
    );
\ALUResult_OBUF[28]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FBF0F0FFFBF0F0"
    )
        port map (
      I0 => p_0_in(28),
      I1 => \d_out_reg[31]_6\(28),
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => S_0(28),
      O => \ALUResult_OBUF[28]_inst_i_3_n_0\
    );
\ALUResult_OBUF[28]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1DE21D1D1DE2E2"
    )
        port map (
      I0 => \d_out_reg[28]_0\(24),
      I1 => \^d_out_reg[26]_rep_1\,
      I2 => WriteData_OBUF(28),
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => sum0_carry_i_6_n_0,
      I5 => \d_out_reg[31]_6\(28),
      O => \ALUResult_OBUF[28]_inst_i_4_n_0\
    );
\ALUResult_OBUF[28]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBBBBBBBA"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_8_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => Instruction_OBUF(8),
      I4 => \^d_out_reg[30]_rep_0\(0),
      I5 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      O => \ALUResult_OBUF[28]_inst_i_5_n_0\
    );
\ALUResult_OBUF[28]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_10_n_0\,
      I1 => Instruction_OBUF(8),
      I2 => \ALUResult_OBUF[30]_inst_i_12_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_6_n_0\,
      I4 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[28]_inst_i_6_n_0\
    );
\ALUResult_OBUF[28]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000E4FFE400"
    )
        port map (
      I0 => Instruction_OBUF(8),
      I1 => WriteData_OBUF(29),
      I2 => WriteData_OBUF(31),
      I3 => \^d_out_reg[26]_rep_1\,
      I4 => \d_out_reg[28]_0\(24),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[28]_inst_i_7_n_0\
    );
\ALUResult_OBUF[28]_inst_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBF088F0"
    )
        port map (
      I0 => WriteData_OBUF(25),
      I1 => Instruction_OBUF(8),
      I2 => \d_out_reg[28]_0\(24),
      I3 => \^d_out_reg[26]_rep_1\,
      I4 => WriteData_OBUF(27),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[28]_inst_i_8_n_0\
    );
\ALUResult_OBUF[28]_inst_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(28),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => p_0_in(28)
    );
\ALUResult_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \ALUResult_OBUF[29]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[29]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(29)
    );
\ALUResult_OBUF[29]_inst_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(29),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => p_0_in(29)
    );
\ALUResult_OBUF[29]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDEC3120"
    )
        port map (
      I0 => Instruction_OBUF(6),
      I1 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I2 => \ALUResult_OBUF[29]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[30]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[29]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \ALUResult_OBUF[29]_inst_i_2_n_0\
    );
\ALUResult_OBUF[29]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000F00000008"
    )
        port map (
      I0 => \ALUResult_OBUF[29]_inst_i_7_n_0\,
      I1 => Instruction_OBUF(22),
      I2 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      I3 => \ALUResult_OBUF[29]_inst_i_8_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      I5 => \ALUResult_OBUF[29]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[29]_inst_i_3_n_0\
    );
\ALUResult_OBUF[29]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88333088BBC0C3"
    )
        port map (
      I0 => S_0(29),
      I1 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I2 => \d_out_reg[31]_6\(29),
      I3 => sum0_carry_i_6_n_0,
      I4 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I5 => p_0_in(29),
      O => \ALUResult_OBUF[29]_inst_i_4_n_0\
    );
\ALUResult_OBUF[29]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33470047"
    )
        port map (
      I0 => p_0_in(26),
      I1 => Instruction_OBUF(8),
      I2 => p_0_in(28),
      I3 => \^d_out_reg[30]_rep_0\(0),
      I4 => SrcB_integer(0),
      O => \ALUResult_OBUF[29]_inst_i_5_n_0\
    );
\ALUResult_OBUF[29]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FA50EE44"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => \ALUResult_OBUF[1]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[30]_inst_i_12_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_6_n_0\,
      I4 => Instruction_OBUF(6),
      I5 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[29]_inst_i_6_n_0\
    );
\ALUResult_OBUF[29]_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Instruction_OBUF(23),
      I1 => Instruction_OBUF(21),
      O => \ALUResult_OBUF[29]_inst_i_7_n_0\
    );
\ALUResult_OBUF[29]_inst_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => Instruction_OBUF(8),
      I2 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[29]_inst_i_8_n_0\
    );
\ALUResult_OBUF[29]_inst_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => Instruction_OBUF(21),
      I1 => Instruction_OBUF(23),
      I2 => \^d_out_reg[24]_rep_0\,
      I3 => Instruction_OBUF(22),
      O => \ALUResult_OBUF[29]_inst_i_9_n_0\
    );
\ALUResult_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[2]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[2]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[2]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(2)
    );
\ALUResult_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101000000FF0000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \^d_out_reg[30]_rep_0\(0),
      I2 => Instruction_OBUF(8),
      I3 => \ALUResult_OBUF[3]_inst_i_5_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I5 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[2]_inst_i_2_n_0\
    );
\ALUResult_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(2),
      I2 => \d_out_reg[31]_6\(2),
      I3 => S_0(2),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[2]_inst_i_3_n_0\
    );
\ALUResult_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[3]_inst_i_7_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[1]_inst_i_2_n_0\,
      O => \ALUResult_OBUF[2]_inst_i_4_n_0\
    );
\ALUResult_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(1),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(1),
      O => p_0_in(1)
    );
\ALUResult_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(2),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(2),
      O => p_0_in(2)
    );
\ALUResult_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEECCC"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I1 => \ALUResult_OBUF[30]_inst_i_2_n_0\,
      I2 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I3 => S_0(30),
      I4 => \ALUResult_OBUF[30]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(30)
    );
\ALUResult_OBUF[30]_inst_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^d_out_reg[26]_rep_0\,
      I1 => \^d_out_reg[27]_rep_0\,
      O => \ALUResult_OBUF[30]_inst_i_10_n_0\
    );
\ALUResult_OBUF[30]_inst_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(30),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => p_0_in(30)
    );
\ALUResult_OBUF[30]_inst_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBE8082"
    )
        port map (
      I0 => WriteData_OBUF(30),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \ALUResult_OBUF[30]_inst_i_12_n_0\
    );
\ALUResult_OBUF[30]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0A03"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_7_n_0\,
      I2 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I3 => Instruction_OBUF(6),
      I4 => \ALUResult_OBUF[30]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \ALUResult_OBUF[30]_inst_i_2_n_0\
    );
\ALUResult_OBUF[30]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00CC000D"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_7_n_0\,
      I1 => \ALUResult_OBUF[30]_inst_i_8_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[30]_inst_i_9_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      I5 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      O => \ALUResult_OBUF[30]_inst_i_3_n_0\
    );
\ALUResult_OBUF[30]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"410A4155415F4100"
    )
        port map (
      I0 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I1 => sum0_carry_i_6_n_0,
      I2 => p_0_in(30),
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => \d_out_reg[31]_6\(30),
      I5 => \ALUResult_OBUF[30]_inst_i_12_n_0\,
      O => \ALUResult_OBUF[30]_inst_i_4_n_0\
    );
\ALUResult_OBUF[30]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => \d_out_reg[28]_0\(24),
      I1 => \^d_out_reg[26]_rep_1\,
      I2 => WriteData_OBUF(27),
      I3 => \^d_out_reg[30]_rep_0\(0),
      I4 => Instruction_OBUF(8),
      I5 => \ALUResult_OBUF[30]_inst_i_2_0\,
      O => \ALUResult_OBUF[30]_inst_i_5_n_0\
    );
\ALUResult_OBUF[30]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030303030303022"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_12_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_6_n_0\,
      I3 => Instruction_OBUF(6),
      I4 => Instruction_OBUF(8),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[30]_inst_i_6_n_0\
    );
\ALUResult_OBUF[30]_inst_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Instruction_OBUF(8),
      I1 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[30]_inst_i_7_n_0\
    );
\ALUResult_OBUF[30]_inst_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1013"
    )
        port map (
      I0 => Instruction_OBUF(23),
      I1 => Instruction_OBUF(21),
      I2 => Instruction_OBUF(22),
      I3 => \^d_out_reg[24]_rep_0\,
      O => \ALUResult_OBUF[30]_inst_i_8_n_0\
    );
\ALUResult_OBUF[30]_inst_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^d_out_reg[24]_rep_0\,
      I1 => Instruction_OBUF(23),
      I2 => Instruction_OBUF(22),
      O => \ALUResult_OBUF[30]_inst_i_9_n_0\
    );
\ALUResult_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(31)
    );
\ALUResult_OBUF[31]_inst_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBFFFFF"
    )
        port map (
      I0 => Instruction_OBUF(25),
      I1 => Instruction_OBUF(21),
      I2 => \^d_out_reg[24]_rep_0\,
      I3 => Instruction_OBUF(22),
      I4 => Instruction_OBUF(23),
      I5 => Instruction_OBUF(5),
      O => \ALUResult_OBUF[31]_inst_i_10_n_0\
    );
\ALUResult_OBUF[31]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCCAACC"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_6_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_7_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I4 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[31]_inst_i_2_n_0\
    );
\ALUResult_OBUF[31]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF006666C0C03C3C"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => \ALUResult_OBUF[31]_inst_i_6_n_0\,
      I2 => \d_out_reg[31]_6\(31),
      I3 => S_0(31),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[31]_inst_i_3_n_0\
    );
\ALUResult_OBUF[31]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEEF"
    )
        port map (
      I0 => \^d_out_reg[27]_rep_0\,
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => Instruction_OBUF(8),
      I4 => Instruction_OBUF(6),
      I5 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      O => \ALUResult_OBUF[31]_inst_i_4_n_0\
    );
\ALUResult_OBUF[31]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03F3FAFA03F30A0A"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_6_n_0\,
      I1 => p_0_in(3),
      I2 => Instruction_OBUF(8),
      I3 => p_0_in(1),
      I4 => \^d_out_reg[30]_rep_0\(0),
      I5 => \ALUResult_OBUF[1]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[31]_inst_i_5_n_0\
    );
\ALUResult_OBUF[31]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBE8082"
    )
        port map (
      I0 => WriteData_OBUF(31),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \ALUResult_OBUF[31]_inst_i_6_n_0\
    );
\ALUResult_OBUF[31]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFCFAFA0CFC0A0A"
    )
        port map (
      I0 => p_0_in(30),
      I1 => p_0_in(2),
      I2 => Instruction_OBUF(8),
      I3 => SrcB_integer(0),
      I4 => \^d_out_reg[30]_rep_0\(0),
      I5 => p_0_in(28),
      O => \ALUResult_OBUF[31]_inst_i_7_n_0\
    );
\ALUResult_OBUF[31]_inst_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_9_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[30]_inst_i_7_n_0\,
      I4 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      O => \ALUResult_OBUF[31]_inst_i_8_n_0\
    );
\ALUResult_OBUF[31]_inst_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAFFFFFFFA"
    )
        port map (
      I0 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      I1 => \ALUResult_OBUF[31]_inst_i_10_n_0\,
      I2 => Instruction_OBUF(22),
      I3 => Instruction_OBUF(23),
      I4 => \^d_out_reg[24]_rep_0\,
      I5 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[31]_inst_i_9_n_0\
    );
\ALUResult_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[3]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[3]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[3]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(3)
    );
\ALUResult_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5030"
    )
        port map (
      I0 => \ALUResult_OBUF[3]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[4]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[3]_inst_i_2_n_0\
    );
\ALUResult_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00A5A544449999"
    )
        port map (
      I0 => p_0_in(3),
      I1 => \d_out_reg[31]_6\(3),
      I2 => sum0_carry_i_6_n_0,
      I3 => S_0(3),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[3]_inst_i_3_n_0\
    );
\ALUResult_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[4]_inst_i_7_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[3]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[3]_inst_i_4_n_0\
    );
\ALUResult_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1DFFFFFF1D00"
    )
        port map (
      I0 => \d_out_reg[28]_0\(0),
      I1 => \^d_out_reg[26]_rep_1\,
      I2 => WriteData_OBUF(0),
      I3 => Instruction_OBUF(8),
      I4 => \^d_out_reg[30]_rep_0\(0),
      I5 => p_0_in(2),
      O => \ALUResult_OBUF[3]_inst_i_5_n_0\
    );
\ALUResult_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(3),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(3),
      O => p_0_in(3)
    );
\ALUResult_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(5),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(3),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[3]_inst_i_7_n_0\
    );
\ALUResult_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[4]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[4]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[4]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(4)
    );
\ALUResult_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5030"
    )
        port map (
      I0 => \ALUResult_OBUF[4]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[5]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[4]_inst_i_2_n_0\
    );
\ALUResult_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(4),
      I2 => \d_out_reg[31]_6\(4),
      I3 => S_0(4),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[4]_inst_i_3_n_0\
    );
\ALUResult_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[5]_inst_i_7_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[4]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[4]_inst_i_4_n_0\
    );
\ALUResult_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2FEFEFEF2FE"
    )
        port map (
      I0 => p_0_in(3),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(1),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(1),
      O => \ALUResult_OBUF[4]_inst_i_5_n_0\
    );
\ALUResult_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(4),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(4),
      O => p_0_in(4)
    );
\ALUResult_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010DFFFF"
    )
        port map (
      I0 => p_0_in(4),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(6),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[4]_inst_i_7_n_0\
    );
\ALUResult_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[5]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[5]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[5]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(5)
    );
\ALUResult_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7400"
    )
        port map (
      I0 => \ALUResult_OBUF[5]_inst_i_5_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[6]_inst_i_5_n_0\,
      I3 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[5]_inst_i_2_n_0\
    );
\ALUResult_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(5),
      I2 => \d_out_reg[31]_6\(5),
      I3 => S_0(5),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[5]_inst_i_3_n_0\
    );
\ALUResult_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[6]_inst_i_7_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[5]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[5]_inst_i_4_n_0\
    );
\ALUResult_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8F8F8FBFBFBF8FB"
    )
        port map (
      I0 => p_0_in(2),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(4),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(4),
      O => \ALUResult_OBUF[5]_inst_i_5_n_0\
    );
\ALUResult_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(5),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(5),
      O => p_0_in(5)
    );
\ALUResult_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(7),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(5),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[5]_inst_i_7_n_0\
    );
\ALUResult_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[6]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[6]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[6]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(6)
    );
\ALUResult_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A030"
    )
        port map (
      I0 => \ALUResult_OBUF[6]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[7]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[6]_inst_i_2_n_0\
    );
\ALUResult_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(6),
      I2 => \d_out_reg[31]_6\(6),
      I3 => S_0(6),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[6]_inst_i_3_n_0\
    );
\ALUResult_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[7]_inst_i_6_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[6]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[6]_inst_i_4_n_0\
    );
\ALUResult_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555CFC0"
    )
        port map (
      I0 => p_0_in(3),
      I1 => WriteData_OBUF(5),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(5),
      I4 => Instruction_OBUF(8),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[6]_inst_i_5_n_0\
    );
\ALUResult_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(6),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(6),
      O => p_0_in(6)
    );
\ALUResult_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(8),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(6),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[6]_inst_i_7_n_0\
    );
\ALUResult_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[7]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[7]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[7]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(7)
    );
\ALUResult_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5030"
    )
        port map (
      I0 => \ALUResult_OBUF[7]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[8]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[7]_inst_i_2_n_0\
    );
\ALUResult_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(7),
      I2 => \d_out_reg[31]_6\(7),
      I3 => S_0(7),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[7]_inst_i_3_n_0\
    );
\ALUResult_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[8]_inst_i_7_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[7]_inst_i_6_n_0\,
      O => \ALUResult_OBUF[7]_inst_i_4_n_0\
    );
\ALUResult_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F2F2FEFEFEF2FE"
    )
        port map (
      I0 => p_0_in(6),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => \d_out_reg[28]_0\(4),
      I4 => \^d_out_reg[26]_rep_1\,
      I5 => WriteData_OBUF(4),
      O => \ALUResult_OBUF[7]_inst_i_5_n_0\
    );
\ALUResult_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0407FFFF"
    )
        port map (
      I0 => p_0_in(9),
      I1 => Instruction_OBUF(8),
      I2 => \^d_out_reg[30]_rep_0\(0),
      I3 => p_0_in(7),
      I4 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      O => \ALUResult_OBUF[7]_inst_i_6_n_0\
    );
\ALUResult_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCFAAA"
    )
        port map (
      I0 => \ALUResult_OBUF[8]_inst_i_2_n_0\,
      I1 => \ALUResult_OBUF[8]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[8]_inst_i_4_n_0\,
      I3 => \ALUResult_OBUF[27]_inst_i_6_n_0\,
      I4 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(8)
    );
\ALUResult_OBUF[8]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50C0"
    )
        port map (
      I0 => \ALUResult_OBUF[8]_inst_i_5_n_0\,
      I1 => \ALUResult_OBUF[9]_inst_i_5_n_0\,
      I2 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I3 => Instruction_OBUF(6),
      O => \ALUResult_OBUF[8]_inst_i_2_n_0\
    );
\ALUResult_OBUF[8]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0099993030C3C3"
    )
        port map (
      I0 => sum0_carry_i_6_n_0,
      I1 => p_0_in(8),
      I2 => \d_out_reg[31]_6\(8),
      I3 => S_0(8),
      I4 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I5 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      O => \ALUResult_OBUF[8]_inst_i_3_n_0\
    );
\ALUResult_OBUF[8]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \ALUResult_OBUF[9]_inst_i_4_n_0\,
      I1 => Instruction_OBUF(6),
      I2 => \ALUResult_OBUF[8]_inst_i_7_n_0\,
      O => \ALUResult_OBUF[8]_inst_i_4_n_0\
    );
\ALUResult_OBUF[8]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAABFBABFB"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(0),
      I1 => \d_out_reg[28]_0\(7),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => WriteData_OBUF(7),
      I4 => p_0_in(5),
      I5 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[8]_inst_i_5_n_0\
    );
\ALUResult_OBUF[8]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(8),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(8),
      O => p_0_in(8)
    );
\ALUResult_OBUF[8]_inst_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F4F7F"
    )
        port map (
      I0 => p_0_in(10),
      I1 => Instruction_OBUF(8),
      I2 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I3 => p_0_in(8),
      I4 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[8]_inst_i_7_n_0\
    );
\ALUResult_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \ALUResult_OBUF[31]_inst_i_4_n_0\,
      I1 => \ALUResult_OBUF[9]_inst_i_2_n_0\,
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[9]_inst_i_3_n_0\,
      O => \^d_out_reg[7]_rep_rep_0\(9)
    );
\ALUResult_OBUF[9]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCAF0CA0FCA00CA"
    )
        port map (
      I0 => \ALUResult_OBUF[9]_inst_i_4_n_0\,
      I1 => \ALUResult_OBUF[10]_inst_i_7_n_0\,
      I2 => Instruction_OBUF(6),
      I3 => \ALUResult_OBUF[31]_inst_i_8_n_0\,
      I4 => \ALUResult_OBUF[10]_inst_i_6_n_0\,
      I5 => \ALUResult_OBUF[9]_inst_i_5_n_0\,
      O => \ALUResult_OBUF[9]_inst_i_2_n_0\
    );
\ALUResult_OBUF[9]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B83C8B3CB8308B03"
    )
        port map (
      I0 => S_0(9),
      I1 => \ALUResult_OBUF[28]_inst_i_5_n_0\,
      I2 => p_0_in(9),
      I3 => \ALUResult_OBUF[31]_inst_i_9_n_0\,
      I4 => sum0_carry_i_6_n_0,
      I5 => \d_out_reg[31]_6\(9),
      O => \ALUResult_OBUF[9]_inst_i_3_n_0\
    );
\ALUResult_OBUF[9]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03FF11FF"
    )
        port map (
      I0 => p_0_in(9),
      I1 => \^d_out_reg[30]_rep_0\(0),
      I2 => p_0_in(11),
      I3 => \ALUResult_OBUF[14]_inst_i_8_n_0\,
      I4 => Instruction_OBUF(8),
      O => \ALUResult_OBUF[9]_inst_i_4_n_0\
    );
\ALUResult_OBUF[9]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555CFC0"
    )
        port map (
      I0 => p_0_in(6),
      I1 => WriteData_OBUF(8),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(8),
      I4 => Instruction_OBUF(8),
      I5 => \^d_out_reg[30]_rep_0\(0),
      O => \ALUResult_OBUF[9]_inst_i_5_n_0\
    );
\ALUResult_OBUF[9]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(9),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(9),
      O => p_0_in(9)
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Instruction_OBUF(13),
      I1 => Instruction_OBUF(12),
      I2 => Instruction_OBUF(15),
      I3 => Instruction_OBUF(14),
      O => \d_out_reg[13]_rep_0\
    );
\FSM_sequential_current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF000000FBFF"
    )
        port map (
      I0 => Instruction_OBUF(21),
      I1 => Instruction_OBUF(22),
      I2 => Instruction_OBUF(23),
      I3 => \^d_out_reg[24]_rep_0\,
      I4 => \^d_out_reg[26]_rep_0\,
      I5 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[21]_rep_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF040000000000"
    )
        port map (
      I0 => Instruction_OBUF(21),
      I1 => Instruction_OBUF(22),
      I2 => Instruction_OBUF(23),
      I3 => \^d_out_reg[24]_rep_0\,
      I4 => \ALUResult_OBUF[30]_inst_i_10_n_0\,
      I5 => \^d_out_reg[31]_rep_0\,
      O => \d_out_reg[21]_rep_1\
    );
\FSM_sequential_current_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1C"
    )
        port map (
      I0 => \^d_out_reg[24]_rep_0\,
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[24]_rep_1\
    );
\FSM_sequential_current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3C3CC2C2C0C2"
    )
        port map (
      I0 => \^d_out_reg[31]_rep_0\,
      I1 => \FSM_sequential_current_state_reg[2]\(2),
      I2 => \FSM_sequential_current_state_reg[2]\(1),
      I3 => \FSM_sequential_current_state[2]_i_5_n_0\,
      I4 => \^d_out_reg[24]_rep_0\,
      I5 => \FSM_sequential_current_state_reg[2]\(0),
      O => \FSM_sequential_current_state_reg[3]\
    );
\FSM_sequential_current_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \FSM_sequential_current_state[2]_i_6_n_0\,
      I1 => \FSM_sequential_current_state[2]_i_7_n_0\,
      I2 => Instruction_OBUF(31),
      I3 => \FSM_sequential_current_state[0]_i_3\,
      O => \^d_out_reg[31]_rep_0\
    );
\FSM_sequential_current_state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^d_out_reg[27]_rep_0\,
      I1 => \^d_out_reg[26]_rep_0\,
      O => \FSM_sequential_current_state[2]_i_5_n_0\
    );
\FSM_sequential_current_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110010101101010"
    )
        port map (
      I0 => \^d_out_reg[30]_rep_0\(3),
      I1 => Instruction_OBUF(31),
      I2 => \^d_out_reg[30]_rep_0\(1),
      I3 => \FSM_sequential_current_state[2]_i_4_0\(1),
      I4 => \^d_out_reg[30]_rep_0\(2),
      I5 => \FSM_sequential_current_state[2]_i_4_0\(2),
      O => \FSM_sequential_current_state[2]_i_6_n_0\
    );
\FSM_sequential_current_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0440040404404040"
    )
        port map (
      I0 => Instruction_OBUF(31),
      I1 => \^d_out_reg[30]_rep_0\(3),
      I2 => \^d_out_reg[30]_rep_0\(1),
      I3 => \FSM_sequential_current_state[2]_i_4_0\(0),
      I4 => \^d_out_reg[30]_rep_0\(2),
      I5 => \FSM_sequential_current_state[2]_i_4_0\(3),
      O => \FSM_sequential_current_state[2]_i_7_n_0\
    );
\FSM_sequential_current_state[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
        port map (
      I0 => Instruction_OBUF(14),
      I1 => Instruction_OBUF(15),
      I2 => Instruction_OBUF(12),
      I3 => Instruction_OBUF(13),
      I4 => \^d_out_reg[20]_rep_0\,
      O => \d_out_reg[14]_rep_0\
    );
RF_reg_r1_0_15_0_5_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^d_out_reg[27]_rep_0\,
      I1 => Instruction_OBUF(17),
      O => ADDRC(1)
    );
RF_reg_r1_0_15_0_5_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^d_out_reg[27]_rep_0\,
      I1 => Instruction_OBUF(16),
      O => ADDRC(0)
    );
RF_reg_r1_0_15_0_5_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBA"
    )
        port map (
      I0 => Instruction_OBUF(15),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      O => WA(3)
    );
RF_reg_r1_0_15_0_5_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBA"
    )
        port map (
      I0 => Instruction_OBUF(14),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      O => WA(2)
    );
RF_reg_r1_0_15_0_5_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBA"
    )
        port map (
      I0 => Instruction_OBUF(13),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      O => WA(1)
    );
RF_reg_r1_0_15_0_5_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008A"
    )
        port map (
      I0 => Instruction_OBUF(12),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      O => WA(0)
    );
RF_reg_r1_0_15_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(1),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(1),
      I5 => \d_out_reg[31]_2\(1),
      O => DATA_IN(1)
    );
RF_reg_r1_0_15_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(0),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(0),
      I5 => \d_out_reg[31]_2\(0),
      O => DATA_IN(0)
    );
RF_reg_r1_0_15_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(3),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(3),
      I5 => \d_out_reg[31]_2\(3),
      O => DATA_IN(3)
    );
RF_reg_r1_0_15_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(2),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(2),
      I5 => \d_out_reg[31]_2\(2),
      O => DATA_IN(2)
    );
RF_reg_r1_0_15_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(5),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(5),
      I5 => \d_out_reg[31]_2\(5),
      O => DATA_IN(5)
    );
RF_reg_r1_0_15_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(4),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(4),
      I5 => \d_out_reg[31]_2\(4),
      O => DATA_IN(4)
    );
RF_reg_r1_0_15_0_5_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^d_out_reg[27]_rep_0\,
      I1 => Instruction_OBUF(19),
      O => ADDRC(3)
    );
RF_reg_r1_0_15_0_5_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^d_out_reg[27]_rep_0\,
      I1 => Instruction_OBUF(18),
      O => ADDRC(2)
    );
RF_reg_r1_0_15_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(13),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(13),
      I5 => \d_out_reg[31]_2\(13),
      O => DATA_IN(13)
    );
RF_reg_r1_0_15_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(12),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(12),
      I5 => \d_out_reg[31]_2\(12),
      O => DATA_IN(12)
    );
RF_reg_r1_0_15_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(15),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(15),
      I5 => \d_out_reg[31]_2\(15),
      O => DATA_IN(15)
    );
RF_reg_r1_0_15_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(14),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(14),
      I5 => \d_out_reg[31]_2\(14),
      O => DATA_IN(14)
    );
RF_reg_r1_0_15_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(17),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOPADOP(1),
      I5 => \d_out_reg[31]_2\(17),
      O => DATA_IN(17)
    );
RF_reg_r1_0_15_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(16),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOPADOP(0),
      I5 => \d_out_reg[31]_2\(16),
      O => DATA_IN(16)
    );
RF_reg_r1_0_15_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(19),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(1),
      I5 => \d_out_reg[31]_2\(19),
      O => DATA_IN(19)
    );
RF_reg_r1_0_15_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(18),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(0),
      I5 => \d_out_reg[31]_2\(18),
      O => DATA_IN(18)
    );
RF_reg_r1_0_15_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(21),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(3),
      I5 => \d_out_reg[31]_2\(21),
      O => DATA_IN(21)
    );
RF_reg_r1_0_15_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(20),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(2),
      I5 => \d_out_reg[31]_2\(20),
      O => DATA_IN(20)
    );
RF_reg_r1_0_15_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(23),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(5),
      I5 => \d_out_reg[31]_2\(23),
      O => DATA_IN(23)
    );
RF_reg_r1_0_15_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(22),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(4),
      I5 => \d_out_reg[31]_2\(22),
      O => DATA_IN(22)
    );
RF_reg_r1_0_15_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(25),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(7),
      I5 => \d_out_reg[31]_2\(25),
      O => DATA_IN(25)
    );
RF_reg_r1_0_15_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(24),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(6),
      I5 => \d_out_reg[31]_2\(24),
      O => DATA_IN(24)
    );
RF_reg_r1_0_15_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(27),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(9),
      I5 => \d_out_reg[31]_2\(27),
      O => DATA_IN(27)
    );
RF_reg_r1_0_15_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(26),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(8),
      I5 => \d_out_reg[31]_2\(26),
      O => DATA_IN(26)
    );
RF_reg_r1_0_15_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(29),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(11),
      I5 => \d_out_reg[31]_2\(29),
      O => DATA_IN(29)
    );
RF_reg_r1_0_15_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(28),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(10),
      I5 => \d_out_reg[31]_2\(28),
      O => DATA_IN(28)
    );
\RF_reg_r1_0_15_30_31__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(31),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(13),
      I5 => \d_out_reg[31]_2\(31),
      O => DATA_IN(31)
    );
RF_reg_r1_0_15_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(30),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOBDO(12),
      I5 => \d_out_reg[31]_2\(30),
      O => DATA_IN(30)
    );
RF_reg_r1_0_15_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(7),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(7),
      I5 => \d_out_reg[31]_2\(7),
      O => DATA_IN(7)
    );
RF_reg_r1_0_15_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(6),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(6),
      I5 => \d_out_reg[31]_2\(6),
      O => DATA_IN(6)
    );
RF_reg_r1_0_15_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(9),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(9),
      I5 => \d_out_reg[31]_2\(9),
      O => DATA_IN(9)
    );
RF_reg_r1_0_15_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(8),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(8),
      I5 => \d_out_reg[31]_2\(8),
      O => DATA_IN(8)
    );
RF_reg_r1_0_15_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(11),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(11),
      I5 => \d_out_reg[31]_2\(11),
      O => DATA_IN(11)
    );
RF_reg_r1_0_15_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAB8BABB8A888A8"
    )
        port map (
      I0 => Q(10),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[20]_rep_0\,
      I4 => DOADO(10),
      I5 => \d_out_reg[31]_2\(10),
      O => DATA_IN(10)
    );
RF_reg_r2_0_15_0_5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => Instruction_OBUF(15),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(3),
      O => \^ra2\(3)
    );
RF_reg_r2_0_15_0_5_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => Instruction_OBUF(14),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(2),
      O => \^ra2\(2)
    );
RF_reg_r2_0_15_0_5_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => Instruction_OBUF(13),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(1),
      O => \^ra2\(1)
    );
RF_reg_r2_0_15_0_5_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA8"
    )
        port map (
      I0 => Instruction_OBUF(12),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(0),
      O => \^ra2\(0)
    );
\Result_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(0),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(0),
      O => \^result_obuf\(0)
    );
\Result_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(10),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(10),
      O => \^result_obuf\(10)
    );
\Result_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(11),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(11),
      O => \^result_obuf\(11)
    );
\Result_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(12),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(12),
      O => \^result_obuf\(12)
    );
\Result_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(13),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(13),
      O => \^result_obuf\(13)
    );
\Result_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(14),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(14),
      O => \^result_obuf\(14)
    );
\Result_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(15),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(15),
      O => \^result_obuf\(15)
    );
\Result_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOPADOP(0),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(16),
      O => \^result_obuf\(16)
    );
\Result_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOPADOP(1),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(17),
      O => \^result_obuf\(17)
    );
\Result_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(0),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(18),
      O => \^result_obuf\(18)
    );
\Result_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(1),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(19),
      O => \^result_obuf\(19)
    );
\Result_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(1),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(1),
      O => \^result_obuf\(1)
    );
\Result_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(2),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(20),
      O => \^result_obuf\(20)
    );
\Result_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(3),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(21),
      O => \^result_obuf\(21)
    );
\Result_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(4),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(22),
      O => \^result_obuf\(22)
    );
\Result_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(5),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(23),
      O => \^result_obuf\(23)
    );
\Result_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(6),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(24),
      O => \^result_obuf\(24)
    );
\Result_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(7),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(25),
      O => \^result_obuf\(25)
    );
\Result_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(8),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(26),
      O => \^result_obuf\(26)
    );
\Result_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(9),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(27),
      O => \^result_obuf\(27)
    );
\Result_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(10),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(28),
      O => \^result_obuf\(28)
    );
\Result_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(11),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(29),
      O => \^result_obuf\(29)
    );
\Result_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(2),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(2),
      O => \^result_obuf\(2)
    );
\Result_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(12),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(30),
      O => \^result_obuf\(30)
    );
\Result_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOBDO(13),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(31),
      O => \^result_obuf\(31)
    );
\Result_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(3),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(3),
      O => \^result_obuf\(3)
    );
\Result_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(4),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(4),
      O => \^result_obuf\(4)
    );
\Result_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(5),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(5),
      O => \^result_obuf\(5)
    );
\Result_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(6),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(6),
      O => \^result_obuf\(6)
    );
\Result_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(7),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(7),
      O => \^result_obuf\(7)
    );
\Result_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(8),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(8),
      O => \^result_obuf\(8)
    );
\Result_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => DOADO(9),
      I1 => \^d_out_reg[20]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \d_out_reg[31]_2\(9),
      O => \^result_obuf\(9)
    );
\d_out[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(0),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(0),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(0),
      O => D(0)
    );
\d_out[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0090"
    )
        port map (
      I0 => S_0(31),
      I1 => CO(0),
      I2 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I3 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \d_out[2]_i_3_0\(0)
    );
\d_out[0]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Instruction_OBUF(0),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(0)
    );
\d_out[0]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => Q(0),
      I5 => DATA_OUT2(0),
      O => \d_out_reg[13]_rep_1\(0)
    );
\d_out[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(10),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(10),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(10),
      O => D(10)
    );
\d_out[10]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(8),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[30]_rep_0\(0),
      O => \d_out_reg[23]_rep_0\(10)
    );
\d_out[10]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(9),
      I5 => DATA_OUT2(10),
      O => \d_out_reg[13]_rep_1\(10)
    );
\d_out[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(11),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(11),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(11),
      O => D(11)
    );
\d_out[11]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(10),
      I5 => DATA_OUT2(11),
      O => \d_out_reg[13]_rep_1\(11)
    );
\d_out[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(12),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(12),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(12),
      O => D(12)
    );
\d_out[12]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(11),
      I5 => DATA_OUT2(12),
      O => \d_out_reg[13]_rep_1\(12)
    );
\d_out[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(13),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(13),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(13),
      O => D(13)
    );
\d_out[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^d_out_reg[26]_rep_0\,
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[30]_rep_0\(0),
      O => \d_out_reg[23]_rep_0\(11)
    );
\d_out[13]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(12),
      I5 => DATA_OUT2(13),
      O => \d_out_reg[13]_rep_1\(13)
    );
\d_out[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(14),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(14),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(14),
      O => D(14)
    );
\d_out[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(12),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(12)
    );
\d_out[14]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(13),
      I5 => DATA_OUT2(14),
      O => \d_out_reg[13]_rep_1\(14)
    );
\d_out[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(15),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(15),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(15),
      O => D(15)
    );
\d_out[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(13),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(13)
    );
\d_out[15]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(14),
      I5 => DATA_OUT2(15),
      O => \d_out_reg[13]_rep_1\(15)
    );
\d_out[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(16),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(16),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(16),
      O => D(16)
    );
\d_out[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(14),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(14)
    );
\d_out[16]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(15),
      I5 => DATA_OUT2(16),
      O => \d_out_reg[13]_rep_1\(16)
    );
\d_out[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(17),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(17),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(17),
      O => D(17)
    );
\d_out[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(15),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(15)
    );
\d_out[17]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(16),
      I5 => DATA_OUT2(17),
      O => \d_out_reg[13]_rep_1\(17)
    );
\d_out[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(18),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(18),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(18),
      O => D(18)
    );
\d_out[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(16),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(16)
    );
\d_out[18]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(17),
      I5 => DATA_OUT2(18),
      O => \d_out_reg[13]_rep_1\(18)
    );
\d_out[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(19),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(19),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(19),
      O => D(19)
    );
\d_out[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(17),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(17)
    );
\d_out[19]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(18),
      I5 => DATA_OUT2(19),
      O => \d_out_reg[13]_rep_1\(19)
    );
\d_out[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(1),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(1),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(1),
      O => D(1)
    );
\d_out[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \ALUblock/Carry\,
      I1 => \ALUResult_OBUF[30]_inst_i_3_n_0\,
      I2 => \ALUResult_OBUF[29]_inst_i_3_n_0\,
      O => \d_out[2]_i_3_0\(1)
    );
\d_out[1]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => Instruction_OBUF(1),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(1)
    );
\d_out[1]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(0),
      I5 => DATA_OUT2(1),
      O => \d_out_reg[13]_rep_1\(1)
    );
\d_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB888B844477747"
    )
        port map (
      I0 => SrcB_integer0(31),
      I1 => sum0_carry_i_6_n_0,
      I2 => \d_out_reg[28]_0\(24),
      I3 => \^d_out_reg[26]_rep_1\,
      I4 => WriteData_OBUF(31),
      I5 => \d_out_reg[31]_6\(31),
      O => \d_out[1]_i_3_n_0\
    );
\d_out[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(20),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(20),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(20),
      O => D(20)
    );
\d_out[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(18),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(18)
    );
\d_out[20]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(19),
      I5 => DATA_OUT2(20),
      O => \d_out_reg[13]_rep_1\(20)
    );
\d_out[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(21),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(21),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(21),
      O => D(21)
    );
\d_out[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(19),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(19)
    );
\d_out[21]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(20),
      I5 => DATA_OUT2(21),
      O => \d_out_reg[13]_rep_1\(21)
    );
\d_out[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(22),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(22),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(22),
      O => D(22)
    );
\d_out[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \^d_out_reg[20]_rep_0\,
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(20)
    );
\d_out[22]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(21),
      I5 => DATA_OUT2(22),
      O => \d_out_reg[13]_rep_1\(22)
    );
\d_out[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(23),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(23),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(23),
      O => D(23)
    );
\d_out[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(21),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(21)
    );
\d_out[23]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(22),
      I5 => DATA_OUT2(23),
      O => \d_out_reg[13]_rep_1\(23)
    );
\d_out[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(24),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(24),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(24),
      O => D(24)
    );
\d_out[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(22),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(22)
    );
\d_out[24]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(23),
      I5 => DATA_OUT2(24),
      O => \d_out_reg[13]_rep_1\(24)
    );
\d_out[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(25),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(25),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(25),
      O => D(25)
    );
\d_out[25]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(24),
      I5 => DATA_OUT2(25),
      O => \d_out_reg[13]_rep_1\(25)
    );
\d_out[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(26),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(26),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(26),
      O => D(26)
    );
\d_out[26]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(25),
      I5 => DATA_OUT2(26),
      O => \d_out_reg[13]_rep_1\(26)
    );
\d_out[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(27),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(27),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(27),
      O => D(27)
    );
\d_out[27]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(26),
      I5 => DATA_OUT2(27),
      O => \d_out_reg[13]_rep_1\(27)
    );
\d_out[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(28),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(28),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(28),
      O => D(28)
    );
\d_out[28]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(27),
      I5 => DATA_OUT2(28),
      O => \d_out_reg[13]_rep_1\(28)
    );
\d_out[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(29),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(29),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(29),
      O => D(29)
    );
\d_out[29]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(28),
      I5 => DATA_OUT2(29),
      O => \d_out_reg[13]_rep_1\(29)
    );
\d_out[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(2),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(2),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(2),
      O => D(2)
    );
\d_out[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(30),
      I1 => \^d_out_reg[7]_rep_rep_0\(9),
      I2 => \^d_out_reg[7]_rep_rep_0\(29),
      I3 => \d_out[2]_i_2_n_0\,
      I4 => \^d_out_reg[7]_rep_rep_0\(23),
      I5 => \d_out[2]_i_3_n_0\,
      O => \d_out[2]_i_3_0\(2)
    );
\d_out[2]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(0),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => Instruction_OBUF(2),
      O => \d_out_reg[23]_rep_0\(2)
    );
\d_out[2]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(1),
      I5 => DATA_OUT2(2),
      O => \d_out_reg[13]_rep_1\(2)
    );
\d_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \d_out[2]_i_4_n_0\,
      I1 => \^d_out_reg[7]_rep_rep_0\(5),
      I2 => \^d_out_reg[7]_rep_rep_0\(6),
      I3 => \^d_out_reg[7]_rep_rep_0\(24),
      I4 => \^d_out_reg[7]_rep_rep_0\(11),
      I5 => \d_out[2]_i_5_n_0\,
      O => \d_out[2]_i_2_n_0\
    );
\d_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \d_out[2]_i_6_n_0\,
      I1 => \d_out[2]_i_7_n_0\,
      I2 => \^d_out_reg[7]_rep_rep_0\(0),
      I3 => \^d_out_reg[7]_rep_rep_0\(25),
      I4 => \^d_out_reg[7]_rep_rep_0\(26),
      I5 => \d_out[2]_i_8_n_0\,
      O => \d_out[2]_i_3_n_0\
    );
\d_out[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(13),
      I1 => \^d_out_reg[7]_rep_rep_0\(27),
      I2 => \^d_out_reg[7]_rep_rep_0\(1),
      I3 => \^d_out_reg[7]_rep_rep_0\(3),
      I4 => \^d_out_reg[7]_rep_rep_0\(21),
      O => \d_out[2]_i_4_n_0\
    );
\d_out[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(22),
      I1 => \^d_out_reg[7]_rep_rep_0\(4),
      I2 => \^d_out_reg[7]_rep_rep_0\(28),
      I3 => \^d_out_reg[7]_rep_rep_0\(7),
      O => \d_out[2]_i_5_n_0\
    );
\d_out[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(10),
      I1 => \^d_out_reg[7]_rep_rep_0\(18),
      I2 => \^d_out_reg[7]_rep_rep_0\(14),
      I3 => \^d_out_reg[7]_rep_rep_0\(12),
      O => \d_out[2]_i_6_n_0\
    );
\d_out[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(2),
      I1 => \^d_out_reg[7]_rep_rep_0\(17),
      I2 => \^d_out_reg[7]_rep_rep_0\(20),
      I3 => \^d_out_reg[7]_rep_rep_0\(16),
      O => \d_out[2]_i_7_n_0\
    );
\d_out[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(31),
      I1 => \^d_out_reg[7]_rep_rep_0\(19),
      I2 => \^d_out_reg[7]_rep_rep_0\(15),
      I3 => \^d_out_reg[7]_rep_rep_0\(8),
      O => \d_out[2]_i_8_n_0\
    );
\d_out[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(30),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(30),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(30),
      O => D(30)
    );
\d_out[30]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(29),
      I5 => DATA_OUT2(30),
      O => \d_out_reg[13]_rep_1\(30)
    );
\d_out[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => Instruction_OBUF(23),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      O => \d_out_reg[23]_rep_0\(23)
    );
\d_out[31]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(30),
      I5 => DATA_OUT2(31),
      O => \d_out_reg[13]_rep_1\(31)
    );
\d_out[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F0F0F0"
    )
        port map (
      I0 => Instruction_OBUF(17),
      I1 => Instruction_OBUF(16),
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(19),
      I4 => Instruction_OBUF(18),
      O => \d_out_reg[17]_rep_0\
    );
\d_out[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(31),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(31),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(31),
      O => D(31)
    );
\d_out[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(3),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(3),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(3),
      O => D(3)
    );
\d_out[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(1),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => Instruction_OBUF(3),
      O => \d_out_reg[23]_rep_0\(3)
    );
\d_out[3]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(2),
      I5 => DATA_OUT2(3),
      O => \d_out_reg[13]_rep_1\(3)
    );
\d_out[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(4),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(4),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(4),
      O => D(4)
    );
\d_out[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(2),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => Instruction_OBUF(4),
      O => \d_out_reg[23]_rep_0\(4)
    );
\d_out[4]_i_1__4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(3),
      I5 => DATA_OUT2(4),
      O => \d_out_reg[13]_rep_1\(4)
    );
\d_out[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(5),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(5),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(5),
      O => D(5)
    );
\d_out[5]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(3),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => Instruction_OBUF(5),
      O => \d_out_reg[23]_rep_0\(5)
    );
\d_out[5]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(4),
      I5 => DATA_OUT2(5),
      O => \d_out_reg[13]_rep_1\(5)
    );
\d_out[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(6),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(6),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(6),
      O => D(6)
    );
\d_out[6]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(4),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => Instruction_OBUF(6),
      O => \d_out_reg[23]_rep_0\(6)
    );
\d_out[6]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(5),
      I5 => DATA_OUT2(6),
      O => \d_out_reg[13]_rep_1\(6)
    );
\d_out[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(7),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(7),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(7),
      O => D(7)
    );
\d_out[7]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(5),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => Instruction_OBUF(6),
      O => \d_out_reg[23]_rep_0\(7)
    );
\d_out[7]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(6),
      I5 => DATA_OUT2(7),
      O => \d_out_reg[13]_rep_1\(7)
    );
\d_out[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(8),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(8),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(8),
      O => D(8)
    );
\d_out[8]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(6),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => Instruction_OBUF(8),
      O => \d_out_reg[23]_rep_0\(8)
    );
\d_out[8]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(7),
      I5 => DATA_OUT2(8),
      O => \d_out_reg[13]_rep_1\(8)
    );
\d_out[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \^d_out_reg[7]_rep_rep_0\(9),
      I1 => \d_out_reg[31]_3\,
      I2 => Q(9),
      I3 => \d_out_reg[31]_4\,
      I4 => \d_out_reg[31]_5\,
      I5 => \^result_obuf\(9),
      O => D(9)
    );
\d_out[9]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instruction_OBUF(6),
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => \^d_out_reg[26]_rep_0\,
      I3 => \^d_out_reg[30]_rep_0\(0),
      O => \d_out_reg[23]_rep_0\(9)
    );
\d_out[9]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF80000000"
    )
        port map (
      I0 => \^ra2\(1),
      I1 => \^ra2\(0),
      I2 => \^ra2\(3),
      I3 => \^ra2\(2),
      I4 => R15(8),
      I5 => DATA_OUT2(9),
      O => \d_out_reg[13]_rep_1\(9)
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(0),
      Q => \d_out_reg[31]_1\(0),
      R => RESET_IBUF
    );
\d_out_reg[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(0),
      Q => Instruction_OBUF(0),
      R => RESET_IBUF
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(8),
      Q => \d_out_reg[31]_1\(8),
      R => RESET_IBUF
    );
\d_out_reg[11]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(8),
      Q => \d_out_reg[11]_rep_0\,
      R => RESET_IBUF
    );
\d_out_reg[11]_rep_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(8),
      Q => \d_out_reg[11]_rep_rep_0\,
      R => RESET_IBUF
    );
\d_out_reg[11]_rep_rep_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(8),
      Q => \^d_out_reg[30]_rep_0\(0),
      R => RESET_IBUF
    );
\d_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(9),
      Q => \d_out_reg[31]_1\(9),
      R => RESET_IBUF
    );
\d_out_reg[12]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(9),
      Q => Instruction_OBUF(12),
      R => RESET_IBUF
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(10),
      Q => \d_out_reg[31]_1\(10),
      R => RESET_IBUF
    );
\d_out_reg[13]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(10),
      Q => Instruction_OBUF(13),
      R => RESET_IBUF
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(11),
      Q => \d_out_reg[31]_1\(11),
      R => RESET_IBUF
    );
\d_out_reg[14]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(11),
      Q => Instruction_OBUF(14),
      R => RESET_IBUF
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(12),
      Q => \d_out_reg[31]_1\(12),
      R => RESET_IBUF
    );
\d_out_reg[15]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(12),
      Q => Instruction_OBUF(15),
      R => RESET_IBUF
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(13),
      Q => \d_out_reg[31]_1\(13),
      R => RESET_IBUF
    );
\d_out_reg[16]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(13),
      Q => Instruction_OBUF(16),
      R => RESET_IBUF
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(14),
      Q => \d_out_reg[31]_1\(14),
      R => RESET_IBUF
    );
\d_out_reg[17]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(14),
      Q => Instruction_OBUF(17),
      R => RESET_IBUF
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(15),
      Q => \d_out_reg[31]_1\(15),
      R => RESET_IBUF
    );
\d_out_reg[18]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(15),
      Q => Instruction_OBUF(18),
      R => RESET_IBUF
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(16),
      Q => \d_out_reg[31]_1\(16),
      R => RESET_IBUF
    );
\d_out_reg[19]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(16),
      Q => Instruction_OBUF(19),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(1),
      Q => \d_out_reg[31]_1\(1),
      R => RESET_IBUF
    );
\d_out_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => \NLW_d_out_reg[1]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => CO(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_d_out_reg[1]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \ALUblock/Carry\,
      O(0) => \NLW_d_out_reg[1]_i_2_O_UNCONNECTED\(0),
      S(3 downto 2) => B"00",
      S(1) => \d_out[1]_i_3_n_0\,
      S(0) => '1'
    );
\d_out_reg[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(1),
      Q => Instruction_OBUF(1),
      R => RESET_IBUF
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(17),
      Q => \d_out_reg[31]_1\(17),
      R => RESET_IBUF
    );
\d_out_reg[20]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(17),
      Q => \^d_out_reg[20]_rep_0\,
      R => RESET_IBUF
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(18),
      Q => \d_out_reg[31]_1\(18),
      R => RESET_IBUF
    );
\d_out_reg[21]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(18),
      Q => Instruction_OBUF(21),
      R => RESET_IBUF
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(19),
      Q => \d_out_reg[31]_1\(19),
      R => RESET_IBUF
    );
\d_out_reg[22]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(19),
      Q => Instruction_OBUF(22),
      R => RESET_IBUF
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(20),
      Q => \d_out_reg[31]_1\(20),
      R => RESET_IBUF
    );
\d_out_reg[23]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(20),
      Q => Instruction_OBUF(23),
      R => RESET_IBUF
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(21),
      Q => \d_out_reg[31]_1\(21),
      R => RESET_IBUF
    );
\d_out_reg[24]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(21),
      Q => \^d_out_reg[24]_rep_0\,
      R => RESET_IBUF
    );
\d_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(22),
      Q => \d_out_reg[31]_1\(22),
      R => RESET_IBUF
    );
\d_out_reg[25]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(22),
      Q => Instruction_OBUF(25),
      R => RESET_IBUF
    );
\d_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(23),
      Q => \d_out_reg[31]_1\(23),
      R => RESET_IBUF
    );
\d_out_reg[26]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(23),
      Q => \^d_out_reg[26]_rep_0\,
      R => RESET_IBUF
    );
\d_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(24),
      Q => \d_out_reg[31]_1\(24),
      R => RESET_IBUF
    );
\d_out_reg[27]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(24),
      Q => \^d_out_reg[27]_rep_0\,
      R => RESET_IBUF
    );
\d_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(25),
      Q => \d_out_reg[31]_1\(25),
      R => RESET_IBUF
    );
\d_out_reg[28]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(25),
      Q => \^d_out_reg[30]_rep_0\(1),
      R => RESET_IBUF
    );
\d_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(26),
      Q => \d_out_reg[31]_1\(26),
      R => RESET_IBUF
    );
\d_out_reg[29]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(26),
      Q => \^d_out_reg[30]_rep_0\(2),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(2),
      Q => \d_out_reg[31]_1\(2),
      R => RESET_IBUF
    );
\d_out_reg[2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(2),
      Q => Instruction_OBUF(2),
      R => RESET_IBUF
    );
\d_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(27),
      Q => \d_out_reg[31]_1\(27),
      R => RESET_IBUF
    );
\d_out_reg[30]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(27),
      Q => \^d_out_reg[30]_rep_0\(3),
      R => RESET_IBUF
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(28),
      Q => \d_out_reg[31]_1\(28),
      R => RESET_IBUF
    );
\d_out_reg[31]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(28),
      Q => Instruction_OBUF(31),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(3),
      Q => \d_out_reg[31]_1\(3),
      R => RESET_IBUF
    );
\d_out_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(3),
      Q => Instruction_OBUF(3),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(4),
      Q => \d_out_reg[31]_1\(4),
      R => RESET_IBUF
    );
\d_out_reg[4]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(4),
      Q => Instruction_OBUF(4),
      R => RESET_IBUF
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(5),
      Q => \d_out_reg[31]_1\(5),
      R => RESET_IBUF
    );
\d_out_reg[5]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(5),
      Q => Instruction_OBUF(5),
      R => RESET_IBUF
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(6),
      Q => \d_out_reg[31]_1\(6),
      R => RESET_IBUF
    );
\d_out_reg[7]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(6),
      Q => \d_out_reg[7]_rep_0\,
      R => RESET_IBUF
    );
\d_out_reg[7]_rep_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(6),
      Q => Instruction_OBUF(6),
      R => RESET_IBUF
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(7),
      Q => \d_out_reg[31]_1\(7),
      R => RESET_IBUF
    );
\d_out_reg[8]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_7\(7),
      Q => Instruction_OBUF(8),
      R => RESET_IBUF
    );
\sum0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(7),
      I1 => WriteData_OBUF(7),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(7),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(7),
      O => \d_out_reg[7]_0\(3)
    );
\sum0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(6),
      I1 => WriteData_OBUF(6),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(6),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(6),
      O => \d_out_reg[7]_0\(2)
    );
\sum0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(5),
      I1 => WriteData_OBUF(5),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(5),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(5),
      O => \d_out_reg[7]_0\(1)
    );
\sum0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(4),
      I1 => WriteData_OBUF(4),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(4),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(4),
      O => \d_out_reg[7]_0\(0)
    );
\sum0_carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => sum0_carry_i_7_n_0,
      CO(3) => \sum0_carry__0_i_5_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__0_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SrcB_integer0(8 downto 5),
      S(3) => \sum0_carry__0_i_6_n_0\,
      S(2) => \sum0_carry__0_i_7_n_0\,
      S(1) => \sum0_carry__0_i_8_n_0\,
      S(0) => \sum0_carry__0_i_9_n_0\
    );
\sum0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(8),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(8),
      O => \sum0_carry__0_i_6_n_0\
    );
\sum0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(7),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(7),
      O => \sum0_carry__0_i_7_n_0\
    );
\sum0_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(6),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(6),
      O => \sum0_carry__0_i_8_n_0\
    );
\sum0_carry__0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(5),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(5),
      O => \sum0_carry__0_i_9_n_0\
    );
\sum0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(11),
      I1 => WriteData_OBUF(11),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(11),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(11),
      O => \d_out_reg[11]_0\(3)
    );
\sum0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(10),
      I1 => WriteData_OBUF(10),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(10),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(10),
      O => \d_out_reg[11]_0\(2)
    );
\sum0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(9),
      I1 => WriteData_OBUF(9),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(9),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(9),
      O => \d_out_reg[11]_0\(1)
    );
\sum0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(8),
      I1 => WriteData_OBUF(8),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(8),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(8),
      O => \d_out_reg[11]_0\(0)
    );
\sum0_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__0_i_5_n_0\,
      CO(3) => \sum0_carry__1_i_5_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__1_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SrcB_integer0(12 downto 9),
      S(3) => \sum0_carry__1_i_6_n_0\,
      S(2) => \sum0_carry__1_i_7_n_0\,
      S(1) => \sum0_carry__1_i_8_n_0\,
      S(0) => \sum0_carry__1_i_9_n_0\
    );
\sum0_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(12),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(12),
      O => \sum0_carry__1_i_6_n_0\
    );
\sum0_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(11),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(11),
      O => \sum0_carry__1_i_7_n_0\
    );
\sum0_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(10),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(10),
      O => \sum0_carry__1_i_8_n_0\
    );
\sum0_carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(9),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(9),
      O => \sum0_carry__1_i_9_n_0\
    );
\sum0_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(15),
      I1 => WriteData_OBUF(15),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(14),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(15),
      O => \d_out_reg[15]_0\(3)
    );
\sum0_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(14),
      I1 => WriteData_OBUF(14),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(13),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(14),
      O => \d_out_reg[15]_0\(2)
    );
\sum0_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(13),
      I1 => WriteData_OBUF(13),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(12),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(13),
      O => \d_out_reg[15]_0\(1)
    );
\sum0_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(12),
      I1 => WriteData_OBUF(12),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(12),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(12),
      O => \d_out_reg[15]_0\(0)
    );
\sum0_carry__2_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__1_i_5_n_0\,
      CO(3) => \sum0_carry__2_i_5_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__2_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SrcB_integer0(16 downto 13),
      S(3) => \sum0_carry__2_i_6_n_0\,
      S(2) => \sum0_carry__2_i_7_n_0\,
      S(1) => \sum0_carry__2_i_8_n_0\,
      S(0) => \sum0_carry__2_i_9_n_0\
    );
\sum0_carry__2_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(16),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(15),
      O => \sum0_carry__2_i_6_n_0\
    );
\sum0_carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(15),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(14),
      O => \sum0_carry__2_i_7_n_0\
    );
\sum0_carry__2_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(14),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(13),
      O => \sum0_carry__2_i_8_n_0\
    );
\sum0_carry__2_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(13),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(12),
      O => \sum0_carry__2_i_9_n_0\
    );
\sum0_carry__3_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(19),
      I1 => WriteData_OBUF(19),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(18),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(19),
      O => \d_out_reg[19]_0\(3)
    );
\sum0_carry__3_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(18),
      I1 => WriteData_OBUF(18),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(17),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(18),
      O => \d_out_reg[19]_0\(2)
    );
\sum0_carry__3_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(17),
      I1 => WriteData_OBUF(17),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(16),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(17),
      O => \d_out_reg[19]_0\(1)
    );
\sum0_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(16),
      I1 => WriteData_OBUF(16),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(15),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(16),
      O => \d_out_reg[19]_0\(0)
    );
\sum0_carry__3_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__2_i_5_n_0\,
      CO(3) => \sum0_carry__3_i_5_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__3_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SrcB_integer0(20 downto 17),
      S(3) => \sum0_carry__3_i_6_n_0\,
      S(2) => \sum0_carry__3_i_7_n_0\,
      S(1) => \sum0_carry__3_i_8_n_0\,
      S(0) => \sum0_carry__3_i_9_n_0\
    );
\sum0_carry__3_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(20),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(19),
      O => \sum0_carry__3_i_6_n_0\
    );
\sum0_carry__3_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(19),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(18),
      O => \sum0_carry__3_i_7_n_0\
    );
\sum0_carry__3_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(18),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(17),
      O => \sum0_carry__3_i_8_n_0\
    );
\sum0_carry__3_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(17),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(16),
      O => \sum0_carry__3_i_9_n_0\
    );
\sum0_carry__4_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(23),
      I1 => WriteData_OBUF(23),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(22),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(23),
      O => \d_out_reg[23]_0\(3)
    );
\sum0_carry__4_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \d_out_reg[31]_6\(22),
      I1 => \d_out_reg[28]_0\(21),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => WriteData_OBUF(22),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(22),
      O => \d_out_reg[23]_0\(2)
    );
\sum0_carry__4_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(21),
      I1 => WriteData_OBUF(21),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(20),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(21),
      O => \d_out_reg[23]_0\(1)
    );
\sum0_carry__4_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(20),
      I1 => WriteData_OBUF(20),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(19),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(20),
      O => \d_out_reg[23]_0\(0)
    );
\sum0_carry__4_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__3_i_5_n_0\,
      CO(3) => \sum0_carry__4_i_5_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__4_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SrcB_integer0(24 downto 21),
      S(3) => \sum0_carry__4_i_6_n_0\,
      S(2) => \sum0_carry__4_i_7_n_0\,
      S(1) => \sum0_carry__4_i_8_n_0\,
      S(0) => \sum0_carry__4_i_9_n_0\
    );
\sum0_carry__4_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(24),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(23),
      O => \sum0_carry__4_i_6_n_0\
    );
\sum0_carry__4_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(23),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(22),
      O => \sum0_carry__4_i_7_n_0\
    );
\sum0_carry__4_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1514D5D7"
    )
        port map (
      I0 => \d_out_reg[28]_0\(21),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => WriteData_OBUF(22),
      O => \sum0_carry__4_i_8_n_0\
    );
\sum0_carry__4_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(21),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(20),
      O => \sum0_carry__4_i_9_n_0\
    );
\sum0_carry__5_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \d_out_reg[31]_6\(27),
      I1 => \d_out_reg[28]_0\(24),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => WriteData_OBUF(27),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(27),
      O => \d_out_reg[27]_0\(3)
    );
\sum0_carry__5_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(26),
      I1 => WriteData_OBUF(26),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(24),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(26),
      O => \d_out_reg[27]_0\(2)
    );
\sum0_carry__5_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(25),
      I1 => WriteData_OBUF(25),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(24),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(25),
      O => \d_out_reg[27]_0\(1)
    );
\sum0_carry__5_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(24),
      I1 => WriteData_OBUF(24),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(23),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(24),
      O => \d_out_reg[27]_0\(0)
    );
\sum0_carry__5_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__4_i_5_n_0\,
      CO(3) => \sum0_carry__5_i_5_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__5_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SrcB_integer0(28 downto 25),
      S(3) => \sum0_carry__5_i_6_n_0\,
      S(2) => \sum0_carry__5_i_7_n_0\,
      S(1) => \sum0_carry__5_i_8_n_0\,
      S(0) => \sum0_carry__5_i_9_n_0\
    );
\sum0_carry__5_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(28),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \sum0_carry__5_i_6_n_0\
    );
\sum0_carry__5_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(27),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \sum0_carry__5_i_7_n_0\
    );
\sum0_carry__5_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(26),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \sum0_carry__5_i_8_n_0\
    );
\sum0_carry__5_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(25),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \sum0_carry__5_i_9_n_0\
    );
\sum0_carry__6_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(31),
      I1 => WriteData_OBUF(31),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(24),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(31),
      O => \d_out_reg[31]_0\(3)
    );
\sum0_carry__6_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \d_out_reg[31]_6\(30),
      I1 => \d_out_reg[28]_0\(24),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => WriteData_OBUF(30),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(30),
      O => \d_out_reg[31]_0\(2)
    );
\sum0_carry__6_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \d_out_reg[31]_6\(29),
      I1 => \d_out_reg[28]_0\(24),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => WriteData_OBUF(29),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(29),
      O => \d_out_reg[31]_0\(1)
    );
\sum0_carry__6_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \d_out_reg[31]_6\(28),
      I1 => \d_out_reg[28]_0\(24),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => WriteData_OBUF(28),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(28),
      O => \d_out_reg[31]_0\(0)
    );
\sum0_carry__6_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__5_i_5_n_0\,
      CO(3 downto 0) => \NLW_sum0_carry__6_i_6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sum0_carry__6_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => SrcB_integer0(31 downto 29),
      S(3) => '0',
      S(2) => p_0_in(31),
      S(1) => \sum0_carry__6_i_8_n_0\,
      S(0) => \sum0_carry__6_i_9_n_0\
    );
\sum0_carry__6_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0554F557"
    )
        port map (
      I0 => \d_out_reg[28]_0\(24),
      I1 => Instruction_OBUF(25),
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => \^d_out_reg[26]_rep_0\,
      I4 => WriteData_OBUF(31),
      O => p_0_in(31)
    );
\sum0_carry__6_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(30),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \sum0_carry__6_i_8_n_0\
    );
\sum0_carry__6_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(29),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(24),
      O => \sum0_carry__6_i_9_n_0\
    );
sum0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(3),
      I1 => WriteData_OBUF(3),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(3),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(3),
      O => S(3)
    );
sum0_carry_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(3),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(3),
      O => sum0_carry_i_10_n_0
    );
sum0_carry_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(2),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(2),
      O => sum0_carry_i_11_n_0
    );
sum0_carry_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(1),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(1),
      O => sum0_carry_i_12_n_0
    );
sum0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(2),
      I1 => WriteData_OBUF(2),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(2),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(2),
      O => S(2)
    );
sum0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656AAAAA656A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(1),
      I1 => WriteData_OBUF(1),
      I2 => \^d_out_reg[26]_rep_1\,
      I3 => \d_out_reg[28]_0\(1),
      I4 => sum0_carry_i_6_n_0,
      I5 => SrcB_integer0(1),
      O => S(1)
    );
sum0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55666665AA66666A"
    )
        port map (
      I0 => \d_out_reg[31]_6\(0),
      I1 => \d_out_reg[28]_0\(0),
      I2 => Instruction_OBUF(25),
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \^d_out_reg[26]_rep_0\,
      I5 => WriteData_OBUF(0),
      O => S(0)
    );
sum0_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"89"
    )
        port map (
      I0 => \^d_out_reg[26]_rep_0\,
      I1 => \^d_out_reg[27]_rep_0\,
      I2 => Instruction_OBUF(25),
      O => \^d_out_reg[26]_rep_1\
    );
sum0_carry_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000FF000C"
    )
        port map (
      I0 => \^d_out_reg[24]_rep_0\,
      I1 => Instruction_OBUF(22),
      I2 => Instruction_OBUF(21),
      I3 => \^d_out_reg[27]_rep_0\,
      I4 => \^d_out_reg[26]_rep_0\,
      I5 => Instruction_OBUF(23),
      O => sum0_carry_i_6_n_0
    );
sum0_carry_i_7: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum0_carry_i_7_n_0,
      CO(2 downto 0) => NLW_sum0_carry_i_7_CO_UNCONNECTED(2 downto 0),
      CYINIT => p_0_in(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => SrcB_integer0(4 downto 1),
      S(3) => sum0_carry_i_9_n_0,
      S(2) => sum0_carry_i_10_n_0,
      S(1) => sum0_carry_i_11_n_0,
      S(0) => sum0_carry_i_12_n_0
    );
sum0_carry_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0554F557"
    )
        port map (
      I0 => \d_out_reg[28]_0\(0),
      I1 => Instruction_OBUF(25),
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => \^d_out_reg[26]_rep_0\,
      I4 => WriteData_OBUF(0),
      O => p_0_in(0)
    );
sum0_carry_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40417F7D"
    )
        port map (
      I0 => WriteData_OBUF(4),
      I1 => \^d_out_reg[26]_rep_0\,
      I2 => \^d_out_reg[27]_rep_0\,
      I3 => Instruction_OBUF(25),
      I4 => \d_out_reg[28]_0\(4),
      O => sum0_carry_i_9_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Rg_3 is
  port (
    \d_out_reg[5]_rep_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    PC_OBUF : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_out_reg[7]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RESET_IBUF : in STD_LOGIC;
    PCWrite : in STD_LOGIC;
    \d_out_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Rg_3 : entity is "Rg";
end Rg_3;

architecture STRUCTURE of Rg_3 is
  signal PC : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^pc_obuf\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \d_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \d_out_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \d_out_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \d_out_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \d_out_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \d_out_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \d_out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \d_out_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_d_out_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_d_out_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_d_out_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_d_out_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \d_out_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \d_out_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \d_out_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \d_out_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \d_out_reg[28]_i_1\ : label is 35;
  attribute IOB : string;
  attribute IOB of \d_out_reg[2]\ : label is "TRUE";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \d_out_reg[2]\ : label is "d_out_reg[2]";
  attribute ORIG_CELL_NAME of \d_out_reg[2]_rep\ : label is "d_out_reg[2]";
  attribute ADDER_THRESHOLD of \d_out_reg[31]_i_2\ : label is 35;
  attribute IOB of \d_out_reg[3]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[3]\ : label is "d_out_reg[3]";
  attribute ORIG_CELL_NAME of \d_out_reg[3]_rep\ : label is "d_out_reg[3]";
  attribute IOB of \d_out_reg[4]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[4]\ : label is "d_out_reg[4]";
  attribute ADDER_THRESHOLD of \d_out_reg[4]_i_1\ : label is 35;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \d_out_reg[4]_i_1\ : label is "PROPCONST";
  attribute ORIG_CELL_NAME of \d_out_reg[4]_rep\ : label is "d_out_reg[4]";
  attribute IOB of \d_out_reg[5]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[5]\ : label is "d_out_reg[5]";
  attribute ORIG_CELL_NAME of \d_out_reg[5]_rep\ : label is "d_out_reg[5]";
  attribute IOB of \d_out_reg[6]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[6]\ : label is "d_out_reg[6]";
  attribute ORIG_CELL_NAME of \d_out_reg[6]_rep\ : label is "d_out_reg[6]";
  attribute IOB of \d_out_reg[7]\ : label is "TRUE";
  attribute ORIG_CELL_NAME of \d_out_reg[7]\ : label is "d_out_reg[7]";
  attribute ORIG_CELL_NAME of \d_out_reg[7]_rep\ : label is "d_out_reg[7]";
  attribute ADDER_THRESHOLD of \d_out_reg[8]_i_1\ : label is 35;
begin
  PC_OBUF(5 downto 0) <= \^pc_obuf\(5 downto 0);
\d_out[11]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044000200"
    )
        port map (
      I0 => \^pc_obuf\(2),
      I1 => \^pc_obuf\(1),
      I2 => \^pc_obuf\(0),
      I3 => \^pc_obuf\(3),
      I4 => \^pc_obuf\(4),
      I5 => \^pc_obuf\(5),
      O => \d_out_reg[5]_rep_0\(2)
    );
\d_out[17]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050218121"
    )
        port map (
      I0 => \^pc_obuf\(1),
      I1 => \^pc_obuf\(0),
      I2 => \^pc_obuf\(3),
      I3 => \^pc_obuf\(2),
      I4 => \^pc_obuf\(4),
      I5 => \^pc_obuf\(5),
      O => \d_out_reg[5]_rep_0\(3)
    );
\d_out[18]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022040341"
    )
        port map (
      I0 => \^pc_obuf\(1),
      I1 => \^pc_obuf\(0),
      I2 => \^pc_obuf\(2),
      I3 => \^pc_obuf\(3),
      I4 => \^pc_obuf\(4),
      I5 => \^pc_obuf\(5),
      O => \d_out_reg[5]_rep_0\(4)
    );
\d_out[19]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010016001"
    )
        port map (
      I0 => \^pc_obuf\(2),
      I1 => \^pc_obuf\(0),
      I2 => \^pc_obuf\(1),
      I3 => \^pc_obuf\(3),
      I4 => \^pc_obuf\(4),
      I5 => \^pc_obuf\(5),
      O => \d_out_reg[5]_rep_0\(5)
    );
\d_out[22]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005230C441"
    )
        port map (
      I0 => \^pc_obuf\(1),
      I1 => \^pc_obuf\(0),
      I2 => \^pc_obuf\(2),
      I3 => \^pc_obuf\(3),
      I4 => \^pc_obuf\(4),
      I5 => \^pc_obuf\(5),
      O => \d_out_reg[5]_rep_0\(6)
    );
\d_out[27]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000012400000"
    )
        port map (
      I0 => \^pc_obuf\(3),
      I1 => \^pc_obuf\(2),
      I2 => \^pc_obuf\(0),
      I3 => \^pc_obuf\(1),
      I4 => \^pc_obuf\(4),
      I5 => \^pc_obuf\(5),
      O => \d_out_reg[5]_rep_0\(7)
    );
\d_out[4]_i_1__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000104"
    )
        port map (
      I0 => \^pc_obuf\(4),
      I1 => \^pc_obuf\(3),
      I2 => \^pc_obuf\(0),
      I3 => \^pc_obuf\(1),
      I4 => \^pc_obuf\(2),
      I5 => \^pc_obuf\(5),
      O => \d_out_reg[5]_rep_0\(0)
    );
\d_out[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pc_obuf\(0),
      O => \d_out[4]_i_2_n_0\
    );
\d_out[5]_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => \^pc_obuf\(3),
      I1 => \^pc_obuf\(2),
      I2 => \^pc_obuf\(1),
      I3 => \^pc_obuf\(0),
      I4 => \^pc_obuf\(4),
      I5 => \^pc_obuf\(5),
      O => \d_out_reg[5]_rep_0\(1)
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(0),
      Q => D(0),
      R => RESET_IBUF
    );
\d_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(10),
      Q => PC(10),
      R => RESET_IBUF
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(11),
      Q => PC(11),
      R => RESET_IBUF
    );
\d_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(12),
      Q => PC(12),
      R => RESET_IBUF
    );
\d_out_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out_reg[8]_i_1_n_0\,
      CO(3) => \d_out_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_d_out_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => D(12 downto 9),
      S(3 downto 0) => PC(12 downto 9)
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(13),
      Q => PC(13),
      R => RESET_IBUF
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(14),
      Q => PC(14),
      R => RESET_IBUF
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(15),
      Q => PC(15),
      R => RESET_IBUF
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(16),
      Q => PC(16),
      R => RESET_IBUF
    );
\d_out_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out_reg[12]_i_1_n_0\,
      CO(3) => \d_out_reg[16]_i_1_n_0\,
      CO(2 downto 0) => \NLW_d_out_reg[16]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => D(16 downto 13),
      S(3 downto 0) => PC(16 downto 13)
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(17),
      Q => PC(17),
      R => RESET_IBUF
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(18),
      Q => PC(18),
      R => RESET_IBUF
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(19),
      Q => PC(19),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(1),
      Q => PC(1),
      R => RESET_IBUF
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(20),
      Q => PC(20),
      R => RESET_IBUF
    );
\d_out_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out_reg[16]_i_1_n_0\,
      CO(3) => \d_out_reg[20]_i_1_n_0\,
      CO(2 downto 0) => \NLW_d_out_reg[20]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => D(20 downto 17),
      S(3 downto 0) => PC(20 downto 17)
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(21),
      Q => PC(21),
      R => RESET_IBUF
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(22),
      Q => PC(22),
      R => RESET_IBUF
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(23),
      Q => PC(23),
      R => RESET_IBUF
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(24),
      Q => PC(24),
      R => RESET_IBUF
    );
\d_out_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out_reg[20]_i_1_n_0\,
      CO(3) => \d_out_reg[24]_i_1_n_0\,
      CO(2 downto 0) => \NLW_d_out_reg[24]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => D(24 downto 21),
      S(3 downto 0) => PC(24 downto 21)
    );
\d_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(25),
      Q => PC(25),
      R => RESET_IBUF
    );
\d_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(26),
      Q => PC(26),
      R => RESET_IBUF
    );
\d_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(27),
      Q => PC(27),
      R => RESET_IBUF
    );
\d_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(28),
      Q => PC(28),
      R => RESET_IBUF
    );
\d_out_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out_reg[24]_i_1_n_0\,
      CO(3) => \d_out_reg[28]_i_1_n_0\,
      CO(2 downto 0) => \NLW_d_out_reg[28]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => D(28 downto 25),
      S(3 downto 0) => PC(28 downto 25)
    );
\d_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(29),
      Q => PC(29),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(2),
      Q => \d_out_reg[7]_0\(0),
      R => RESET_IBUF
    );
\d_out_reg[2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(2),
      Q => \^pc_obuf\(0),
      R => RESET_IBUF
    );
\d_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(30),
      Q => PC(30),
      R => RESET_IBUF
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(31),
      Q => PC(31),
      R => RESET_IBUF
    );
\d_out_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out_reg[28]_i_1_n_0\,
      CO(3 downto 0) => \NLW_d_out_reg[31]_i_2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_d_out_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => D(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => PC(31 downto 29)
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(3),
      Q => \d_out_reg[7]_0\(1),
      R => RESET_IBUF
    );
\d_out_reg[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(3),
      Q => \^pc_obuf\(1),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(4),
      Q => \d_out_reg[7]_0\(2),
      R => RESET_IBUF
    );
\d_out_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \d_out_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_d_out_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \^pc_obuf\(0),
      DI(0) => '0',
      O(3 downto 0) => D(4 downto 1),
      S(3 downto 2) => \^pc_obuf\(2 downto 1),
      S(1) => \d_out[4]_i_2_n_0\,
      S(0) => PC(1)
    );
\d_out_reg[4]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(4),
      Q => \^pc_obuf\(2),
      R => RESET_IBUF
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(5),
      Q => \d_out_reg[7]_0\(3),
      R => RESET_IBUF
    );
\d_out_reg[5]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(5),
      Q => \^pc_obuf\(3),
      R => RESET_IBUF
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(6),
      Q => \d_out_reg[7]_0\(4),
      R => RESET_IBUF
    );
\d_out_reg[6]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(6),
      Q => \^pc_obuf\(4),
      R => RESET_IBUF
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(7),
      Q => \d_out_reg[7]_0\(5),
      R => RESET_IBUF
    );
\d_out_reg[7]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(7),
      Q => \^pc_obuf\(5),
      R => RESET_IBUF
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(8),
      Q => PC(8),
      R => RESET_IBUF
    );
\d_out_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \d_out_reg[4]_i_1_n_0\,
      CO(3) => \d_out_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_d_out_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => D(8 downto 5),
      S(3) => PC(8),
      S(2 downto 0) => \^pc_obuf\(5 downto 3)
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => PCWrite,
      D => \d_out_reg[31]_0\(9),
      Q => PC(9),
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Rg_4 is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 28 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    R15 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \d_out_reg[31]_0\ : in STD_LOGIC;
    DATA_OUT1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RESET_IBUF : in STD_LOGIC;
    IRWrite : in STD_LOGIC;
    \d_out_reg[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Rg_4 : entity is "Rg";
end Rg_4;

architecture STRUCTURE of Rg_4 is
  signal \^q\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \d_out[0]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \d_out[29]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \d_out[30]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \d_out[31]_i_1\ : label is "soft_lutpair51";
begin
  Q(28 downto 0) <= \^q\(28 downto 0);
PC_next_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => S(1)
    );
\d_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \d_out_reg[31]_0\,
      I2 => DATA_OUT1(0),
      O => D(0)
    );
\d_out[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => R15(0),
      I1 => \d_out_reg[31]_0\,
      I2 => DATA_OUT1(1),
      O => D(1)
    );
\d_out[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => R15(1),
      I1 => \d_out_reg[31]_0\,
      I2 => DATA_OUT1(2),
      O => D(2)
    );
\d_out[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => R15(2),
      I1 => \d_out_reg[31]_0\,
      I2 => DATA_OUT1(3),
      O => D(3)
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(0),
      Q => \^q\(0),
      R => RESET_IBUF
    );
\d_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(10),
      Q => \^q\(7),
      R => RESET_IBUF
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(11),
      Q => \^q\(8),
      R => RESET_IBUF
    );
\d_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(12),
      Q => \^q\(9),
      R => RESET_IBUF
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(13),
      Q => \^q\(10),
      R => RESET_IBUF
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(14),
      Q => \^q\(11),
      R => RESET_IBUF
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(15),
      Q => \^q\(12),
      R => RESET_IBUF
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(16),
      Q => \^q\(13),
      R => RESET_IBUF
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(17),
      Q => \^q\(14),
      R => RESET_IBUF
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(18),
      Q => \^q\(15),
      R => RESET_IBUF
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(19),
      Q => \^q\(16),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(1),
      Q => S(0),
      R => RESET_IBUF
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(20),
      Q => \^q\(17),
      R => RESET_IBUF
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(21),
      Q => \^q\(18),
      R => RESET_IBUF
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(22),
      Q => \^q\(19),
      R => RESET_IBUF
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(23),
      Q => \^q\(20),
      R => RESET_IBUF
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(24),
      Q => \^q\(21),
      R => RESET_IBUF
    );
\d_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(25),
      Q => \^q\(22),
      R => RESET_IBUF
    );
\d_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(26),
      Q => \^q\(23),
      R => RESET_IBUF
    );
\d_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(27),
      Q => \^q\(24),
      R => RESET_IBUF
    );
\d_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(28),
      Q => \^q\(25),
      R => RESET_IBUF
    );
\d_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(29),
      Q => \^q\(26),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(2),
      Q => \^q\(1),
      R => RESET_IBUF
    );
\d_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(30),
      Q => \^q\(27),
      R => RESET_IBUF
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(31),
      Q => \^q\(28),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(3),
      Q => S(2),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(4),
      Q => S(3),
      R => RESET_IBUF
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(5),
      Q => \^q\(2),
      R => RESET_IBUF
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(6),
      Q => \^q\(3),
      R => RESET_IBUF
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(7),
      Q => \^q\(4),
      R => RESET_IBUF
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(8),
      Q => \^q\(5),
      R => RESET_IBUF
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => IRWrite,
      D => \d_out_reg[31]_1\(9),
      Q => \^q\(6),
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Rg_5 is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RESET_IBUF : in STD_LOGIC;
    ALUResult_OBUF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Rg_5 : entity is "Rg";
end Rg_5;

architecture STRUCTURE of Rg_5 is
begin
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(0),
      Q => Q(0),
      R => RESET_IBUF
    );
\d_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(10),
      Q => Q(10),
      R => RESET_IBUF
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(11),
      Q => Q(11),
      R => RESET_IBUF
    );
\d_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(12),
      Q => Q(12),
      R => RESET_IBUF
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(13),
      Q => Q(13),
      R => RESET_IBUF
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(14),
      Q => Q(14),
      R => RESET_IBUF
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(15),
      Q => Q(15),
      R => RESET_IBUF
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(16),
      Q => Q(16),
      R => RESET_IBUF
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(17),
      Q => Q(17),
      R => RESET_IBUF
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(18),
      Q => Q(18),
      R => RESET_IBUF
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(19),
      Q => Q(19),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(1),
      Q => Q(1),
      R => RESET_IBUF
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(20),
      Q => Q(20),
      R => RESET_IBUF
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(21),
      Q => Q(21),
      R => RESET_IBUF
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(22),
      Q => Q(22),
      R => RESET_IBUF
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(23),
      Q => Q(23),
      R => RESET_IBUF
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(24),
      Q => Q(24),
      R => RESET_IBUF
    );
\d_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(25),
      Q => Q(25),
      R => RESET_IBUF
    );
\d_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(26),
      Q => Q(26),
      R => RESET_IBUF
    );
\d_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(27),
      Q => Q(27),
      R => RESET_IBUF
    );
\d_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(28),
      Q => Q(28),
      R => RESET_IBUF
    );
\d_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(29),
      Q => Q(29),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(2),
      Q => Q(2),
      R => RESET_IBUF
    );
\d_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(30),
      Q => Q(30),
      R => RESET_IBUF
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(31),
      Q => Q(31),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(3),
      Q => Q(3),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(4),
      Q => Q(4),
      R => RESET_IBUF
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(5),
      Q => Q(5),
      R => RESET_IBUF
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(6),
      Q => Q(6),
      R => RESET_IBUF
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(7),
      Q => Q(7),
      R => RESET_IBUF
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(8),
      Q => Q(8),
      R => RESET_IBUF
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => ALUResult_OBUF(9),
      Q => Q(9),
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Rg_6 is
  port (
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RESET_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Rg_6 : entity is "Rg";
end Rg_6;

architecture STRUCTURE of Rg_6 is
begin
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => RESET_IBUF
    );
\d_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(10),
      Q => Q(10),
      R => RESET_IBUF
    );
\d_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(11),
      Q => Q(11),
      R => RESET_IBUF
    );
\d_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(12),
      Q => Q(12),
      R => RESET_IBUF
    );
\d_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(13),
      Q => Q(13),
      R => RESET_IBUF
    );
\d_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(14),
      Q => Q(14),
      R => RESET_IBUF
    );
\d_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(15),
      Q => Q(15),
      R => RESET_IBUF
    );
\d_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(16),
      Q => Q(16),
      R => RESET_IBUF
    );
\d_out_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(17),
      Q => Q(17),
      R => RESET_IBUF
    );
\d_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(18),
      Q => Q(18),
      R => RESET_IBUF
    );
\d_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(19),
      Q => Q(19),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => RESET_IBUF
    );
\d_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(20),
      Q => Q(20),
      R => RESET_IBUF
    );
\d_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(21),
      Q => Q(21),
      R => RESET_IBUF
    );
\d_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(22),
      Q => Q(22),
      R => RESET_IBUF
    );
\d_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(23),
      Q => Q(23),
      R => RESET_IBUF
    );
\d_out_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(24),
      Q => Q(24),
      R => RESET_IBUF
    );
\d_out_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(25),
      Q => Q(25),
      R => RESET_IBUF
    );
\d_out_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(26),
      Q => Q(26),
      R => RESET_IBUF
    );
\d_out_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(27),
      Q => Q(27),
      R => RESET_IBUF
    );
\d_out_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(28),
      Q => Q(28),
      R => RESET_IBUF
    );
\d_out_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(29),
      Q => Q(29),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => RESET_IBUF
    );
\d_out_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(30),
      Q => Q(30),
      R => RESET_IBUF
    );
\d_out_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(31),
      Q => Q(31),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => RESET_IBUF
    );
\d_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => RESET_IBUF
    );
\d_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => RESET_IBUF
    );
\d_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => RESET_IBUF
    );
\d_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(8),
      Q => Q(8),
      R => RESET_IBUF
    );
\d_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(9),
      Q => Q(9),
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Rg__parameterized1\ is
  port (
    \d_out_reg[1]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Instruction_OBUF : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RESET_IBUF : in STD_LOGIC;
    \d_out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Rg__parameterized1\ : entity is "Rg";
end \Rg__parameterized1\;

architecture STRUCTURE of \Rg__parameterized1\ is
  signal \FSM_sequential_current_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FSM_sequential_current_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCCCFFFDF1020E"
    )
        port map (
      I0 => \^q\(1),
      I1 => Instruction_OBUF(2),
      I2 => \^q\(2),
      I3 => \FSM_sequential_current_state[2]_i_9_n_0\,
      I4 => Instruction_OBUF(0),
      I5 => Instruction_OBUF(1),
      O => \d_out_reg[1]_0\
    );
\FSM_sequential_current_state[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      O => \FSM_sequential_current_state[2]_i_9_n_0\
    );
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \d_out_reg[0]_0\(0),
      D => D(0),
      Q => \^q\(0),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \d_out_reg[0]_0\(0),
      D => D(1),
      Q => \^q\(1),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \d_out_reg[0]_0\(0),
      D => D(2),
      Q => \^q\(2),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \d_out_reg[0]_0\(0),
      D => D(3),
      Q => \^q\(3),
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Rg__parameterized4\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    RESET_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ALUResult_OBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Rg__parameterized4\ : entity is "Rg";
end \Rg__parameterized4\;

architecture STRUCTURE of \Rg__parameterized4\ is
begin
\d_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => ALUResult_OBUF(0),
      Q => Q(0),
      R => RESET_IBUF
    );
\d_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => ALUResult_OBUF(1),
      Q => Q(1),
      R => RESET_IBUF
    );
\d_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => ALUResult_OBUF(2),
      Q => Q(2),
      R => RESET_IBUF
    );
\d_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => ALUResult_OBUF(3),
      Q => Q(3),
      R => RESET_IBUF
    );
\d_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => ALUResult_OBUF(4),
      Q => Q(4),
      R => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder is
  port (
    S_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out0_out : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[4]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[8]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[12]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[16]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[20]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[24]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end adder;

architecture STRUCTURE of adder is
  signal \sum0_carry__0_n_0\ : STD_LOGIC;
  signal \sum0_carry__1_n_0\ : STD_LOGIC;
  signal \sum0_carry__2_n_0\ : STD_LOGIC;
  signal \sum0_carry__3_n_0\ : STD_LOGIC;
  signal \sum0_carry__4_n_0\ : STD_LOGIC;
  signal \sum0_carry__5_n_0\ : STD_LOGIC;
  signal sum0_carry_n_0 : STD_LOGIC;
  signal NLW_sum0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_sum0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
sum0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sum0_carry_n_0,
      CO(2 downto 0) => NLW_sum0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => d_out0_out(3 downto 0),
      O(3 downto 0) => S_0(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\sum0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sum0_carry_n_0,
      CO(3) => \sum0_carry__0_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => d_out0_out(7 downto 4),
      O(3 downto 0) => S_0(7 downto 4),
      S(3 downto 0) => \ALUResult_OBUF[4]_inst_i_3\(3 downto 0)
    );
\sum0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__0_n_0\,
      CO(3) => \sum0_carry__1_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => d_out0_out(11 downto 8),
      O(3 downto 0) => S_0(11 downto 8),
      S(3 downto 0) => \ALUResult_OBUF[8]_inst_i_3\(3 downto 0)
    );
\sum0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__1_n_0\,
      CO(3) => \sum0_carry__2_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => d_out0_out(15 downto 12),
      O(3 downto 0) => S_0(15 downto 12),
      S(3 downto 0) => \ALUResult_OBUF[12]_inst_i_3\(3 downto 0)
    );
\sum0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__2_n_0\,
      CO(3) => \sum0_carry__3_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => d_out0_out(19 downto 16),
      O(3 downto 0) => S_0(19 downto 16),
      S(3 downto 0) => \ALUResult_OBUF[16]_inst_i_3\(3 downto 0)
    );
\sum0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__3_n_0\,
      CO(3) => \sum0_carry__4_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => d_out0_out(23 downto 20),
      O(3 downto 0) => S_0(23 downto 20),
      S(3 downto 0) => \ALUResult_OBUF[20]_inst_i_3\(3 downto 0)
    );
\sum0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__4_n_0\,
      CO(3) => \sum0_carry__5_n_0\,
      CO(2 downto 0) => \NLW_sum0_carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => d_out0_out(27 downto 24),
      O(3 downto 0) => S_0(27 downto 24),
      S(3 downto 0) => \ALUResult_OBUF[24]_inst_i_3\(3 downto 0)
    );
\sum0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum0_carry__5_n_0\,
      CO(3) => CO(0),
      CO(2 downto 0) => \NLW_sum0_carry__6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => DI(0),
      DI(2 downto 0) => d_out0_out(30 downto 28),
      O(3 downto 0) => S_0(31 downto 28),
      S(3 downto 0) => \d_out_reg[0]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity adder_p4 is
  port (
    R15 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    D : out STD_LOGIC_VECTOR ( 27 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[28]\ : in STD_LOGIC;
    DATA_OUT1 : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
end adder_p4;

architecture STRUCTURE of adder_p4 is
  signal \PC_next_carry__0_n_0\ : STD_LOGIC;
  signal \PC_next_carry__1_n_0\ : STD_LOGIC;
  signal \PC_next_carry__2_n_0\ : STD_LOGIC;
  signal \PC_next_carry__3_n_0\ : STD_LOGIC;
  signal \PC_next_carry__4_n_0\ : STD_LOGIC;
  signal \PC_next_carry__5_n_0\ : STD_LOGIC;
  signal PC_next_carry_n_0 : STD_LOGIC;
  signal \^r15\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal NLW_PC_next_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_PC_next_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_PC_next_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_PC_next_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_PC_next_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_PC_next_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_PC_next_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_PC_next_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_PC_next_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of PC_next_carry : label is 35;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of PC_next_carry : label is "PROPCONST";
  attribute ADDER_THRESHOLD of \PC_next_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_next_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_next_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_next_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_next_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_next_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \PC_next_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \d_out[10]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \d_out[11]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \d_out[12]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \d_out[13]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \d_out[14]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \d_out[15]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \d_out[16]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \d_out[17]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \d_out[18]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \d_out[19]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \d_out[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \d_out[20]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \d_out[21]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \d_out[22]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \d_out[23]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \d_out[24]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \d_out[25]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \d_out[26]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \d_out[27]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \d_out[28]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \d_out[2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \d_out[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \d_out[4]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \d_out[5]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \d_out[6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \d_out[7]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \d_out[8]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \d_out[9]_i_1\ : label is "soft_lutpair62";
begin
  R15(30 downto 0) <= \^r15\(30 downto 0);
PC_next_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => PC_next_carry_n_0,
      CO(2 downto 0) => NLW_PC_next_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => Q(1),
      DI(0) => '0',
      O(3 downto 0) => \^r15\(3 downto 0),
      S(3 downto 2) => Q(3 downto 2),
      S(1) => S(0),
      S(0) => Q(0)
    );
\PC_next_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => PC_next_carry_n_0,
      CO(3) => \PC_next_carry__0_n_0\,
      CO(2 downto 0) => \NLW_PC_next_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(7 downto 4),
      S(3 downto 0) => Q(7 downto 4)
    );
\PC_next_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_next_carry__0_n_0\,
      CO(3) => \PC_next_carry__1_n_0\,
      CO(2 downto 0) => \NLW_PC_next_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(11 downto 8),
      S(3 downto 0) => Q(11 downto 8)
    );
\PC_next_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_next_carry__1_n_0\,
      CO(3) => \PC_next_carry__2_n_0\,
      CO(2 downto 0) => \NLW_PC_next_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(15 downto 12),
      S(3 downto 0) => Q(15 downto 12)
    );
\PC_next_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_next_carry__2_n_0\,
      CO(3) => \PC_next_carry__3_n_0\,
      CO(2 downto 0) => \NLW_PC_next_carry__3_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(19 downto 16),
      S(3 downto 0) => Q(19 downto 16)
    );
\PC_next_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_next_carry__3_n_0\,
      CO(3) => \PC_next_carry__4_n_0\,
      CO(2 downto 0) => \NLW_PC_next_carry__4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(23 downto 20),
      S(3 downto 0) => Q(23 downto 20)
    );
\PC_next_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_next_carry__4_n_0\,
      CO(3) => \PC_next_carry__5_n_0\,
      CO(2 downto 0) => \NLW_PC_next_carry__5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^r15\(27 downto 24),
      S(3 downto 0) => Q(27 downto 24)
    );
\PC_next_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \PC_next_carry__5_n_0\,
      CO(3 downto 0) => \NLW_PC_next_carry__6_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_PC_next_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => \^r15\(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => Q(30 downto 28)
    );
\d_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(9),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(9),
      O => D(9)
    );
\d_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(10),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(10),
      O => D(10)
    );
\d_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(11),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(11),
      O => D(11)
    );
\d_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(12),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(12),
      O => D(12)
    );
\d_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(13),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(13),
      O => D(13)
    );
\d_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(14),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(14),
      O => D(14)
    );
\d_out[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(15),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(15),
      O => D(15)
    );
\d_out[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(16),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(16),
      O => D(16)
    );
\d_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(17),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(17),
      O => D(17)
    );
\d_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(18),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(18),
      O => D(18)
    );
\d_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(0),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(0),
      O => D(0)
    );
\d_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(19),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(19),
      O => D(19)
    );
\d_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(20),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(20),
      O => D(20)
    );
\d_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(21),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(21),
      O => D(21)
    );
\d_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(22),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(22),
      O => D(22)
    );
\d_out[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(23),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(23),
      O => D(23)
    );
\d_out[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(24),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(24),
      O => D(24)
    );
\d_out[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(25),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(25),
      O => D(25)
    );
\d_out[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(26),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(26),
      O => D(26)
    );
\d_out[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(27),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(27),
      O => D(27)
    );
\d_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(1),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(1),
      O => D(1)
    );
\d_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(2),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(2),
      O => D(2)
    );
\d_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(3),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(3),
      O => D(3)
    );
\d_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(4),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(4),
      O => D(4)
    );
\d_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(5),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(5),
      O => D(5)
    );
\d_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(6),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(6),
      O => D(6)
    );
\d_out[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(7),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(7),
      O => D(7)
    );
\d_out[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^r15\(8),
      I1 => \d_out_reg[28]\,
      I2 => DATA_OUT1(8),
      O => D(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity regfile_core is
  port (
    DATA_OUT1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    DATA_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RegWrite : in STD_LOGIC;
    WA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRC : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RA2 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end regfile_core;

architecture STRUCTURE of regfile_core is
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
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_0_5 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_0_5";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_0_5 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM : string;
  attribute XILINX_REPORT_XFORM of RF_reg_r1_0_15_0_5 : label is "RAM32M";
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
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_12_17 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_12_17";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_12_17 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r1_0_15_12_17 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r1_0_15_12_17 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_12_17 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_12_17 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_12_17 : label is 12;
  attribute ram_slice_end of RF_reg_r1_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_18_23 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_18_23 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_18_23";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_18_23 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r1_0_15_18_23 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r1_0_15_18_23 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_18_23 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_18_23 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_18_23 : label is 18;
  attribute ram_slice_end of RF_reg_r1_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_24_29 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_24_29 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_24_29";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_24_29 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r1_0_15_24_29 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r1_0_15_24_29 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_24_29 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_24_29 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_24_29 : label is 24;
  attribute ram_slice_end of RF_reg_r1_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_30_31 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_30_31 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_30_31 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_30_31";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_30_31 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r1_0_15_30_31 : label is "RAM32X1D";
  attribute ram_addr_begin of RF_reg_r1_0_15_30_31 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_30_31 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_30_31 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_30_31 : label is 30;
  attribute ram_slice_end of RF_reg_r1_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \RF_reg_r1_0_15_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \RF_reg_r1_0_15_30_31__0\ : label is 512;
  attribute RTL_RAM_NAME of \RF_reg_r1_0_15_30_31__0\ : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_30_31";
  attribute RTL_RAM_TYPE of \RF_reg_r1_0_15_30_31__0\ : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of \RF_reg_r1_0_15_30_31__0\ : label is "RAM32X1D";
  attribute ram_addr_begin of \RF_reg_r1_0_15_30_31__0\ : label is 0;
  attribute ram_addr_end of \RF_reg_r1_0_15_30_31__0\ : label is 15;
  attribute ram_offset of \RF_reg_r1_0_15_30_31__0\ : label is 0;
  attribute ram_slice_begin of \RF_reg_r1_0_15_30_31__0\ : label is 30;
  attribute ram_slice_end of \RF_reg_r1_0_15_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r1_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r1_0_15_6_11 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r1_0_15_6_11 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_6_11";
  attribute RTL_RAM_TYPE of RF_reg_r1_0_15_6_11 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r1_0_15_6_11 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r1_0_15_6_11 : label is 0;
  attribute ram_addr_end of RF_reg_r1_0_15_6_11 : label is 15;
  attribute ram_offset of RF_reg_r1_0_15_6_11 : label is 0;
  attribute ram_slice_begin of RF_reg_r1_0_15_6_11 : label is 6;
  attribute ram_slice_end of RF_reg_r1_0_15_6_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_0_5 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_0_5 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_0_5 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_0_5";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_0_5 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r2_0_15_0_5 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r2_0_15_0_5 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_0_5 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_0_5 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_0_5 : label is 0;
  attribute ram_slice_end of RF_reg_r2_0_15_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_12_17 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_12_17 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_12_17 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_12_17";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_12_17 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r2_0_15_12_17 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r2_0_15_12_17 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_12_17 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_12_17 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_12_17 : label is 12;
  attribute ram_slice_end of RF_reg_r2_0_15_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_18_23 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_18_23 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_18_23 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_18_23";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_18_23 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r2_0_15_18_23 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r2_0_15_18_23 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_18_23 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_18_23 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_18_23 : label is 18;
  attribute ram_slice_end of RF_reg_r2_0_15_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_24_29 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_24_29 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_24_29 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_24_29";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_24_29 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r2_0_15_24_29 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r2_0_15_24_29 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_24_29 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_24_29 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_24_29 : label is 24;
  attribute ram_slice_end of RF_reg_r2_0_15_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_30_31 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_30_31 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_30_31 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_30_31";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_30_31 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r2_0_15_30_31 : label is "RAM32X1D";
  attribute ram_addr_begin of RF_reg_r2_0_15_30_31 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_30_31 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_30_31 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_30_31 : label is 30;
  attribute ram_slice_end of RF_reg_r2_0_15_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of \RF_reg_r2_0_15_30_31__0\ : label is "";
  attribute RTL_RAM_BITS of \RF_reg_r2_0_15_30_31__0\ : label is 512;
  attribute RTL_RAM_NAME of \RF_reg_r2_0_15_30_31__0\ : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_30_31";
  attribute RTL_RAM_TYPE of \RF_reg_r2_0_15_30_31__0\ : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of \RF_reg_r2_0_15_30_31__0\ : label is "RAM32X1D";
  attribute ram_addr_begin of \RF_reg_r2_0_15_30_31__0\ : label is 0;
  attribute ram_addr_end of \RF_reg_r2_0_15_30_31__0\ : label is 15;
  attribute ram_offset of \RF_reg_r2_0_15_30_31__0\ : label is 0;
  attribute ram_slice_begin of \RF_reg_r2_0_15_30_31__0\ : label is 30;
  attribute ram_slice_end of \RF_reg_r2_0_15_30_31__0\ : label is 31;
  attribute METHODOLOGY_DRC_VIOS of RF_reg_r2_0_15_6_11 : label is "";
  attribute RTL_RAM_BITS of RF_reg_r2_0_15_6_11 : label is 512;
  attribute RTL_RAM_NAME of RF_reg_r2_0_15_6_11 : label is "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_6_11";
  attribute RTL_RAM_TYPE of RF_reg_r2_0_15_6_11 : label is "RAM_SDP";
  attribute XILINX_REPORT_XFORM of RF_reg_r2_0_15_6_11 : label is "RAM32M";
  attribute ram_addr_begin of RF_reg_r2_0_15_6_11 : label is 0;
  attribute ram_addr_end of RF_reg_r2_0_15_6_11 : label is 15;
  attribute ram_offset of RF_reg_r2_0_15_6_11 : label is 0;
  attribute ram_slice_begin of RF_reg_r2_0_15_6_11 : label is 6;
  attribute ram_slice_end of RF_reg_r2_0_15_6_11 : label is 11;
begin
RF_reg_r1_0_15_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRC(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRC(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRC(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(1 downto 0),
      DIB(1 downto 0) => DATA_IN(3 downto 2),
      DIC(1 downto 0) => DATA_IN(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(1 downto 0),
      DOB(1 downto 0) => DATA_OUT1(3 downto 2),
      DOC(1 downto 0) => DATA_OUT1(5 downto 4),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => ADDRC(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRC(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRC(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(13 downto 12),
      DIB(1 downto 0) => DATA_IN(15 downto 14),
      DIC(1 downto 0) => DATA_IN(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(13 downto 12),
      DOB(1 downto 0) => DATA_OUT1(15 downto 14),
      DOC(1 downto 0) => DATA_OUT1(17 downto 16),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => ADDRC(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRC(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRC(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(19 downto 18),
      DIB(1 downto 0) => DATA_IN(21 downto 20),
      DIC(1 downto 0) => DATA_IN(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(19 downto 18),
      DOB(1 downto 0) => DATA_OUT1(21 downto 20),
      DOC(1 downto 0) => DATA_OUT1(23 downto 22),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => ADDRC(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRC(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRC(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(25 downto 24),
      DIB(1 downto 0) => DATA_IN(27 downto 26),
      DIC(1 downto 0) => DATA_IN(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(25 downto 24),
      DOB(1 downto 0) => DATA_OUT1(27 downto 26),
      DOC(1 downto 0) => DATA_OUT1(29 downto 28),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
    );
RF_reg_r1_0_15_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => WA(0),
      A1 => WA(1),
      A2 => WA(2),
      A3 => WA(3),
      A4 => '0',
      D => DATA_IN(30),
      DPO => DATA_OUT1(30),
      DPRA0 => ADDRC(0),
      DPRA1 => ADDRC(1),
      DPRA2 => ADDRC(2),
      DPRA3 => ADDRC(3),
      DPRA4 => '0',
      SPO => NLW_RF_reg_r1_0_15_30_31_SPO_UNCONNECTED,
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
    );
\RF_reg_r1_0_15_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => WA(0),
      A1 => WA(1),
      A2 => WA(2),
      A3 => WA(3),
      A4 => '0',
      D => DATA_IN(31),
      DPO => DATA_OUT1(31),
      DPRA0 => ADDRC(0),
      DPRA1 => ADDRC(1),
      DPRA2 => ADDRC(2),
      DPRA3 => ADDRC(3),
      DPRA4 => '0',
      SPO => \NLW_RF_reg_r1_0_15_30_31__0_SPO_UNCONNECTED\,
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => ADDRC(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRC(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRC(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(7 downto 6),
      DIB(1 downto 0) => DATA_IN(9 downto 8),
      DIC(1 downto 0) => DATA_IN(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT1(7 downto 6),
      DOB(1 downto 0) => DATA_OUT1(9 downto 8),
      DOC(1 downto 0) => DATA_OUT1(11 downto 10),
      DOD(1 downto 0) => NLW_RF_reg_r1_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => RA2(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => RA2(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => RA2(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(1 downto 0),
      DIB(1 downto 0) => DATA_IN(3 downto 2),
      DIC(1 downto 0) => DATA_IN(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(1 downto 0),
      DOB(1 downto 0) => DATA_OUT2(3 downto 2),
      DOC(1 downto 0) => DATA_OUT2(5 downto 4),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => RA2(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => RA2(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => RA2(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(13 downto 12),
      DIB(1 downto 0) => DATA_IN(15 downto 14),
      DIC(1 downto 0) => DATA_IN(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(13 downto 12),
      DOB(1 downto 0) => DATA_OUT2(15 downto 14),
      DOC(1 downto 0) => DATA_OUT2(17 downto 16),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => RA2(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => RA2(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => RA2(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(19 downto 18),
      DIB(1 downto 0) => DATA_IN(21 downto 20),
      DIC(1 downto 0) => DATA_IN(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(19 downto 18),
      DOB(1 downto 0) => DATA_OUT2(21 downto 20),
      DOC(1 downto 0) => DATA_OUT2(23 downto 22),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => RA2(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => RA2(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => RA2(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(25 downto 24),
      DIB(1 downto 0) => DATA_IN(27 downto 26),
      DIC(1 downto 0) => DATA_IN(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(25 downto 24),
      DOB(1 downto 0) => DATA_OUT2(27 downto 26),
      DOC(1 downto 0) => DATA_OUT2(29 downto 28),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
    );
RF_reg_r2_0_15_30_31: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => WA(0),
      A1 => WA(1),
      A2 => WA(2),
      A3 => WA(3),
      A4 => '0',
      D => DATA_IN(30),
      DPO => DATA_OUT2(30),
      DPRA0 => RA2(0),
      DPRA1 => RA2(1),
      DPRA2 => RA2(2),
      DPRA3 => RA2(3),
      DPRA4 => '0',
      SPO => NLW_RF_reg_r2_0_15_30_31_SPO_UNCONNECTED,
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
    );
\RF_reg_r2_0_15_30_31__0\: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => WA(0),
      A1 => WA(1),
      A2 => WA(2),
      A3 => WA(3),
      A4 => '0',
      D => DATA_IN(31),
      DPO => DATA_OUT2(31),
      DPRA0 => RA2(0),
      DPRA1 => RA2(1),
      DPRA2 => RA2(2),
      DPRA3 => RA2(3),
      DPRA4 => '0',
      SPO => \NLW_RF_reg_r2_0_15_30_31__0_SPO_UNCONNECTED\,
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
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
      ADDRA(3 downto 0) => RA2(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => RA2(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => RA2(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => WA(3 downto 0),
      DIA(1 downto 0) => DATA_IN(7 downto 6),
      DIB(1 downto 0) => DATA_IN(9 downto 8),
      DIC(1 downto 0) => DATA_IN(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => DATA_OUT2(7 downto 6),
      DOB(1 downto 0) => DATA_OUT2(9 downto 8),
      DOC(1 downto 0) => DATA_OUT2(11 downto 10),
      DOD(1 downto 0) => NLW_RF_reg_r2_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => CLK_IBUF_BUFG,
      WE => RegWrite
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADD_SUB is
  port (
    S_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out0_out : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[4]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[8]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[12]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[16]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[20]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[24]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end ADD_SUB;

architecture STRUCTURE of ADD_SUB is
begin
add: entity work.adder
     port map (
      \ALUResult_OBUF[12]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[12]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[16]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[16]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[20]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[20]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[24]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[24]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[4]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[4]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[8]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[8]_inst_i_3\(3 downto 0),
      CO(0) => CO(0),
      DI(0) => DI(0),
      S(3 downto 0) => S(3 downto 0),
      S_0(31 downto 0) => S_0(31 downto 0),
      d_out0_out(30 downto 0) => d_out0_out(30 downto 0),
      \d_out_reg[0]\(3 downto 0) => \d_out_reg[0]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Control is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_current_state_reg[1]\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[3]_0\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_0\ : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    PCWrite : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    IRWrite : out STD_LOGIC;
    \FSM_sequential_current_state_reg[2]\ : in STD_LOGIC;
    Instruction_OBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_current_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_0\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[0]_1\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]_2\ : in STD_LOGIC;
    \FSM_sequential_current_state_reg[2]_0\ : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    CLK_IBUF_BUFG : in STD_LOGIC
  );
end Control;

architecture STRUCTURE of Control is
begin
StateMachineWE: entity work.FSM
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      E(0) => E(0),
      \FSM_sequential_current_state_reg[0]_0\ => \FSM_sequential_current_state_reg[0]\,
      \FSM_sequential_current_state_reg[0]_1\ => \FSM_sequential_current_state_reg[0]_0\,
      \FSM_sequential_current_state_reg[0]_2\ => \FSM_sequential_current_state_reg[0]_1\,
      \FSM_sequential_current_state_reg[1]_0\ => \FSM_sequential_current_state_reg[1]\,
      \FSM_sequential_current_state_reg[1]_1\ => \FSM_sequential_current_state_reg[1]_0\,
      \FSM_sequential_current_state_reg[1]_2\ => \FSM_sequential_current_state_reg[1]_1\,
      \FSM_sequential_current_state_reg[1]_3\ => \FSM_sequential_current_state_reg[1]_2\,
      \FSM_sequential_current_state_reg[2]_0\ => \FSM_sequential_current_state_reg[2]\,
      \FSM_sequential_current_state_reg[2]_1\ => \FSM_sequential_current_state_reg[2]_0\,
      \FSM_sequential_current_state_reg[3]_0\(0) => \FSM_sequential_current_state_reg[3]\(0),
      \FSM_sequential_current_state_reg[3]_1\ => \FSM_sequential_current_state_reg[3]_0\,
      IRWrite => IRWrite,
      Instruction_OBUF(3 downto 0) => Instruction_OBUF(3 downto 0),
      PCWrite => PCWrite,
      Q(2 downto 0) => Q(2 downto 0),
      RESET_IBUF => RESET_IBUF,
      RegWrite => RegWrite,
      WEA(0) => WEA(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity regfile is
  port (
    DATA_OUT1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DATA_OUT2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    DATA_IN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RegWrite : in STD_LOGIC;
    WA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRC : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RA2 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end regfile;

architecture STRUCTURE of regfile is
begin
rf: entity work.regfile_core
     port map (
      ADDRC(3 downto 0) => ADDRC(3 downto 0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      DATA_IN(31 downto 0) => DATA_IN(31 downto 0),
      DATA_OUT1(31 downto 0) => DATA_OUT1(31 downto 0),
      DATA_OUT2(31 downto 0) => DATA_OUT2(31 downto 0),
      RA2(3 downto 0) => RA2(3 downto 0),
      RegWrite => RegWrite,
      WA(3 downto 0) => WA(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU is
  port (
    S_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    d_out0_out : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[4]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[8]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[12]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[16]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[20]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ALUResult_OBUF[24]_inst_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 0 to 0 );
    \d_out_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end ALU;

architecture STRUCTURE of ALU is
begin
AddSub: entity work.ADD_SUB
     port map (
      \ALUResult_OBUF[12]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[12]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[16]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[16]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[20]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[20]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[24]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[24]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[4]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[4]_inst_i_3\(3 downto 0),
      \ALUResult_OBUF[8]_inst_i_3\(3 downto 0) => \ALUResult_OBUF[8]_inst_i_3\(3 downto 0),
      CO(0) => CO(0),
      DI(0) => DI(0),
      S(3 downto 0) => S(3 downto 0),
      S_0(31 downto 0) => S_0(31 downto 0),
      d_out0_out(30 downto 0) => d_out0_out(30 downto 0),
      \d_out_reg[0]\(3 downto 0) => \d_out_reg[0]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Datapath is
  port (
    \d_out_reg[21]_rep\ : out STD_LOGIC;
    \d_out_reg[27]_rep\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \d_out_reg[24]_rep\ : out STD_LOGIC;
    ALUResult_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Result_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \d_out_reg[21]_rep_0\ : out STD_LOGIC;
    \d_out_reg[31]_rep\ : out STD_LOGIC;
    \FSM_sequential_current_state_reg[3]\ : out STD_LOGIC;
    \d_out_reg[14]_rep\ : out STD_LOGIC;
    \d_out_reg[13]_rep\ : out STD_LOGIC;
    \d_out_reg[31]\ : out STD_LOGIC_VECTOR ( 28 downto 0 );
    \d_out_reg[11]_rep\ : out STD_LOGIC;
    \d_out_reg[11]_rep_rep\ : out STD_LOGIC;
    \d_out_reg[7]_rep\ : out STD_LOGIC;
    \d_out_reg[7]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    d_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    RegWrite : in STD_LOGIC;
    \d_out_reg[31]_0\ : in STD_LOGIC;
    \d_out_reg[31]_1\ : in STD_LOGIC;
    \d_out_reg[31]_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IRWrite : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    PCWrite : in STD_LOGIC;
    \d_out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Datapath;

architecture STRUCTURE of Datapath is
  signal \^aluresult_obuf\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALUblock_n_32 : STD_LOGIC;
  signal Arg_n_0 : STD_LOGIC;
  signal Arg_n_33 : STD_LOGIC;
  signal Brg_n_0 : STD_LOGIC;
  signal C : STD_LOGIC;
  signal \CPSR__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CPSR_n_0 : STD_LOGIC;
  signal DATA_IN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DATA_OUT1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DATA_OUT2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DataMemory_n_0 : STD_LOGIC;
  signal DataMemory_n_1 : STD_LOGIC;
  signal DataMemory_n_10 : STD_LOGIC;
  signal DataMemory_n_11 : STD_LOGIC;
  signal DataMemory_n_12 : STD_LOGIC;
  signal DataMemory_n_13 : STD_LOGIC;
  signal DataMemory_n_14 : STD_LOGIC;
  signal DataMemory_n_15 : STD_LOGIC;
  signal DataMemory_n_16 : STD_LOGIC;
  signal DataMemory_n_17 : STD_LOGIC;
  signal DataMemory_n_18 : STD_LOGIC;
  signal DataMemory_n_19 : STD_LOGIC;
  signal DataMemory_n_2 : STD_LOGIC;
  signal DataMemory_n_20 : STD_LOGIC;
  signal DataMemory_n_21 : STD_LOGIC;
  signal DataMemory_n_22 : STD_LOGIC;
  signal DataMemory_n_23 : STD_LOGIC;
  signal DataMemory_n_24 : STD_LOGIC;
  signal DataMemory_n_25 : STD_LOGIC;
  signal DataMemory_n_26 : STD_LOGIC;
  signal DataMemory_n_27 : STD_LOGIC;
  signal DataMemory_n_28 : STD_LOGIC;
  signal DataMemory_n_29 : STD_LOGIC;
  signal DataMemory_n_3 : STD_LOGIC;
  signal DataMemory_n_30 : STD_LOGIC;
  signal DataMemory_n_31 : STD_LOGIC;
  signal DataMemory_n_4 : STD_LOGIC;
  signal DataMemory_n_5 : STD_LOGIC;
  signal DataMemory_n_6 : STD_LOGIC;
  signal DataMemory_n_7 : STD_LOGIC;
  signal DataMemory_n_8 : STD_LOGIC;
  signal DataMemory_n_9 : STD_LOGIC;
  signal IMrg_n_0 : STD_LOGIC;
  signal IMrg_n_1 : STD_LOGIC;
  signal IMrg_n_10 : STD_LOGIC;
  signal IMrg_n_11 : STD_LOGIC;
  signal IMrg_n_12 : STD_LOGIC;
  signal IMrg_n_13 : STD_LOGIC;
  signal IMrg_n_14 : STD_LOGIC;
  signal IMrg_n_15 : STD_LOGIC;
  signal IMrg_n_16 : STD_LOGIC;
  signal IMrg_n_17 : STD_LOGIC;
  signal IMrg_n_18 : STD_LOGIC;
  signal IMrg_n_19 : STD_LOGIC;
  signal IMrg_n_2 : STD_LOGIC;
  signal IMrg_n_20 : STD_LOGIC;
  signal IMrg_n_21 : STD_LOGIC;
  signal IMrg_n_22 : STD_LOGIC;
  signal IMrg_n_23 : STD_LOGIC;
  signal IMrg_n_24 : STD_LOGIC;
  signal IMrg_n_25 : STD_LOGIC;
  signal IMrg_n_3 : STD_LOGIC;
  signal IMrg_n_4 : STD_LOGIC;
  signal IMrg_n_5 : STD_LOGIC;
  signal IMrg_n_6 : STD_LOGIC;
  signal IMrg_n_7 : STD_LOGIC;
  signal IMrg_n_8 : STD_LOGIC;
  signal IMrg_n_9 : STD_LOGIC;
  signal IRrg_n_145 : STD_LOGIC;
  signal IRrg_n_157 : STD_LOGIC;
  signal IRrg_n_158 : STD_LOGIC;
  signal IRrg_n_159 : STD_LOGIC;
  signal IRrg_n_160 : STD_LOGIC;
  signal IRrg_n_161 : STD_LOGIC;
  signal IRrg_n_162 : STD_LOGIC;
  signal IRrg_n_163 : STD_LOGIC;
  signal IRrg_n_164 : STD_LOGIC;
  signal IRrg_n_165 : STD_LOGIC;
  signal IRrg_n_166 : STD_LOGIC;
  signal IRrg_n_167 : STD_LOGIC;
  signal IRrg_n_168 : STD_LOGIC;
  signal IRrg_n_169 : STD_LOGIC;
  signal IRrg_n_170 : STD_LOGIC;
  signal IRrg_n_171 : STD_LOGIC;
  signal IRrg_n_172 : STD_LOGIC;
  signal IRrg_n_173 : STD_LOGIC;
  signal IRrg_n_174 : STD_LOGIC;
  signal IRrg_n_175 : STD_LOGIC;
  signal IRrg_n_176 : STD_LOGIC;
  signal IRrg_n_177 : STD_LOGIC;
  signal IRrg_n_178 : STD_LOGIC;
  signal IRrg_n_179 : STD_LOGIC;
  signal IRrg_n_180 : STD_LOGIC;
  signal IRrg_n_183 : STD_LOGIC;
  signal IRrg_n_184 : STD_LOGIC;
  signal IRrg_n_185 : STD_LOGIC;
  signal IRrg_n_186 : STD_LOGIC;
  signal IRrg_n_187 : STD_LOGIC;
  signal IRrg_n_188 : STD_LOGIC;
  signal IRrg_n_189 : STD_LOGIC;
  signal IRrg_n_190 : STD_LOGIC;
  signal IRrg_n_191 : STD_LOGIC;
  signal IRrg_n_192 : STD_LOGIC;
  signal IRrg_n_193 : STD_LOGIC;
  signal IRrg_n_194 : STD_LOGIC;
  signal IRrg_n_195 : STD_LOGIC;
  signal IRrg_n_196 : STD_LOGIC;
  signal IRrg_n_197 : STD_LOGIC;
  signal IRrg_n_198 : STD_LOGIC;
  signal IRrg_n_199 : STD_LOGIC;
  signal IRrg_n_200 : STD_LOGIC;
  signal IRrg_n_201 : STD_LOGIC;
  signal IRrg_n_202 : STD_LOGIC;
  signal IRrg_n_203 : STD_LOGIC;
  signal IRrg_n_204 : STD_LOGIC;
  signal IRrg_n_205 : STD_LOGIC;
  signal IRrg_n_206 : STD_LOGIC;
  signal IRrg_n_207 : STD_LOGIC;
  signal IRrg_n_208 : STD_LOGIC;
  signal IRrg_n_209 : STD_LOGIC;
  signal IRrg_n_210 : STD_LOGIC;
  signal IRrg_n_211 : STD_LOGIC;
  signal IRrg_n_212 : STD_LOGIC;
  signal IRrg_n_213 : STD_LOGIC;
  signal IRrg_n_214 : STD_LOGIC;
  signal IRrg_n_215 : STD_LOGIC;
  signal IRrg_n_216 : STD_LOGIC;
  signal IRrg_n_217 : STD_LOGIC;
  signal IRrg_n_218 : STD_LOGIC;
  signal IRrg_n_219 : STD_LOGIC;
  signal IRrg_n_220 : STD_LOGIC;
  signal IRrg_n_221 : STD_LOGIC;
  signal IRrg_n_222 : STD_LOGIC;
  signal IRrg_n_223 : STD_LOGIC;
  signal IRrg_n_224 : STD_LOGIC;
  signal IRrg_n_225 : STD_LOGIC;
  signal IRrg_n_226 : STD_LOGIC;
  signal IRrg_n_227 : STD_LOGIC;
  signal IRrg_n_228 : STD_LOGIC;
  signal IRrg_n_229 : STD_LOGIC;
  signal IRrg_n_230 : STD_LOGIC;
  signal IRrg_n_231 : STD_LOGIC;
  signal IRrg_n_232 : STD_LOGIC;
  signal IRrg_n_233 : STD_LOGIC;
  signal IRrg_n_234 : STD_LOGIC;
  signal IRrg_n_235 : STD_LOGIC;
  signal IRrg_n_236 : STD_LOGIC;
  signal IRrg_n_237 : STD_LOGIC;
  signal IRrg_n_238 : STD_LOGIC;
  signal IRrg_n_239 : STD_LOGIC;
  signal IRrg_n_240 : STD_LOGIC;
  signal IRrg_n_241 : STD_LOGIC;
  signal IRrg_n_242 : STD_LOGIC;
  signal IRrg_n_243 : STD_LOGIC;
  signal IRrg_n_244 : STD_LOGIC;
  signal IRrg_n_245 : STD_LOGIC;
  signal IRrg_n_246 : STD_LOGIC;
  signal IRrg_n_247 : STD_LOGIC;
  signal IRrg_n_42 : STD_LOGIC;
  signal IRrg_n_43 : STD_LOGIC;
  signal IRrg_n_44 : STD_LOGIC;
  signal IRrg_n_45 : STD_LOGIC;
  signal IRrg_n_46 : STD_LOGIC;
  signal IRrg_n_47 : STD_LOGIC;
  signal IRrg_n_48 : STD_LOGIC;
  signal IRrg_n_49 : STD_LOGIC;
  signal IRrg_n_50 : STD_LOGIC;
  signal IRrg_n_51 : STD_LOGIC;
  signal IRrg_n_52 : STD_LOGIC;
  signal IRrg_n_53 : STD_LOGIC;
  signal IRrg_n_54 : STD_LOGIC;
  signal IRrg_n_55 : STD_LOGIC;
  signal IRrg_n_56 : STD_LOGIC;
  signal IRrg_n_57 : STD_LOGIC;
  signal IRrg_n_58 : STD_LOGIC;
  signal IRrg_n_59 : STD_LOGIC;
  signal IRrg_n_60 : STD_LOGIC;
  signal IRrg_n_61 : STD_LOGIC;
  signal IRrg_n_62 : STD_LOGIC;
  signal IRrg_n_63 : STD_LOGIC;
  signal IRrg_n_64 : STD_LOGIC;
  signal IRrg_n_65 : STD_LOGIC;
  signal IRrg_n_66 : STD_LOGIC;
  signal IRrg_n_67 : STD_LOGIC;
  signal IRrg_n_68 : STD_LOGIC;
  signal IRrg_n_69 : STD_LOGIC;
  signal IRrg_n_70 : STD_LOGIC;
  signal IRrg_n_71 : STD_LOGIC;
  signal IRrg_n_72 : STD_LOGIC;
  signal IRrg_n_73 : STD_LOGIC;
  signal Instruction_OBUF : STD_LOGIC_VECTOR ( 30 downto 9 );
  signal MArg_n_0 : STD_LOGIC;
  signal MArg_n_1 : STD_LOGIC;
  signal MArg_n_2 : STD_LOGIC;
  signal MArg_n_3 : STD_LOGIC;
  signal MArg_n_4 : STD_LOGIC;
  signal PC_OBUF : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \PC__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal PC_n_0 : STD_LOGIC;
  signal PC_n_1 : STD_LOGIC;
  signal PC_n_14 : STD_LOGIC;
  signal PC_n_15 : STD_LOGIC;
  signal PC_n_16 : STD_LOGIC;
  signal PC_n_17 : STD_LOGIC;
  signal PC_n_18 : STD_LOGIC;
  signal PC_n_19 : STD_LOGIC;
  signal PC_n_2 : STD_LOGIC;
  signal PC_n_20 : STD_LOGIC;
  signal PC_n_21 : STD_LOGIC;
  signal PC_n_22 : STD_LOGIC;
  signal PC_n_23 : STD_LOGIC;
  signal PC_n_24 : STD_LOGIC;
  signal PC_n_25 : STD_LOGIC;
  signal PC_n_26 : STD_LOGIC;
  signal PC_n_27 : STD_LOGIC;
  signal PC_n_28 : STD_LOGIC;
  signal PC_n_29 : STD_LOGIC;
  signal PC_n_3 : STD_LOGIC;
  signal PC_n_30 : STD_LOGIC;
  signal PC_n_31 : STD_LOGIC;
  signal PC_n_32 : STD_LOGIC;
  signal PC_n_33 : STD_LOGIC;
  signal PC_n_34 : STD_LOGIC;
  signal PC_n_35 : STD_LOGIC;
  signal PC_n_36 : STD_LOGIC;
  signal PC_n_37 : STD_LOGIC;
  signal PC_n_38 : STD_LOGIC;
  signal PC_n_39 : STD_LOGIC;
  signal PC_n_4 : STD_LOGIC;
  signal PC_n_40 : STD_LOGIC;
  signal PC_n_41 : STD_LOGIC;
  signal PC_n_42 : STD_LOGIC;
  signal PC_n_43 : STD_LOGIC;
  signal PC_n_44 : STD_LOGIC;
  signal PC_n_5 : STD_LOGIC;
  signal PC_n_6 : STD_LOGIC;
  signal PC_n_7 : STD_LOGIC;
  signal PCp4rg_n_0 : STD_LOGIC;
  signal PCp4rg_n_1 : STD_LOGIC;
  signal PCp4rg_n_10 : STD_LOGIC;
  signal PCp4rg_n_11 : STD_LOGIC;
  signal PCp4rg_n_12 : STD_LOGIC;
  signal PCp4rg_n_13 : STD_LOGIC;
  signal PCp4rg_n_14 : STD_LOGIC;
  signal PCp4rg_n_15 : STD_LOGIC;
  signal PCp4rg_n_16 : STD_LOGIC;
  signal PCp4rg_n_17 : STD_LOGIC;
  signal PCp4rg_n_18 : STD_LOGIC;
  signal PCp4rg_n_19 : STD_LOGIC;
  signal PCp4rg_n_2 : STD_LOGIC;
  signal PCp4rg_n_20 : STD_LOGIC;
  signal PCp4rg_n_21 : STD_LOGIC;
  signal PCp4rg_n_22 : STD_LOGIC;
  signal PCp4rg_n_23 : STD_LOGIC;
  signal PCp4rg_n_24 : STD_LOGIC;
  signal PCp4rg_n_25 : STD_LOGIC;
  signal PCp4rg_n_26 : STD_LOGIC;
  signal PCp4rg_n_27 : STD_LOGIC;
  signal PCp4rg_n_28 : STD_LOGIC;
  signal PCp4rg_n_29 : STD_LOGIC;
  signal PCp4rg_n_3 : STD_LOGIC;
  signal PCp4rg_n_30 : STD_LOGIC;
  signal PCp4rg_n_31 : STD_LOGIC;
  signal PCp4rg_n_32 : STD_LOGIC;
  signal PCp4rg_n_4 : STD_LOGIC;
  signal PCp4rg_n_5 : STD_LOGIC;
  signal PCp4rg_n_6 : STD_LOGIC;
  signal PCp4rg_n_7 : STD_LOGIC;
  signal PCp4rg_n_8 : STD_LOGIC;
  signal PCp4rg_n_9 : STD_LOGIC;
  signal R15 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal RA1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RA2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \ROM[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal SrcA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Srg_n_0 : STD_LOGIC;
  signal Srg_n_1 : STD_LOGIC;
  signal Srg_n_10 : STD_LOGIC;
  signal Srg_n_11 : STD_LOGIC;
  signal Srg_n_12 : STD_LOGIC;
  signal Srg_n_13 : STD_LOGIC;
  signal Srg_n_14 : STD_LOGIC;
  signal Srg_n_15 : STD_LOGIC;
  signal Srg_n_16 : STD_LOGIC;
  signal Srg_n_17 : STD_LOGIC;
  signal Srg_n_18 : STD_LOGIC;
  signal Srg_n_19 : STD_LOGIC;
  signal Srg_n_2 : STD_LOGIC;
  signal Srg_n_20 : STD_LOGIC;
  signal Srg_n_21 : STD_LOGIC;
  signal Srg_n_22 : STD_LOGIC;
  signal Srg_n_23 : STD_LOGIC;
  signal Srg_n_24 : STD_LOGIC;
  signal Srg_n_25 : STD_LOGIC;
  signal Srg_n_26 : STD_LOGIC;
  signal Srg_n_27 : STD_LOGIC;
  signal Srg_n_28 : STD_LOGIC;
  signal Srg_n_29 : STD_LOGIC;
  signal Srg_n_3 : STD_LOGIC;
  signal Srg_n_30 : STD_LOGIC;
  signal Srg_n_31 : STD_LOGIC;
  signal Srg_n_4 : STD_LOGIC;
  signal Srg_n_5 : STD_LOGIC;
  signal Srg_n_6 : STD_LOGIC;
  signal Srg_n_7 : STD_LOGIC;
  signal Srg_n_8 : STD_LOGIC;
  signal Srg_n_9 : STD_LOGIC;
  signal V : STD_LOGIC;
  signal WA : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal WDrg_n_0 : STD_LOGIC;
  signal WDrg_n_1 : STD_LOGIC;
  signal WDrg_n_10 : STD_LOGIC;
  signal WDrg_n_11 : STD_LOGIC;
  signal WDrg_n_12 : STD_LOGIC;
  signal WDrg_n_13 : STD_LOGIC;
  signal WDrg_n_14 : STD_LOGIC;
  signal WDrg_n_15 : STD_LOGIC;
  signal WDrg_n_16 : STD_LOGIC;
  signal WDrg_n_17 : STD_LOGIC;
  signal WDrg_n_18 : STD_LOGIC;
  signal WDrg_n_19 : STD_LOGIC;
  signal WDrg_n_2 : STD_LOGIC;
  signal WDrg_n_20 : STD_LOGIC;
  signal WDrg_n_21 : STD_LOGIC;
  signal WDrg_n_22 : STD_LOGIC;
  signal WDrg_n_23 : STD_LOGIC;
  signal WDrg_n_24 : STD_LOGIC;
  signal WDrg_n_25 : STD_LOGIC;
  signal WDrg_n_26 : STD_LOGIC;
  signal WDrg_n_27 : STD_LOGIC;
  signal WDrg_n_28 : STD_LOGIC;
  signal WDrg_n_29 : STD_LOGIC;
  signal WDrg_n_3 : STD_LOGIC;
  signal WDrg_n_30 : STD_LOGIC;
  signal WDrg_n_31 : STD_LOGIC;
  signal WDrg_n_4 : STD_LOGIC;
  signal WDrg_n_5 : STD_LOGIC;
  signal WDrg_n_6 : STD_LOGIC;
  signal WDrg_n_7 : STD_LOGIC;
  signal WDrg_n_8 : STD_LOGIC;
  signal WDrg_n_9 : STD_LOGIC;
  signal WriteData_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Z : STD_LOGIC;
  signal d_in : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  ALUResult_OBUF(31 downto 0) <= \^aluresult_obuf\(31 downto 0);
ALUblock: entity work.ALU
     port map (
      \ALUResult_OBUF[12]_inst_i_3\(3) => IRrg_n_195,
      \ALUResult_OBUF[12]_inst_i_3\(2) => IRrg_n_196,
      \ALUResult_OBUF[12]_inst_i_3\(1) => IRrg_n_197,
      \ALUResult_OBUF[12]_inst_i_3\(0) => IRrg_n_198,
      \ALUResult_OBUF[16]_inst_i_3\(3) => IRrg_n_199,
      \ALUResult_OBUF[16]_inst_i_3\(2) => IRrg_n_200,
      \ALUResult_OBUF[16]_inst_i_3\(1) => IRrg_n_201,
      \ALUResult_OBUF[16]_inst_i_3\(0) => IRrg_n_202,
      \ALUResult_OBUF[20]_inst_i_3\(3) => IRrg_n_203,
      \ALUResult_OBUF[20]_inst_i_3\(2) => IRrg_n_204,
      \ALUResult_OBUF[20]_inst_i_3\(1) => IRrg_n_205,
      \ALUResult_OBUF[20]_inst_i_3\(0) => IRrg_n_206,
      \ALUResult_OBUF[24]_inst_i_3\(3) => IRrg_n_207,
      \ALUResult_OBUF[24]_inst_i_3\(2) => IRrg_n_208,
      \ALUResult_OBUF[24]_inst_i_3\(1) => IRrg_n_209,
      \ALUResult_OBUF[24]_inst_i_3\(0) => IRrg_n_210,
      \ALUResult_OBUF[4]_inst_i_3\(3) => IRrg_n_187,
      \ALUResult_OBUF[4]_inst_i_3\(2) => IRrg_n_188,
      \ALUResult_OBUF[4]_inst_i_3\(1) => IRrg_n_189,
      \ALUResult_OBUF[4]_inst_i_3\(0) => IRrg_n_190,
      \ALUResult_OBUF[8]_inst_i_3\(3) => IRrg_n_191,
      \ALUResult_OBUF[8]_inst_i_3\(2) => IRrg_n_192,
      \ALUResult_OBUF[8]_inst_i_3\(1) => IRrg_n_193,
      \ALUResult_OBUF[8]_inst_i_3\(0) => IRrg_n_194,
      CO(0) => ALUblock_n_32,
      DI(0) => Arg_n_0,
      S(3) => IRrg_n_183,
      S(2) => IRrg_n_184,
      S(1) => IRrg_n_185,
      S(0) => IRrg_n_186,
      S_0(31 downto 0) => S(31 downto 0),
      d_out0_out(30 downto 0) => SrcA(30 downto 0),
      \d_out_reg[0]\(3) => IRrg_n_211,
      \d_out_reg[0]\(2) => IRrg_n_212,
      \d_out_reg[0]\(1) => IRrg_n_213,
      \d_out_reg[0]\(0) => IRrg_n_214
    );
Arg: entity work.Rg
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CO(0) => Arg_n_33,
      D(31 downto 0) => d_in(31 downto 0),
      DI(0) => Arg_n_0,
      Q(31 downto 0) => SrcA(31 downto 0),
      RESET_IBUF => RESET_IBUF,
      \d_out_reg[0]_0\(0) => ALUblock_n_32
    );
Brg: entity work.Rg_0
     port map (
      \ALUResult_OBUF[0]_inst_i_4\ => IRrg_n_145,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(31) => IRrg_n_215,
      D(30) => IRrg_n_216,
      D(29) => IRrg_n_217,
      D(28) => IRrg_n_218,
      D(27) => IRrg_n_219,
      D(26) => IRrg_n_220,
      D(25) => IRrg_n_221,
      D(24) => IRrg_n_222,
      D(23) => IRrg_n_223,
      D(22) => IRrg_n_224,
      D(21) => IRrg_n_225,
      D(20) => IRrg_n_226,
      D(19) => IRrg_n_227,
      D(18) => IRrg_n_228,
      D(17) => IRrg_n_229,
      D(16) => IRrg_n_230,
      D(15) => IRrg_n_231,
      D(14) => IRrg_n_232,
      D(13) => IRrg_n_233,
      D(12) => IRrg_n_234,
      D(11) => IRrg_n_235,
      D(10) => IRrg_n_236,
      D(9) => IRrg_n_237,
      D(8) => IRrg_n_238,
      D(7) => IRrg_n_239,
      D(6) => IRrg_n_240,
      D(5) => IRrg_n_241,
      D(4) => IRrg_n_242,
      D(3) => IRrg_n_243,
      D(2) => IRrg_n_244,
      D(1) => IRrg_n_245,
      D(0) => IRrg_n_246,
      Instruction_OBUF(0) => Instruction_OBUF(9),
      Q(1) => IMrg_n_1,
      Q(0) => IMrg_n_23,
      RESET_IBUF => RESET_IBUF,
      WriteData_OBUF(31 downto 0) => WriteData_OBUF(31 downto 0),
      d_out(31 downto 0) => d_out(31 downto 0),
      \d_out_reg[30]_rep_0\ => Brg_n_0
    );
CPSR: entity work.\Rg__parameterized1\
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(3) => \^aluresult_obuf\(31),
      D(2) => Z,
      D(1) => C,
      D(0) => V,
      Instruction_OBUF(2 downto 0) => Instruction_OBUF(30 downto 28),
      Q(3 downto 0) => \CPSR__0\(3 downto 0),
      RESET_IBUF => RESET_IBUF,
      \d_out_reg[0]_0\(0) => \d_out_reg[0]\(0),
      \d_out_reg[1]_0\ => CPSR_n_0
    );
DataMemory: entity work.RAM
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      DOADO(15) => DataMemory_n_0,
      DOADO(14) => DataMemory_n_1,
      DOADO(13) => DataMemory_n_2,
      DOADO(12) => DataMemory_n_3,
      DOADO(11) => DataMemory_n_4,
      DOADO(10) => DataMemory_n_5,
      DOADO(9) => DataMemory_n_6,
      DOADO(8) => DataMemory_n_7,
      DOADO(7) => DataMemory_n_8,
      DOADO(6) => DataMemory_n_9,
      DOADO(5) => DataMemory_n_10,
      DOADO(4) => DataMemory_n_11,
      DOADO(3) => DataMemory_n_12,
      DOADO(2) => DataMemory_n_13,
      DOADO(1) => DataMemory_n_14,
      DOADO(0) => DataMemory_n_15,
      DOBDO(13) => DataMemory_n_16,
      DOBDO(12) => DataMemory_n_17,
      DOBDO(11) => DataMemory_n_18,
      DOBDO(10) => DataMemory_n_19,
      DOBDO(9) => DataMemory_n_20,
      DOBDO(8) => DataMemory_n_21,
      DOBDO(7) => DataMemory_n_22,
      DOBDO(6) => DataMemory_n_23,
      DOBDO(5) => DataMemory_n_24,
      DOBDO(4) => DataMemory_n_25,
      DOBDO(3) => DataMemory_n_26,
      DOBDO(2) => DataMemory_n_27,
      DOBDO(1) => DataMemory_n_28,
      DOBDO(0) => DataMemory_n_29,
      DOPADOP(1) => DataMemory_n_30,
      DOPADOP(0) => DataMemory_n_31,
      Q(4) => MArg_n_0,
      Q(3) => MArg_n_1,
      Q(2) => MArg_n_2,
      Q(1) => MArg_n_3,
      Q(0) => MArg_n_4,
      RAM_reg_0(31) => WDrg_n_0,
      RAM_reg_0(30) => WDrg_n_1,
      RAM_reg_0(29) => WDrg_n_2,
      RAM_reg_0(28) => WDrg_n_3,
      RAM_reg_0(27) => WDrg_n_4,
      RAM_reg_0(26) => WDrg_n_5,
      RAM_reg_0(25) => WDrg_n_6,
      RAM_reg_0(24) => WDrg_n_7,
      RAM_reg_0(23) => WDrg_n_8,
      RAM_reg_0(22) => WDrg_n_9,
      RAM_reg_0(21) => WDrg_n_10,
      RAM_reg_0(20) => WDrg_n_11,
      RAM_reg_0(19) => WDrg_n_12,
      RAM_reg_0(18) => WDrg_n_13,
      RAM_reg_0(17) => WDrg_n_14,
      RAM_reg_0(16) => WDrg_n_15,
      RAM_reg_0(15) => WDrg_n_16,
      RAM_reg_0(14) => WDrg_n_17,
      RAM_reg_0(13) => WDrg_n_18,
      RAM_reg_0(12) => WDrg_n_19,
      RAM_reg_0(11) => WDrg_n_20,
      RAM_reg_0(10) => WDrg_n_21,
      RAM_reg_0(9) => WDrg_n_22,
      RAM_reg_0(8) => WDrg_n_23,
      RAM_reg_0(7) => WDrg_n_24,
      RAM_reg_0(6) => WDrg_n_25,
      RAM_reg_0(5) => WDrg_n_26,
      RAM_reg_0(4) => WDrg_n_27,
      RAM_reg_0(3) => WDrg_n_28,
      RAM_reg_0(2) => WDrg_n_29,
      RAM_reg_0(1) => WDrg_n_30,
      RAM_reg_0(0) => WDrg_n_31,
      RESET_IBUF => RESET_IBUF,
      WEA(0) => WEA(0)
    );
IMrg: entity work.Rg_1
     port map (
      \ALUResult_OBUF[30]_inst_i_5\ => IRrg_n_145,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(23) => IRrg_n_157,
      D(22) => IRrg_n_158,
      D(21) => IRrg_n_159,
      D(20) => IRrg_n_160,
      D(19) => IRrg_n_161,
      D(18) => IRrg_n_162,
      D(17) => IRrg_n_163,
      D(16) => IRrg_n_164,
      D(15) => IRrg_n_165,
      D(14) => IRrg_n_166,
      D(13) => IRrg_n_167,
      D(12) => IRrg_n_168,
      D(11) => IRrg_n_169,
      D(10) => IRrg_n_170,
      D(9) => IRrg_n_171,
      D(8) => IRrg_n_172,
      D(7) => IRrg_n_173,
      D(6) => IRrg_n_174,
      D(5) => IRrg_n_175,
      D(4) => IRrg_n_176,
      D(3) => IRrg_n_177,
      D(2) => IRrg_n_178,
      D(1) => IRrg_n_179,
      D(0) => IRrg_n_180,
      Instruction_OBUF(0) => Instruction_OBUF(9),
      Q(24) => IMrg_n_1,
      Q(23) => IMrg_n_2,
      Q(22) => IMrg_n_3,
      Q(21) => IMrg_n_4,
      Q(20) => IMrg_n_5,
      Q(19) => IMrg_n_6,
      Q(18) => IMrg_n_7,
      Q(17) => IMrg_n_8,
      Q(16) => IMrg_n_9,
      Q(15) => IMrg_n_10,
      Q(14) => IMrg_n_11,
      Q(13) => IMrg_n_12,
      Q(12) => IMrg_n_13,
      Q(11) => IMrg_n_14,
      Q(10) => IMrg_n_15,
      Q(9) => IMrg_n_16,
      Q(8) => IMrg_n_17,
      Q(7) => IMrg_n_18,
      Q(6) => IMrg_n_19,
      Q(5) => IMrg_n_20,
      Q(4) => IMrg_n_21,
      Q(3) => IMrg_n_22,
      Q(2) => IMrg_n_23,
      Q(1) => IMrg_n_24,
      Q(0) => IMrg_n_25,
      RESET_IBUF => RESET_IBUF,
      WriteData_OBUF(1) => WriteData_OBUF(29),
      WriteData_OBUF(0) => WriteData_OBUF(1),
      \d_out_reg[1]_0\ => IMrg_n_0
    );
IRrg: entity work.Rg_2
     port map (
      ADDRC(3 downto 0) => RA1(3 downto 0),
      \ALUResult_OBUF[30]_inst_i_2_0\ => IMrg_n_0,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CO(0) => Arg_n_33,
      D(31) => IRrg_n_42,
      D(30) => IRrg_n_43,
      D(29) => IRrg_n_44,
      D(28) => IRrg_n_45,
      D(27) => IRrg_n_46,
      D(26) => IRrg_n_47,
      D(25) => IRrg_n_48,
      D(24) => IRrg_n_49,
      D(23) => IRrg_n_50,
      D(22) => IRrg_n_51,
      D(21) => IRrg_n_52,
      D(20) => IRrg_n_53,
      D(19) => IRrg_n_54,
      D(18) => IRrg_n_55,
      D(17) => IRrg_n_56,
      D(16) => IRrg_n_57,
      D(15) => IRrg_n_58,
      D(14) => IRrg_n_59,
      D(13) => IRrg_n_60,
      D(12) => IRrg_n_61,
      D(11) => IRrg_n_62,
      D(10) => IRrg_n_63,
      D(9) => IRrg_n_64,
      D(8) => IRrg_n_65,
      D(7) => IRrg_n_66,
      D(6) => IRrg_n_67,
      D(5) => IRrg_n_68,
      D(4) => IRrg_n_69,
      D(3) => IRrg_n_70,
      D(2) => IRrg_n_71,
      D(1) => IRrg_n_72,
      D(0) => IRrg_n_73,
      DATA_IN(31 downto 0) => DATA_IN(31 downto 0),
      DATA_OUT2(31 downto 0) => DATA_OUT2(31 downto 0),
      DOADO(15) => DataMemory_n_0,
      DOADO(14) => DataMemory_n_1,
      DOADO(13) => DataMemory_n_2,
      DOADO(12) => DataMemory_n_3,
      DOADO(11) => DataMemory_n_4,
      DOADO(10) => DataMemory_n_5,
      DOADO(9) => DataMemory_n_6,
      DOADO(8) => DataMemory_n_7,
      DOADO(7) => DataMemory_n_8,
      DOADO(6) => DataMemory_n_9,
      DOADO(5) => DataMemory_n_10,
      DOADO(4) => DataMemory_n_11,
      DOADO(3) => DataMemory_n_12,
      DOADO(2) => DataMemory_n_13,
      DOADO(1) => DataMemory_n_14,
      DOADO(0) => DataMemory_n_15,
      DOBDO(13) => DataMemory_n_16,
      DOBDO(12) => DataMemory_n_17,
      DOBDO(11) => DataMemory_n_18,
      DOBDO(10) => DataMemory_n_19,
      DOBDO(9) => DataMemory_n_20,
      DOBDO(8) => DataMemory_n_21,
      DOBDO(7) => DataMemory_n_22,
      DOBDO(6) => DataMemory_n_23,
      DOBDO(5) => DataMemory_n_24,
      DOBDO(4) => DataMemory_n_25,
      DOBDO(3) => DataMemory_n_26,
      DOBDO(2) => DataMemory_n_27,
      DOBDO(1) => DataMemory_n_28,
      DOBDO(0) => DataMemory_n_29,
      DOPADOP(1) => DataMemory_n_30,
      DOPADOP(0) => DataMemory_n_31,
      \FSM_sequential_current_state[0]_i_3\ => CPSR_n_0,
      \FSM_sequential_current_state[2]_i_4_0\(3 downto 0) => \CPSR__0\(3 downto 0),
      \FSM_sequential_current_state_reg[2]\(2 downto 0) => Q(2 downto 0),
      \FSM_sequential_current_state_reg[3]\ => \FSM_sequential_current_state_reg[3]\,
      IRWrite => IRWrite,
      Q(31) => PCp4rg_n_4,
      Q(30) => PCp4rg_n_5,
      Q(29) => PCp4rg_n_6,
      Q(28) => PCp4rg_n_7,
      Q(27) => PCp4rg_n_8,
      Q(26) => PCp4rg_n_9,
      Q(25) => PCp4rg_n_10,
      Q(24) => PCp4rg_n_11,
      Q(23) => PCp4rg_n_12,
      Q(22) => PCp4rg_n_13,
      Q(21) => PCp4rg_n_14,
      Q(20) => PCp4rg_n_15,
      Q(19) => PCp4rg_n_16,
      Q(18) => PCp4rg_n_17,
      Q(17) => PCp4rg_n_18,
      Q(16) => PCp4rg_n_19,
      Q(15) => PCp4rg_n_20,
      Q(14) => PCp4rg_n_21,
      Q(13) => PCp4rg_n_22,
      Q(12) => PCp4rg_n_23,
      Q(11) => PCp4rg_n_24,
      Q(10) => PCp4rg_n_25,
      Q(9) => PCp4rg_n_26,
      Q(8) => PCp4rg_n_27,
      Q(7) => PCp4rg_n_28,
      Q(6) => PCp4rg_n_29,
      Q(5) => PCp4rg_n_30,
      Q(4) => PCp4rg_n_0,
      Q(3) => PCp4rg_n_1,
      Q(2) => PCp4rg_n_31,
      Q(1) => PCp4rg_n_3,
      Q(0) => PCp4rg_n_32,
      R15(30 downto 0) => R15(31 downto 1),
      RA2(3 downto 0) => RA2(3 downto 0),
      RESET_IBUF => RESET_IBUF,
      Result_OBUF(31 downto 0) => Result_OBUF(31 downto 0),
      S(3) => IRrg_n_183,
      S(2) => IRrg_n_184,
      S(1) => IRrg_n_185,
      S(0) => IRrg_n_186,
      S_0(31 downto 0) => S(31 downto 0),
      WA(3 downto 0) => WA(3 downto 0),
      WriteData_OBUF(31 downto 0) => WriteData_OBUF(31 downto 0),
      \d_out[2]_i_3_0\(2) => Z,
      \d_out[2]_i_3_0\(1) => C,
      \d_out[2]_i_3_0\(0) => V,
      \d_out_reg[0]_0\ => Brg_n_0,
      \d_out_reg[11]_0\(3) => IRrg_n_191,
      \d_out_reg[11]_0\(2) => IRrg_n_192,
      \d_out_reg[11]_0\(1) => IRrg_n_193,
      \d_out_reg[11]_0\(0) => IRrg_n_194,
      \d_out_reg[11]_rep_0\ => \d_out_reg[11]_rep\,
      \d_out_reg[11]_rep_rep_0\ => \d_out_reg[11]_rep_rep\,
      \d_out_reg[13]_rep_0\ => \d_out_reg[13]_rep\,
      \d_out_reg[13]_rep_1\(31) => IRrg_n_215,
      \d_out_reg[13]_rep_1\(30) => IRrg_n_216,
      \d_out_reg[13]_rep_1\(29) => IRrg_n_217,
      \d_out_reg[13]_rep_1\(28) => IRrg_n_218,
      \d_out_reg[13]_rep_1\(27) => IRrg_n_219,
      \d_out_reg[13]_rep_1\(26) => IRrg_n_220,
      \d_out_reg[13]_rep_1\(25) => IRrg_n_221,
      \d_out_reg[13]_rep_1\(24) => IRrg_n_222,
      \d_out_reg[13]_rep_1\(23) => IRrg_n_223,
      \d_out_reg[13]_rep_1\(22) => IRrg_n_224,
      \d_out_reg[13]_rep_1\(21) => IRrg_n_225,
      \d_out_reg[13]_rep_1\(20) => IRrg_n_226,
      \d_out_reg[13]_rep_1\(19) => IRrg_n_227,
      \d_out_reg[13]_rep_1\(18) => IRrg_n_228,
      \d_out_reg[13]_rep_1\(17) => IRrg_n_229,
      \d_out_reg[13]_rep_1\(16) => IRrg_n_230,
      \d_out_reg[13]_rep_1\(15) => IRrg_n_231,
      \d_out_reg[13]_rep_1\(14) => IRrg_n_232,
      \d_out_reg[13]_rep_1\(13) => IRrg_n_233,
      \d_out_reg[13]_rep_1\(12) => IRrg_n_234,
      \d_out_reg[13]_rep_1\(11) => IRrg_n_235,
      \d_out_reg[13]_rep_1\(10) => IRrg_n_236,
      \d_out_reg[13]_rep_1\(9) => IRrg_n_237,
      \d_out_reg[13]_rep_1\(8) => IRrg_n_238,
      \d_out_reg[13]_rep_1\(7) => IRrg_n_239,
      \d_out_reg[13]_rep_1\(6) => IRrg_n_240,
      \d_out_reg[13]_rep_1\(5) => IRrg_n_241,
      \d_out_reg[13]_rep_1\(4) => IRrg_n_242,
      \d_out_reg[13]_rep_1\(3) => IRrg_n_243,
      \d_out_reg[13]_rep_1\(2) => IRrg_n_244,
      \d_out_reg[13]_rep_1\(1) => IRrg_n_245,
      \d_out_reg[13]_rep_1\(0) => IRrg_n_246,
      \d_out_reg[14]_rep_0\ => \d_out_reg[14]_rep\,
      \d_out_reg[15]_0\(3) => IRrg_n_195,
      \d_out_reg[15]_0\(2) => IRrg_n_196,
      \d_out_reg[15]_0\(1) => IRrg_n_197,
      \d_out_reg[15]_0\(0) => IRrg_n_198,
      \d_out_reg[17]_rep_0\ => IRrg_n_247,
      \d_out_reg[19]_0\(3) => IRrg_n_199,
      \d_out_reg[19]_0\(2) => IRrg_n_200,
      \d_out_reg[19]_0\(1) => IRrg_n_201,
      \d_out_reg[19]_0\(0) => IRrg_n_202,
      \d_out_reg[20]_rep_0\ => \d_out_reg[27]_rep\(0),
      \d_out_reg[21]_rep_0\ => \d_out_reg[21]_rep\,
      \d_out_reg[21]_rep_1\ => \d_out_reg[21]_rep_0\,
      \d_out_reg[23]_0\(3) => IRrg_n_203,
      \d_out_reg[23]_0\(2) => IRrg_n_204,
      \d_out_reg[23]_0\(1) => IRrg_n_205,
      \d_out_reg[23]_0\(0) => IRrg_n_206,
      \d_out_reg[23]_rep_0\(23) => IRrg_n_157,
      \d_out_reg[23]_rep_0\(22) => IRrg_n_158,
      \d_out_reg[23]_rep_0\(21) => IRrg_n_159,
      \d_out_reg[23]_rep_0\(20) => IRrg_n_160,
      \d_out_reg[23]_rep_0\(19) => IRrg_n_161,
      \d_out_reg[23]_rep_0\(18) => IRrg_n_162,
      \d_out_reg[23]_rep_0\(17) => IRrg_n_163,
      \d_out_reg[23]_rep_0\(16) => IRrg_n_164,
      \d_out_reg[23]_rep_0\(15) => IRrg_n_165,
      \d_out_reg[23]_rep_0\(14) => IRrg_n_166,
      \d_out_reg[23]_rep_0\(13) => IRrg_n_167,
      \d_out_reg[23]_rep_0\(12) => IRrg_n_168,
      \d_out_reg[23]_rep_0\(11) => IRrg_n_169,
      \d_out_reg[23]_rep_0\(10) => IRrg_n_170,
      \d_out_reg[23]_rep_0\(9) => IRrg_n_171,
      \d_out_reg[23]_rep_0\(8) => IRrg_n_172,
      \d_out_reg[23]_rep_0\(7) => IRrg_n_173,
      \d_out_reg[23]_rep_0\(6) => IRrg_n_174,
      \d_out_reg[23]_rep_0\(5) => IRrg_n_175,
      \d_out_reg[23]_rep_0\(4) => IRrg_n_176,
      \d_out_reg[23]_rep_0\(3) => IRrg_n_177,
      \d_out_reg[23]_rep_0\(2) => IRrg_n_178,
      \d_out_reg[23]_rep_0\(1) => IRrg_n_179,
      \d_out_reg[23]_rep_0\(0) => IRrg_n_180,
      \d_out_reg[24]_rep_0\ => \d_out_reg[27]_rep\(1),
      \d_out_reg[24]_rep_1\ => \d_out_reg[24]_rep\,
      \d_out_reg[26]_rep_0\ => \d_out_reg[27]_rep\(2),
      \d_out_reg[26]_rep_1\ => IRrg_n_145,
      \d_out_reg[27]_0\(3) => IRrg_n_207,
      \d_out_reg[27]_0\(2) => IRrg_n_208,
      \d_out_reg[27]_0\(1) => IRrg_n_209,
      \d_out_reg[27]_0\(0) => IRrg_n_210,
      \d_out_reg[27]_rep_0\ => \d_out_reg[27]_rep\(3),
      \d_out_reg[28]_0\(24) => IMrg_n_1,
      \d_out_reg[28]_0\(23) => IMrg_n_2,
      \d_out_reg[28]_0\(22) => IMrg_n_3,
      \d_out_reg[28]_0\(21) => IMrg_n_4,
      \d_out_reg[28]_0\(20) => IMrg_n_5,
      \d_out_reg[28]_0\(19) => IMrg_n_6,
      \d_out_reg[28]_0\(18) => IMrg_n_7,
      \d_out_reg[28]_0\(17) => IMrg_n_8,
      \d_out_reg[28]_0\(16) => IMrg_n_9,
      \d_out_reg[28]_0\(15) => IMrg_n_10,
      \d_out_reg[28]_0\(14) => IMrg_n_11,
      \d_out_reg[28]_0\(13) => IMrg_n_12,
      \d_out_reg[28]_0\(12) => IMrg_n_13,
      \d_out_reg[28]_0\(11) => IMrg_n_14,
      \d_out_reg[28]_0\(10) => IMrg_n_15,
      \d_out_reg[28]_0\(9) => IMrg_n_16,
      \d_out_reg[28]_0\(8) => IMrg_n_17,
      \d_out_reg[28]_0\(7) => IMrg_n_18,
      \d_out_reg[28]_0\(6) => IMrg_n_19,
      \d_out_reg[28]_0\(5) => IMrg_n_20,
      \d_out_reg[28]_0\(4) => IMrg_n_21,
      \d_out_reg[28]_0\(3) => IMrg_n_22,
      \d_out_reg[28]_0\(2) => IMrg_n_23,
      \d_out_reg[28]_0\(1) => IMrg_n_24,
      \d_out_reg[28]_0\(0) => IMrg_n_25,
      \d_out_reg[30]_rep_0\(3 downto 1) => Instruction_OBUF(30 downto 28),
      \d_out_reg[30]_rep_0\(0) => Instruction_OBUF(9),
      \d_out_reg[31]_0\(3) => IRrg_n_211,
      \d_out_reg[31]_0\(2) => IRrg_n_212,
      \d_out_reg[31]_0\(1) => IRrg_n_213,
      \d_out_reg[31]_0\(0) => IRrg_n_214,
      \d_out_reg[31]_1\(28 downto 0) => \d_out_reg[31]\(28 downto 0),
      \d_out_reg[31]_2\(31) => Srg_n_0,
      \d_out_reg[31]_2\(30) => Srg_n_1,
      \d_out_reg[31]_2\(29) => Srg_n_2,
      \d_out_reg[31]_2\(28) => Srg_n_3,
      \d_out_reg[31]_2\(27) => Srg_n_4,
      \d_out_reg[31]_2\(26) => Srg_n_5,
      \d_out_reg[31]_2\(25) => Srg_n_6,
      \d_out_reg[31]_2\(24) => Srg_n_7,
      \d_out_reg[31]_2\(23) => Srg_n_8,
      \d_out_reg[31]_2\(22) => Srg_n_9,
      \d_out_reg[31]_2\(21) => Srg_n_10,
      \d_out_reg[31]_2\(20) => Srg_n_11,
      \d_out_reg[31]_2\(19) => Srg_n_12,
      \d_out_reg[31]_2\(18) => Srg_n_13,
      \d_out_reg[31]_2\(17) => Srg_n_14,
      \d_out_reg[31]_2\(16) => Srg_n_15,
      \d_out_reg[31]_2\(15) => Srg_n_16,
      \d_out_reg[31]_2\(14) => Srg_n_17,
      \d_out_reg[31]_2\(13) => Srg_n_18,
      \d_out_reg[31]_2\(12) => Srg_n_19,
      \d_out_reg[31]_2\(11) => Srg_n_20,
      \d_out_reg[31]_2\(10) => Srg_n_21,
      \d_out_reg[31]_2\(9) => Srg_n_22,
      \d_out_reg[31]_2\(8) => Srg_n_23,
      \d_out_reg[31]_2\(7) => Srg_n_24,
      \d_out_reg[31]_2\(6) => Srg_n_25,
      \d_out_reg[31]_2\(5) => Srg_n_26,
      \d_out_reg[31]_2\(4) => Srg_n_27,
      \d_out_reg[31]_2\(3) => Srg_n_28,
      \d_out_reg[31]_2\(2) => Srg_n_29,
      \d_out_reg[31]_2\(1) => Srg_n_30,
      \d_out_reg[31]_2\(0) => Srg_n_31,
      \d_out_reg[31]_3\ => \d_out_reg[31]_0\,
      \d_out_reg[31]_4\ => \d_out_reg[31]_1\,
      \d_out_reg[31]_5\ => \d_out_reg[31]_2\,
      \d_out_reg[31]_6\(31 downto 0) => SrcA(31 downto 0),
      \d_out_reg[31]_7\(28 downto 25) => \ROM[0]_0\(31 downto 28),
      \d_out_reg[31]_7\(24) => PC_n_0,
      \d_out_reg[31]_7\(23 downto 20) => \ROM[0]_0\(26 downto 23),
      \d_out_reg[31]_7\(19) => PC_n_1,
      \d_out_reg[31]_7\(18 downto 17) => \ROM[0]_0\(21 downto 20),
      \d_out_reg[31]_7\(16) => PC_n_2,
      \d_out_reg[31]_7\(15) => PC_n_3,
      \d_out_reg[31]_7\(14) => PC_n_4,
      \d_out_reg[31]_7\(13 downto 9) => \ROM[0]_0\(16 downto 12),
      \d_out_reg[31]_7\(8) => PC_n_5,
      \d_out_reg[31]_7\(7 downto 6) => \ROM[0]_0\(8 downto 7),
      \d_out_reg[31]_7\(5) => PC_n_6,
      \d_out_reg[31]_7\(4) => PC_n_7,
      \d_out_reg[31]_7\(3 downto 0) => \ROM[0]_0\(3 downto 0),
      \d_out_reg[31]_rep_0\ => \d_out_reg[31]_rep\,
      \d_out_reg[7]_0\(3) => IRrg_n_187,
      \d_out_reg[7]_0\(2) => IRrg_n_188,
      \d_out_reg[7]_0\(1) => IRrg_n_189,
      \d_out_reg[7]_0\(0) => IRrg_n_190,
      \d_out_reg[7]_rep_0\ => \d_out_reg[7]_rep\,
      \d_out_reg[7]_rep_rep_0\(31 downto 0) => \^aluresult_obuf\(31 downto 0)
    );
InstructionMemory: entity work.ROM
     port map (
      PC_OBUF(5 downto 0) => PC_OBUF(5 downto 0),
      \d_out_reg[7]_rep\(20 downto 17) => \ROM[0]_0\(31 downto 28),
      \d_out_reg[7]_rep\(16 downto 13) => \ROM[0]_0\(26 downto 23),
      \d_out_reg[7]_rep\(12 downto 11) => \ROM[0]_0\(21 downto 20),
      \d_out_reg[7]_rep\(10 downto 6) => \ROM[0]_0\(16 downto 12),
      \d_out_reg[7]_rep\(5 downto 4) => \ROM[0]_0\(8 downto 7),
      \d_out_reg[7]_rep\(3 downto 0) => \ROM[0]_0\(3 downto 0)
    );
MArg: entity work.\Rg__parameterized4\
     port map (
      ALUResult_OBUF(4 downto 0) => \^aluresult_obuf\(6 downto 2),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      E(0) => E(0),
      Q(4) => MArg_n_0,
      Q(3) => MArg_n_1,
      Q(2) => MArg_n_2,
      Q(1) => MArg_n_3,
      Q(0) => MArg_n_4,
      RESET_IBUF => RESET_IBUF
    );
PC: entity work.Rg_3
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(31) => PC_n_14,
      D(30) => PC_n_15,
      D(29) => PC_n_16,
      D(28) => PC_n_17,
      D(27) => PC_n_18,
      D(26) => PC_n_19,
      D(25) => PC_n_20,
      D(24) => PC_n_21,
      D(23) => PC_n_22,
      D(22) => PC_n_23,
      D(21) => PC_n_24,
      D(20) => PC_n_25,
      D(19) => PC_n_26,
      D(18) => PC_n_27,
      D(17) => PC_n_28,
      D(16) => PC_n_29,
      D(15) => PC_n_30,
      D(14) => PC_n_31,
      D(13) => PC_n_32,
      D(12) => PC_n_33,
      D(11) => PC_n_34,
      D(10) => PC_n_35,
      D(9) => PC_n_36,
      D(8) => PC_n_37,
      D(7) => PC_n_38,
      D(6) => PC_n_39,
      D(5) => PC_n_40,
      D(4) => PC_n_41,
      D(3) => PC_n_42,
      D(2) => PC_n_43,
      D(1) => PC_n_44,
      D(0) => \PC__0\(0),
      PCWrite => PCWrite,
      PC_OBUF(5 downto 0) => PC_OBUF(5 downto 0),
      RESET_IBUF => RESET_IBUF,
      \d_out_reg[31]_0\(31) => IRrg_n_42,
      \d_out_reg[31]_0\(30) => IRrg_n_43,
      \d_out_reg[31]_0\(29) => IRrg_n_44,
      \d_out_reg[31]_0\(28) => IRrg_n_45,
      \d_out_reg[31]_0\(27) => IRrg_n_46,
      \d_out_reg[31]_0\(26) => IRrg_n_47,
      \d_out_reg[31]_0\(25) => IRrg_n_48,
      \d_out_reg[31]_0\(24) => IRrg_n_49,
      \d_out_reg[31]_0\(23) => IRrg_n_50,
      \d_out_reg[31]_0\(22) => IRrg_n_51,
      \d_out_reg[31]_0\(21) => IRrg_n_52,
      \d_out_reg[31]_0\(20) => IRrg_n_53,
      \d_out_reg[31]_0\(19) => IRrg_n_54,
      \d_out_reg[31]_0\(18) => IRrg_n_55,
      \d_out_reg[31]_0\(17) => IRrg_n_56,
      \d_out_reg[31]_0\(16) => IRrg_n_57,
      \d_out_reg[31]_0\(15) => IRrg_n_58,
      \d_out_reg[31]_0\(14) => IRrg_n_59,
      \d_out_reg[31]_0\(13) => IRrg_n_60,
      \d_out_reg[31]_0\(12) => IRrg_n_61,
      \d_out_reg[31]_0\(11) => IRrg_n_62,
      \d_out_reg[31]_0\(10) => IRrg_n_63,
      \d_out_reg[31]_0\(9) => IRrg_n_64,
      \d_out_reg[31]_0\(8) => IRrg_n_65,
      \d_out_reg[31]_0\(7) => IRrg_n_66,
      \d_out_reg[31]_0\(6) => IRrg_n_67,
      \d_out_reg[31]_0\(5) => IRrg_n_68,
      \d_out_reg[31]_0\(4) => IRrg_n_69,
      \d_out_reg[31]_0\(3) => IRrg_n_70,
      \d_out_reg[31]_0\(2) => IRrg_n_71,
      \d_out_reg[31]_0\(1) => IRrg_n_72,
      \d_out_reg[31]_0\(0) => IRrg_n_73,
      \d_out_reg[5]_rep_0\(7) => PC_n_0,
      \d_out_reg[5]_rep_0\(6) => PC_n_1,
      \d_out_reg[5]_rep_0\(5) => PC_n_2,
      \d_out_reg[5]_rep_0\(4) => PC_n_3,
      \d_out_reg[5]_rep_0\(3) => PC_n_4,
      \d_out_reg[5]_rep_0\(2) => PC_n_5,
      \d_out_reg[5]_rep_0\(1) => PC_n_6,
      \d_out_reg[5]_rep_0\(0) => PC_n_7,
      \d_out_reg[7]_0\(5 downto 0) => \d_out_reg[7]\(5 downto 0)
    );
PCp4rg: entity work.Rg_4
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(3 downto 1) => d_in(31 downto 29),
      D(0) => d_in(0),
      DATA_OUT1(3 downto 1) => DATA_OUT1(31 downto 29),
      DATA_OUT1(0) => DATA_OUT1(0),
      IRWrite => IRWrite,
      Q(28) => PCp4rg_n_4,
      Q(27) => PCp4rg_n_5,
      Q(26) => PCp4rg_n_6,
      Q(25) => PCp4rg_n_7,
      Q(24) => PCp4rg_n_8,
      Q(23) => PCp4rg_n_9,
      Q(22) => PCp4rg_n_10,
      Q(21) => PCp4rg_n_11,
      Q(20) => PCp4rg_n_12,
      Q(19) => PCp4rg_n_13,
      Q(18) => PCp4rg_n_14,
      Q(17) => PCp4rg_n_15,
      Q(16) => PCp4rg_n_16,
      Q(15) => PCp4rg_n_17,
      Q(14) => PCp4rg_n_18,
      Q(13) => PCp4rg_n_19,
      Q(12) => PCp4rg_n_20,
      Q(11) => PCp4rg_n_21,
      Q(10) => PCp4rg_n_22,
      Q(9) => PCp4rg_n_23,
      Q(8) => PCp4rg_n_24,
      Q(7) => PCp4rg_n_25,
      Q(6) => PCp4rg_n_26,
      Q(5) => PCp4rg_n_27,
      Q(4) => PCp4rg_n_28,
      Q(3) => PCp4rg_n_29,
      Q(2) => PCp4rg_n_30,
      Q(1) => PCp4rg_n_31,
      Q(0) => PCp4rg_n_32,
      R15(2 downto 0) => R15(31 downto 29),
      RESET_IBUF => RESET_IBUF,
      S(3) => PCp4rg_n_0,
      S(2) => PCp4rg_n_1,
      S(1) => PCp4rg_n_2,
      S(0) => PCp4rg_n_3,
      \d_out_reg[31]_0\ => IRrg_n_247,
      \d_out_reg[31]_1\(31) => PC_n_14,
      \d_out_reg[31]_1\(30) => PC_n_15,
      \d_out_reg[31]_1\(29) => PC_n_16,
      \d_out_reg[31]_1\(28) => PC_n_17,
      \d_out_reg[31]_1\(27) => PC_n_18,
      \d_out_reg[31]_1\(26) => PC_n_19,
      \d_out_reg[31]_1\(25) => PC_n_20,
      \d_out_reg[31]_1\(24) => PC_n_21,
      \d_out_reg[31]_1\(23) => PC_n_22,
      \d_out_reg[31]_1\(22) => PC_n_23,
      \d_out_reg[31]_1\(21) => PC_n_24,
      \d_out_reg[31]_1\(20) => PC_n_25,
      \d_out_reg[31]_1\(19) => PC_n_26,
      \d_out_reg[31]_1\(18) => PC_n_27,
      \d_out_reg[31]_1\(17) => PC_n_28,
      \d_out_reg[31]_1\(16) => PC_n_29,
      \d_out_reg[31]_1\(15) => PC_n_30,
      \d_out_reg[31]_1\(14) => PC_n_31,
      \d_out_reg[31]_1\(13) => PC_n_32,
      \d_out_reg[31]_1\(12) => PC_n_33,
      \d_out_reg[31]_1\(11) => PC_n_34,
      \d_out_reg[31]_1\(10) => PC_n_35,
      \d_out_reg[31]_1\(9) => PC_n_36,
      \d_out_reg[31]_1\(8) => PC_n_37,
      \d_out_reg[31]_1\(7) => PC_n_38,
      \d_out_reg[31]_1\(6) => PC_n_39,
      \d_out_reg[31]_1\(5) => PC_n_40,
      \d_out_reg[31]_1\(4) => PC_n_41,
      \d_out_reg[31]_1\(3) => PC_n_42,
      \d_out_reg[31]_1\(2) => PC_n_43,
      \d_out_reg[31]_1\(1) => PC_n_44,
      \d_out_reg[31]_1\(0) => \PC__0\(0)
    );
PCplus8: entity work.adder_p4
     port map (
      D(27 downto 0) => d_in(28 downto 1),
      DATA_OUT1(27 downto 0) => DATA_OUT1(28 downto 1),
      Q(30) => PCp4rg_n_4,
      Q(29) => PCp4rg_n_5,
      Q(28) => PCp4rg_n_6,
      Q(27) => PCp4rg_n_7,
      Q(26) => PCp4rg_n_8,
      Q(25) => PCp4rg_n_9,
      Q(24) => PCp4rg_n_10,
      Q(23) => PCp4rg_n_11,
      Q(22) => PCp4rg_n_12,
      Q(21) => PCp4rg_n_13,
      Q(20) => PCp4rg_n_14,
      Q(19) => PCp4rg_n_15,
      Q(18) => PCp4rg_n_16,
      Q(17) => PCp4rg_n_17,
      Q(16) => PCp4rg_n_18,
      Q(15) => PCp4rg_n_19,
      Q(14) => PCp4rg_n_20,
      Q(13) => PCp4rg_n_21,
      Q(12) => PCp4rg_n_22,
      Q(11) => PCp4rg_n_23,
      Q(10) => PCp4rg_n_24,
      Q(9) => PCp4rg_n_25,
      Q(8) => PCp4rg_n_26,
      Q(7) => PCp4rg_n_27,
      Q(6) => PCp4rg_n_28,
      Q(5) => PCp4rg_n_29,
      Q(4) => PCp4rg_n_30,
      Q(3) => PCp4rg_n_0,
      Q(2) => PCp4rg_n_1,
      Q(1) => PCp4rg_n_31,
      Q(0) => PCp4rg_n_3,
      R15(30 downto 0) => R15(31 downto 1),
      S(0) => PCp4rg_n_2,
      \d_out_reg[28]\ => IRrg_n_247
    );
RegisterFile: entity work.regfile
     port map (
      ADDRC(3 downto 0) => RA1(3 downto 0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      DATA_IN(31 downto 0) => DATA_IN(31 downto 0),
      DATA_OUT1(31 downto 0) => DATA_OUT1(31 downto 0),
      DATA_OUT2(31 downto 0) => DATA_OUT2(31 downto 0),
      RA2(3 downto 0) => RA2(3 downto 0),
      RegWrite => RegWrite,
      WA(3 downto 0) => WA(3 downto 0)
    );
Srg: entity work.Rg_5
     port map (
      ALUResult_OBUF(31 downto 0) => \^aluresult_obuf\(31 downto 0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      Q(31) => Srg_n_0,
      Q(30) => Srg_n_1,
      Q(29) => Srg_n_2,
      Q(28) => Srg_n_3,
      Q(27) => Srg_n_4,
      Q(26) => Srg_n_5,
      Q(25) => Srg_n_6,
      Q(24) => Srg_n_7,
      Q(23) => Srg_n_8,
      Q(22) => Srg_n_9,
      Q(21) => Srg_n_10,
      Q(20) => Srg_n_11,
      Q(19) => Srg_n_12,
      Q(18) => Srg_n_13,
      Q(17) => Srg_n_14,
      Q(16) => Srg_n_15,
      Q(15) => Srg_n_16,
      Q(14) => Srg_n_17,
      Q(13) => Srg_n_18,
      Q(12) => Srg_n_19,
      Q(11) => Srg_n_20,
      Q(10) => Srg_n_21,
      Q(9) => Srg_n_22,
      Q(8) => Srg_n_23,
      Q(7) => Srg_n_24,
      Q(6) => Srg_n_25,
      Q(5) => Srg_n_26,
      Q(4) => Srg_n_27,
      Q(3) => Srg_n_28,
      Q(2) => Srg_n_29,
      Q(1) => Srg_n_30,
      Q(0) => Srg_n_31,
      RESET_IBUF => RESET_IBUF
    );
WDrg: entity work.Rg_6
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(31 downto 0) => WriteData_OBUF(31 downto 0),
      Q(31) => WDrg_n_0,
      Q(30) => WDrg_n_1,
      Q(29) => WDrg_n_2,
      Q(28) => WDrg_n_3,
      Q(27) => WDrg_n_4,
      Q(26) => WDrg_n_5,
      Q(25) => WDrg_n_6,
      Q(24) => WDrg_n_7,
      Q(23) => WDrg_n_8,
      Q(22) => WDrg_n_9,
      Q(21) => WDrg_n_10,
      Q(20) => WDrg_n_11,
      Q(19) => WDrg_n_12,
      Q(18) => WDrg_n_13,
      Q(17) => WDrg_n_14,
      Q(16) => WDrg_n_15,
      Q(15) => WDrg_n_16,
      Q(14) => WDrg_n_17,
      Q(13) => WDrg_n_18,
      Q(12) => WDrg_n_19,
      Q(11) => WDrg_n_20,
      Q(10) => WDrg_n_21,
      Q(9) => WDrg_n_22,
      Q(8) => WDrg_n_23,
      Q(7) => WDrg_n_24,
      Q(6) => WDrg_n_25,
      Q(5) => WDrg_n_26,
      Q(4) => WDrg_n_27,
      Q(3) => WDrg_n_28,
      Q(2) => WDrg_n_29,
      Q(1) => WDrg_n_30,
      Q(0) => WDrg_n_31,
      RESET_IBUF => RESET_IBUF
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Processor is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    PC : out STD_LOGIC_VECTOR ( 5 downto 0 );
    Instruction : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUResult : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WriteData : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Result : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Processor : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Processor : entity is "3099634b";
  attribute POWER_OPT_BRAM_CDC : integer;
  attribute POWER_OPT_BRAM_CDC of Processor : entity is 0;
  attribute POWER_OPT_BRAM_SR_ADDR : integer;
  attribute POWER_OPT_BRAM_SR_ADDR of Processor : entity is 0;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE : integer;
  attribute POWER_OPT_LOOPED_NET_PERCENTAGE of Processor : entity is 0;
end Processor;

architecture STRUCTURE of Processor is
  signal ALUResult_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal ControlUnit_MultiCycle_n_5 : STD_LOGIC;
  signal ControlUnit_MultiCycle_n_6 : STD_LOGIC;
  signal ControlUnit_MultiCycle_n_7 : STD_LOGIC;
  signal DataPath_MultiCycle_n_0 : STD_LOGIC;
  signal DataPath_MultiCycle_n_100 : STD_LOGIC;
  signal DataPath_MultiCycle_n_101 : STD_LOGIC;
  signal DataPath_MultiCycle_n_102 : STD_LOGIC;
  signal DataPath_MultiCycle_n_103 : STD_LOGIC;
  signal DataPath_MultiCycle_n_104 : STD_LOGIC;
  signal DataPath_MultiCycle_n_105 : STD_LOGIC;
  signal DataPath_MultiCycle_n_106 : STD_LOGIC;
  signal DataPath_MultiCycle_n_107 : STD_LOGIC;
  signal DataPath_MultiCycle_n_108 : STD_LOGIC;
  signal DataPath_MultiCycle_n_109 : STD_LOGIC;
  signal DataPath_MultiCycle_n_110 : STD_LOGIC;
  signal DataPath_MultiCycle_n_111 : STD_LOGIC;
  signal DataPath_MultiCycle_n_112 : STD_LOGIC;
  signal DataPath_MultiCycle_n_113 : STD_LOGIC;
  signal DataPath_MultiCycle_n_114 : STD_LOGIC;
  signal DataPath_MultiCycle_n_115 : STD_LOGIC;
  signal DataPath_MultiCycle_n_116 : STD_LOGIC;
  signal DataPath_MultiCycle_n_117 : STD_LOGIC;
  signal DataPath_MultiCycle_n_118 : STD_LOGIC;
  signal DataPath_MultiCycle_n_119 : STD_LOGIC;
  signal DataPath_MultiCycle_n_120 : STD_LOGIC;
  signal DataPath_MultiCycle_n_121 : STD_LOGIC;
  signal DataPath_MultiCycle_n_122 : STD_LOGIC;
  signal DataPath_MultiCycle_n_123 : STD_LOGIC;
  signal DataPath_MultiCycle_n_124 : STD_LOGIC;
  signal DataPath_MultiCycle_n_125 : STD_LOGIC;
  signal DataPath_MultiCycle_n_126 : STD_LOGIC;
  signal DataPath_MultiCycle_n_127 : STD_LOGIC;
  signal DataPath_MultiCycle_n_128 : STD_LOGIC;
  signal DataPath_MultiCycle_n_129 : STD_LOGIC;
  signal DataPath_MultiCycle_n_130 : STD_LOGIC;
  signal DataPath_MultiCycle_n_131 : STD_LOGIC;
  signal DataPath_MultiCycle_n_132 : STD_LOGIC;
  signal DataPath_MultiCycle_n_133 : STD_LOGIC;
  signal DataPath_MultiCycle_n_134 : STD_LOGIC;
  signal DataPath_MultiCycle_n_135 : STD_LOGIC;
  signal DataPath_MultiCycle_n_136 : STD_LOGIC;
  signal DataPath_MultiCycle_n_137 : STD_LOGIC;
  signal DataPath_MultiCycle_n_138 : STD_LOGIC;
  signal DataPath_MultiCycle_n_139 : STD_LOGIC;
  signal DataPath_MultiCycle_n_140 : STD_LOGIC;
  signal DataPath_MultiCycle_n_141 : STD_LOGIC;
  signal DataPath_MultiCycle_n_142 : STD_LOGIC;
  signal DataPath_MultiCycle_n_143 : STD_LOGIC;
  signal DataPath_MultiCycle_n_144 : STD_LOGIC;
  signal DataPath_MultiCycle_n_5 : STD_LOGIC;
  signal DataPath_MultiCycle_n_70 : STD_LOGIC;
  signal DataPath_MultiCycle_n_71 : STD_LOGIC;
  signal DataPath_MultiCycle_n_72 : STD_LOGIC;
  signal DataPath_MultiCycle_n_73 : STD_LOGIC;
  signal DataPath_MultiCycle_n_74 : STD_LOGIC;
  signal DataPath_MultiCycle_n_75 : STD_LOGIC;
  signal DataPath_MultiCycle_n_76 : STD_LOGIC;
  signal DataPath_MultiCycle_n_77 : STD_LOGIC;
  signal DataPath_MultiCycle_n_78 : STD_LOGIC;
  signal DataPath_MultiCycle_n_79 : STD_LOGIC;
  signal DataPath_MultiCycle_n_80 : STD_LOGIC;
  signal DataPath_MultiCycle_n_81 : STD_LOGIC;
  signal DataPath_MultiCycle_n_82 : STD_LOGIC;
  signal DataPath_MultiCycle_n_83 : STD_LOGIC;
  signal DataPath_MultiCycle_n_84 : STD_LOGIC;
  signal DataPath_MultiCycle_n_85 : STD_LOGIC;
  signal DataPath_MultiCycle_n_86 : STD_LOGIC;
  signal DataPath_MultiCycle_n_87 : STD_LOGIC;
  signal DataPath_MultiCycle_n_88 : STD_LOGIC;
  signal DataPath_MultiCycle_n_89 : STD_LOGIC;
  signal DataPath_MultiCycle_n_90 : STD_LOGIC;
  signal DataPath_MultiCycle_n_91 : STD_LOGIC;
  signal DataPath_MultiCycle_n_92 : STD_LOGIC;
  signal DataPath_MultiCycle_n_93 : STD_LOGIC;
  signal DataPath_MultiCycle_n_94 : STD_LOGIC;
  signal DataPath_MultiCycle_n_95 : STD_LOGIC;
  signal DataPath_MultiCycle_n_96 : STD_LOGIC;
  signal DataPath_MultiCycle_n_97 : STD_LOGIC;
  signal DataPath_MultiCycle_n_98 : STD_LOGIC;
  signal DataPath_MultiCycle_n_99 : STD_LOGIC;
  signal FlagsWrite : STD_LOGIC;
  signal IRWrite : STD_LOGIC;
  signal Instruction_OBUF : STD_LOGIC_VECTOR ( 27 downto 20 );
  signal MAWrite : STD_LOGIC;
  signal MemWrite : STD_LOGIC;
  signal PCWrite : STD_LOGIC;
  signal RESET_IBUF : STD_LOGIC;
  signal RegWrite : STD_LOGIC;
  signal Result_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \StateMachineWE/current_state\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute IOB : string;
  attribute IOB of \ALUResult_OBUF[0]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[10]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[11]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[12]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[13]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[14]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[15]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[16]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[17]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[18]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[19]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[1]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[20]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[21]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[22]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[23]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[24]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[25]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[26]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[27]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[28]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[29]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[2]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[30]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[31]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[3]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[4]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[5]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[6]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[7]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[8]_inst\ : label is "TRUE";
  attribute IOB of \ALUResult_OBUF[9]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[0]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[10]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[11]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[12]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[13]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[14]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[15]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[16]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[17]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[18]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[19]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[1]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[20]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[21]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[22]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[23]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[24]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[25]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[26]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[27]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[28]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[29]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[2]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[30]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[31]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[3]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[4]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[5]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[6]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[7]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[8]_inst\ : label is "TRUE";
  attribute IOB of \Instruction_OBUF[9]_inst\ : label is "TRUE";
  attribute IOB of \PC_OBUF[0]_inst\ : label is "TRUE";
  attribute IOB of \PC_OBUF[1]_inst\ : label is "TRUE";
  attribute IOB of \PC_OBUF[2]_inst\ : label is "TRUE";
  attribute IOB of \PC_OBUF[3]_inst\ : label is "TRUE";
  attribute IOB of \PC_OBUF[4]_inst\ : label is "TRUE";
  attribute IOB of \PC_OBUF[5]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[0]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[10]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[11]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[12]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[13]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[14]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[15]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[16]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[17]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[18]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[19]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[1]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[20]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[21]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[22]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[23]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[24]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[25]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[26]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[27]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[28]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[29]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[2]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[30]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[31]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[3]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[4]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[5]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[6]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[7]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[8]_inst\ : label is "TRUE";
  attribute IOB of \Result_OBUF[9]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[0]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[10]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[11]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[12]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[13]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[14]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[15]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[16]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[17]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[18]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[19]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[1]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[20]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[21]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[22]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[23]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[24]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[25]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[26]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[27]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[28]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[29]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[2]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[30]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[31]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[3]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[4]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[5]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[6]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[7]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[8]_inst\ : label is "TRUE";
  attribute IOB of \WriteData_OBUF[9]_inst\ : label is "TRUE";
begin
\ALUResult_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(0),
      O => ALUResult(0)
    );
\ALUResult_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(10),
      O => ALUResult(10)
    );
\ALUResult_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(11),
      O => ALUResult(11)
    );
\ALUResult_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(12),
      O => ALUResult(12)
    );
\ALUResult_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(13),
      O => ALUResult(13)
    );
\ALUResult_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(14),
      O => ALUResult(14)
    );
\ALUResult_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(15),
      O => ALUResult(15)
    );
\ALUResult_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(16),
      O => ALUResult(16)
    );
\ALUResult_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(17),
      O => ALUResult(17)
    );
\ALUResult_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(18),
      O => ALUResult(18)
    );
\ALUResult_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(19),
      O => ALUResult(19)
    );
\ALUResult_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(1),
      O => ALUResult(1)
    );
\ALUResult_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(20),
      O => ALUResult(20)
    );
\ALUResult_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(21),
      O => ALUResult(21)
    );
\ALUResult_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(22),
      O => ALUResult(22)
    );
\ALUResult_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(23),
      O => ALUResult(23)
    );
\ALUResult_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(24),
      O => ALUResult(24)
    );
\ALUResult_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(25),
      O => ALUResult(25)
    );
\ALUResult_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(26),
      O => ALUResult(26)
    );
\ALUResult_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(27),
      O => ALUResult(27)
    );
\ALUResult_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(28),
      O => ALUResult(28)
    );
\ALUResult_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(29),
      O => ALUResult(29)
    );
\ALUResult_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(2),
      O => ALUResult(2)
    );
\ALUResult_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(30),
      O => ALUResult(30)
    );
\ALUResult_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(31),
      O => ALUResult(31)
    );
\ALUResult_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(3),
      O => ALUResult(3)
    );
\ALUResult_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(4),
      O => ALUResult(4)
    );
\ALUResult_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(5),
      O => ALUResult(5)
    );
\ALUResult_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(6),
      O => ALUResult(6)
    );
\ALUResult_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(7),
      O => ALUResult(7)
    );
\ALUResult_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(8),
      O => ALUResult(8)
    );
\ALUResult_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ALUResult_OBUF(9),
      O => ALUResult(9)
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
ControlUnit_MultiCycle: entity work.Control
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      E(0) => MAWrite,
      \FSM_sequential_current_state_reg[0]\ => DataPath_MultiCycle_n_74,
      \FSM_sequential_current_state_reg[0]_0\ => DataPath_MultiCycle_n_0,
      \FSM_sequential_current_state_reg[0]_1\ => DataPath_MultiCycle_n_71,
      \FSM_sequential_current_state_reg[1]\ => ControlUnit_MultiCycle_n_5,
      \FSM_sequential_current_state_reg[1]_0\ => ControlUnit_MultiCycle_n_7,
      \FSM_sequential_current_state_reg[1]_1\ => DataPath_MultiCycle_n_70,
      \FSM_sequential_current_state_reg[1]_2\ => DataPath_MultiCycle_n_5,
      \FSM_sequential_current_state_reg[2]\ => DataPath_MultiCycle_n_73,
      \FSM_sequential_current_state_reg[2]_0\ => DataPath_MultiCycle_n_72,
      \FSM_sequential_current_state_reg[3]\(0) => FlagsWrite,
      \FSM_sequential_current_state_reg[3]_0\ => ControlUnit_MultiCycle_n_6,
      IRWrite => IRWrite,
      Instruction_OBUF(3 downto 2) => Instruction_OBUF(27 downto 26),
      Instruction_OBUF(1) => Instruction_OBUF(24),
      Instruction_OBUF(0) => Instruction_OBUF(20),
      PCWrite => PCWrite,
      Q(2 downto 0) => \StateMachineWE/current_state\(3 downto 1),
      RESET_IBUF => RESET_IBUF,
      RegWrite => RegWrite,
      WEA(0) => MemWrite
    );
DataPath_MultiCycle: entity work.Datapath
     port map (
      ALUResult_OBUF(31 downto 0) => ALUResult_OBUF(31 downto 0),
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      E(0) => MAWrite,
      \FSM_sequential_current_state_reg[3]\ => DataPath_MultiCycle_n_72,
      IRWrite => IRWrite,
      PCWrite => PCWrite,
      Q(2 downto 0) => \StateMachineWE/current_state\(3 downto 1),
      RESET_IBUF => RESET_IBUF,
      RegWrite => RegWrite,
      Result_OBUF(31 downto 0) => Result_OBUF(31 downto 0),
      WEA(0) => MemWrite,
      d_out(31) => DataPath_MultiCycle_n_113,
      d_out(30) => DataPath_MultiCycle_n_114,
      d_out(29) => DataPath_MultiCycle_n_115,
      d_out(28) => DataPath_MultiCycle_n_116,
      d_out(27) => DataPath_MultiCycle_n_117,
      d_out(26) => DataPath_MultiCycle_n_118,
      d_out(25) => DataPath_MultiCycle_n_119,
      d_out(24) => DataPath_MultiCycle_n_120,
      d_out(23) => DataPath_MultiCycle_n_121,
      d_out(22) => DataPath_MultiCycle_n_122,
      d_out(21) => DataPath_MultiCycle_n_123,
      d_out(20) => DataPath_MultiCycle_n_124,
      d_out(19) => DataPath_MultiCycle_n_125,
      d_out(18) => DataPath_MultiCycle_n_126,
      d_out(17) => DataPath_MultiCycle_n_127,
      d_out(16) => DataPath_MultiCycle_n_128,
      d_out(15) => DataPath_MultiCycle_n_129,
      d_out(14) => DataPath_MultiCycle_n_130,
      d_out(13) => DataPath_MultiCycle_n_131,
      d_out(12) => DataPath_MultiCycle_n_132,
      d_out(11) => DataPath_MultiCycle_n_133,
      d_out(10) => DataPath_MultiCycle_n_134,
      d_out(9) => DataPath_MultiCycle_n_135,
      d_out(8) => DataPath_MultiCycle_n_136,
      d_out(7) => DataPath_MultiCycle_n_137,
      d_out(6) => DataPath_MultiCycle_n_138,
      d_out(5) => DataPath_MultiCycle_n_139,
      d_out(4) => DataPath_MultiCycle_n_140,
      d_out(3) => DataPath_MultiCycle_n_141,
      d_out(2) => DataPath_MultiCycle_n_142,
      d_out(1) => DataPath_MultiCycle_n_143,
      d_out(0) => DataPath_MultiCycle_n_144,
      \d_out_reg[0]\(0) => FlagsWrite,
      \d_out_reg[11]_rep\ => DataPath_MultiCycle_n_104,
      \d_out_reg[11]_rep_rep\ => DataPath_MultiCycle_n_105,
      \d_out_reg[13]_rep\ => DataPath_MultiCycle_n_74,
      \d_out_reg[14]_rep\ => DataPath_MultiCycle_n_73,
      \d_out_reg[21]_rep\ => DataPath_MultiCycle_n_0,
      \d_out_reg[21]_rep_0\ => DataPath_MultiCycle_n_70,
      \d_out_reg[24]_rep\ => DataPath_MultiCycle_n_5,
      \d_out_reg[27]_rep\(3 downto 2) => Instruction_OBUF(27 downto 26),
      \d_out_reg[27]_rep\(1) => Instruction_OBUF(24),
      \d_out_reg[27]_rep\(0) => Instruction_OBUF(20),
      \d_out_reg[31]\(28) => DataPath_MultiCycle_n_75,
      \d_out_reg[31]\(27) => DataPath_MultiCycle_n_76,
      \d_out_reg[31]\(26) => DataPath_MultiCycle_n_77,
      \d_out_reg[31]\(25) => DataPath_MultiCycle_n_78,
      \d_out_reg[31]\(24) => DataPath_MultiCycle_n_79,
      \d_out_reg[31]\(23) => DataPath_MultiCycle_n_80,
      \d_out_reg[31]\(22) => DataPath_MultiCycle_n_81,
      \d_out_reg[31]\(21) => DataPath_MultiCycle_n_82,
      \d_out_reg[31]\(20) => DataPath_MultiCycle_n_83,
      \d_out_reg[31]\(19) => DataPath_MultiCycle_n_84,
      \d_out_reg[31]\(18) => DataPath_MultiCycle_n_85,
      \d_out_reg[31]\(17) => DataPath_MultiCycle_n_86,
      \d_out_reg[31]\(16) => DataPath_MultiCycle_n_87,
      \d_out_reg[31]\(15) => DataPath_MultiCycle_n_88,
      \d_out_reg[31]\(14) => DataPath_MultiCycle_n_89,
      \d_out_reg[31]\(13) => DataPath_MultiCycle_n_90,
      \d_out_reg[31]\(12) => DataPath_MultiCycle_n_91,
      \d_out_reg[31]\(11) => DataPath_MultiCycle_n_92,
      \d_out_reg[31]\(10) => DataPath_MultiCycle_n_93,
      \d_out_reg[31]\(9) => DataPath_MultiCycle_n_94,
      \d_out_reg[31]\(8) => DataPath_MultiCycle_n_95,
      \d_out_reg[31]\(7) => DataPath_MultiCycle_n_96,
      \d_out_reg[31]\(6) => DataPath_MultiCycle_n_97,
      \d_out_reg[31]\(5) => DataPath_MultiCycle_n_98,
      \d_out_reg[31]\(4) => DataPath_MultiCycle_n_99,
      \d_out_reg[31]\(3) => DataPath_MultiCycle_n_100,
      \d_out_reg[31]\(2) => DataPath_MultiCycle_n_101,
      \d_out_reg[31]\(1) => DataPath_MultiCycle_n_102,
      \d_out_reg[31]\(0) => DataPath_MultiCycle_n_103,
      \d_out_reg[31]_0\ => ControlUnit_MultiCycle_n_6,
      \d_out_reg[31]_1\ => ControlUnit_MultiCycle_n_5,
      \d_out_reg[31]_2\ => ControlUnit_MultiCycle_n_7,
      \d_out_reg[31]_rep\ => DataPath_MultiCycle_n_71,
      \d_out_reg[7]\(5) => DataPath_MultiCycle_n_107,
      \d_out_reg[7]\(4) => DataPath_MultiCycle_n_108,
      \d_out_reg[7]\(3) => DataPath_MultiCycle_n_109,
      \d_out_reg[7]\(2) => DataPath_MultiCycle_n_110,
      \d_out_reg[7]\(1) => DataPath_MultiCycle_n_111,
      \d_out_reg[7]\(0) => DataPath_MultiCycle_n_112,
      \d_out_reg[7]_rep\ => DataPath_MultiCycle_n_106
    );
\Instruction_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_103,
      O => Instruction(0)
    );
\Instruction_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_104,
      O => Instruction(10)
    );
\Instruction_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_95,
      O => Instruction(11)
    );
\Instruction_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_94,
      O => Instruction(12)
    );
\Instruction_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_93,
      O => Instruction(13)
    );
\Instruction_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_92,
      O => Instruction(14)
    );
\Instruction_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_91,
      O => Instruction(15)
    );
\Instruction_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_90,
      O => Instruction(16)
    );
\Instruction_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_89,
      O => Instruction(17)
    );
\Instruction_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_88,
      O => Instruction(18)
    );
\Instruction_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_87,
      O => Instruction(19)
    );
\Instruction_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_102,
      O => Instruction(1)
    );
\Instruction_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_86,
      O => Instruction(20)
    );
\Instruction_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_85,
      O => Instruction(21)
    );
\Instruction_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_84,
      O => Instruction(22)
    );
\Instruction_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_83,
      O => Instruction(23)
    );
\Instruction_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_82,
      O => Instruction(24)
    );
\Instruction_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_81,
      O => Instruction(25)
    );
\Instruction_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_80,
      O => Instruction(26)
    );
\Instruction_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_79,
      O => Instruction(27)
    );
\Instruction_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_78,
      O => Instruction(28)
    );
\Instruction_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_77,
      O => Instruction(29)
    );
\Instruction_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_101,
      O => Instruction(2)
    );
\Instruction_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_76,
      O => Instruction(30)
    );
\Instruction_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_75,
      O => Instruction(31)
    );
\Instruction_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_100,
      O => Instruction(3)
    );
\Instruction_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_99,
      O => Instruction(4)
    );
\Instruction_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_98,
      O => Instruction(5)
    );
\Instruction_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_106,
      O => Instruction(6)
    );
\Instruction_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_97,
      O => Instruction(7)
    );
\Instruction_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_96,
      O => Instruction(8)
    );
\Instruction_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_105,
      O => Instruction(9)
    );
\PC_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_112,
      O => PC(0)
    );
\PC_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_111,
      O => PC(1)
    );
\PC_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_110,
      O => PC(2)
    );
\PC_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_109,
      O => PC(3)
    );
\PC_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_108,
      O => PC(4)
    );
\PC_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_107,
      O => PC(5)
    );
RESET_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => RESET,
      O => RESET_IBUF
    );
\Result_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(0),
      O => Result(0)
    );
\Result_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(10),
      O => Result(10)
    );
\Result_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(11),
      O => Result(11)
    );
\Result_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(12),
      O => Result(12)
    );
\Result_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(13),
      O => Result(13)
    );
\Result_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(14),
      O => Result(14)
    );
\Result_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(15),
      O => Result(15)
    );
\Result_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(16),
      O => Result(16)
    );
\Result_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(17),
      O => Result(17)
    );
\Result_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(18),
      O => Result(18)
    );
\Result_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(19),
      O => Result(19)
    );
\Result_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(1),
      O => Result(1)
    );
\Result_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(20),
      O => Result(20)
    );
\Result_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(21),
      O => Result(21)
    );
\Result_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(22),
      O => Result(22)
    );
\Result_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(23),
      O => Result(23)
    );
\Result_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(24),
      O => Result(24)
    );
\Result_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(25),
      O => Result(25)
    );
\Result_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(26),
      O => Result(26)
    );
\Result_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(27),
      O => Result(27)
    );
\Result_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(28),
      O => Result(28)
    );
\Result_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(29),
      O => Result(29)
    );
\Result_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(2),
      O => Result(2)
    );
\Result_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(30),
      O => Result(30)
    );
\Result_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(31),
      O => Result(31)
    );
\Result_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(3),
      O => Result(3)
    );
\Result_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(4),
      O => Result(4)
    );
\Result_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(5),
      O => Result(5)
    );
\Result_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(6),
      O => Result(6)
    );
\Result_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(7),
      O => Result(7)
    );
\Result_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(8),
      O => Result(8)
    );
\Result_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Result_OBUF(9),
      O => Result(9)
    );
\WriteData_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_144,
      O => WriteData(0)
    );
\WriteData_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_134,
      O => WriteData(10)
    );
\WriteData_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_133,
      O => WriteData(11)
    );
\WriteData_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_132,
      O => WriteData(12)
    );
\WriteData_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_131,
      O => WriteData(13)
    );
\WriteData_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_130,
      O => WriteData(14)
    );
\WriteData_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_129,
      O => WriteData(15)
    );
\WriteData_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_128,
      O => WriteData(16)
    );
\WriteData_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_127,
      O => WriteData(17)
    );
\WriteData_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_126,
      O => WriteData(18)
    );
\WriteData_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_125,
      O => WriteData(19)
    );
\WriteData_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_143,
      O => WriteData(1)
    );
\WriteData_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_124,
      O => WriteData(20)
    );
\WriteData_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_123,
      O => WriteData(21)
    );
\WriteData_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_122,
      O => WriteData(22)
    );
\WriteData_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_121,
      O => WriteData(23)
    );
\WriteData_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_120,
      O => WriteData(24)
    );
\WriteData_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_119,
      O => WriteData(25)
    );
\WriteData_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_118,
      O => WriteData(26)
    );
\WriteData_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_117,
      O => WriteData(27)
    );
\WriteData_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_116,
      O => WriteData(28)
    );
\WriteData_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_115,
      O => WriteData(29)
    );
\WriteData_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_142,
      O => WriteData(2)
    );
\WriteData_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_114,
      O => WriteData(30)
    );
\WriteData_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_113,
      O => WriteData(31)
    );
\WriteData_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_141,
      O => WriteData(3)
    );
\WriteData_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_140,
      O => WriteData(4)
    );
\WriteData_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_139,
      O => WriteData(5)
    );
\WriteData_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_138,
      O => WriteData(6)
    );
\WriteData_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_137,
      O => WriteData(7)
    );
\WriteData_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_136,
      O => WriteData(8)
    );
\WriteData_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => DataPath_MultiCycle_n_135,
      O => WriteData(9)
    );
end STRUCTURE;
