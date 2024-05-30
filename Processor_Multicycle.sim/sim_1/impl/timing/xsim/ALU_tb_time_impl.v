// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Mar 22 21:49:51 2024
// Host        : yannos running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Yannos/FILES/PROGRAMS/FPGA/VIVADO/MSc_Control_and_Computing-UoA/PROJECTS/Project_2/Processor_Multicycle/Processor_Multicycle.sim/sim_1/impl/timing/xsim/ALU_tb_time_impl.v
// Design      : ALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ADD_SUB
   (V_OBUF,
    CO,
    Z_OBUF,
    ALUResult_OBUF,
    SrcA_IBUF,
    ALUControl_IBUF,
    \ALUResult[0] ,
    shamt5_IBUF,
    \ALUResult[0]_0 ,
    \ALUResult[0]_1 ,
    \ALUResult[0]_2 ,
    \ALUResult[1] ,
    \ALUResult[1]_0 ,
    \ALUResult[2] ,
    \ALUResult[2]_0 ,
    \ALUResult[3] ,
    \ALUResult[3]_0 ,
    \ALUResult[4] ,
    \ALUResult[4]_0 ,
    \ALUResult[5] ,
    \ALUResult[5]_0 ,
    \ALUResult[6] ,
    \ALUResult[6]_0 ,
    \ALUResult[7] ,
    \ALUResult[7]_0 ,
    \ALUResult[8] ,
    \ALUResult[8]_0 ,
    \ALUResult[9] ,
    \ALUResult[9]_0 ,
    \ALUResult[10] ,
    \ALUResult[10]_0 ,
    \ALUResult[11] ,
    \ALUResult[11]_0 ,
    \ALUResult[12] ,
    \ALUResult[12]_0 ,
    \ALUResult[13] ,
    \ALUResult[13]_0 ,
    \ALUResult[14] ,
    \ALUResult[14]_0 ,
    \ALUResult[15] ,
    \ALUResult[15]_0 ,
    \ALUResult[16] ,
    \ALUResult[16]_0 ,
    \ALUResult[17] ,
    \ALUResult[17]_0 ,
    \ALUResult[18] ,
    \ALUResult[18]_0 ,
    \ALUResult[19] ,
    \ALUResult[19]_0 ,
    \ALUResult[20] ,
    \ALUResult[20]_0 ,
    \ALUResult[21] ,
    \ALUResult[21]_0 ,
    \ALUResult[22] ,
    \ALUResult[22]_0 ,
    \ALUResult[23] ,
    \ALUResult[23]_0 ,
    \ALUResult[24] ,
    \ALUResult[24]_0 ,
    \ALUResult[25] ,
    \ALUResult[25]_0 ,
    \ALUResult[26] ,
    \ALUResult[26]_0 ,
    \ALUResult[27] ,
    \ALUResult[27]_0 ,
    \ALUResult[28] ,
    \ALUResult[28]_0 ,
    \ALUResult[29] ,
    \ALUResult[29]_0 ,
    \ALUResult[30] ,
    \ALUResult[30]_0 ,
    \ALUResult[31] ,
    SrcB_IBUF,
    SrcB_integer0);
  output V_OBUF;
  output [0:0]CO;
  output Z_OBUF;
  output [31:0]ALUResult_OBUF;
  input [31:0]SrcA_IBUF;
  input [3:0]ALUControl_IBUF;
  input \ALUResult[0] ;
  input [0:0]shamt5_IBUF;
  input \ALUResult[0]_0 ;
  input \ALUResult[0]_1 ;
  input \ALUResult[0]_2 ;
  input \ALUResult[1] ;
  input \ALUResult[1]_0 ;
  input \ALUResult[2] ;
  input \ALUResult[2]_0 ;
  input \ALUResult[3] ;
  input \ALUResult[3]_0 ;
  input \ALUResult[4] ;
  input \ALUResult[4]_0 ;
  input \ALUResult[5] ;
  input \ALUResult[5]_0 ;
  input \ALUResult[6] ;
  input \ALUResult[6]_0 ;
  input \ALUResult[7] ;
  input \ALUResult[7]_0 ;
  input \ALUResult[8] ;
  input \ALUResult[8]_0 ;
  input \ALUResult[9] ;
  input \ALUResult[9]_0 ;
  input \ALUResult[10] ;
  input \ALUResult[10]_0 ;
  input \ALUResult[11] ;
  input \ALUResult[11]_0 ;
  input \ALUResult[12] ;
  input \ALUResult[12]_0 ;
  input \ALUResult[13] ;
  input \ALUResult[13]_0 ;
  input \ALUResult[14] ;
  input \ALUResult[14]_0 ;
  input \ALUResult[15] ;
  input \ALUResult[15]_0 ;
  input \ALUResult[16] ;
  input \ALUResult[16]_0 ;
  input \ALUResult[17] ;
  input \ALUResult[17]_0 ;
  input \ALUResult[18] ;
  input \ALUResult[18]_0 ;
  input \ALUResult[19] ;
  input \ALUResult[19]_0 ;
  input \ALUResult[20] ;
  input \ALUResult[20]_0 ;
  input \ALUResult[21] ;
  input \ALUResult[21]_0 ;
  input \ALUResult[22] ;
  input \ALUResult[22]_0 ;
  input \ALUResult[23] ;
  input \ALUResult[23]_0 ;
  input \ALUResult[24] ;
  input \ALUResult[24]_0 ;
  input \ALUResult[25] ;
  input \ALUResult[25]_0 ;
  input \ALUResult[26] ;
  input \ALUResult[26]_0 ;
  input \ALUResult[27] ;
  input \ALUResult[27]_0 ;
  input \ALUResult[28] ;
  input \ALUResult[28]_0 ;
  input \ALUResult[29] ;
  input \ALUResult[29]_0 ;
  input \ALUResult[30] ;
  input \ALUResult[30]_0 ;
  input \ALUResult[31] ;
  input [31:0]SrcB_IBUF;
  input [30:0]SrcB_integer0;

  wire [3:0]ALUControl_IBUF;
  wire \ALUResult[0] ;
  wire \ALUResult[0]_0 ;
  wire \ALUResult[0]_1 ;
  wire \ALUResult[0]_2 ;
  wire \ALUResult[10] ;
  wire \ALUResult[10]_0 ;
  wire \ALUResult[11] ;
  wire \ALUResult[11]_0 ;
  wire \ALUResult[12] ;
  wire \ALUResult[12]_0 ;
  wire \ALUResult[13] ;
  wire \ALUResult[13]_0 ;
  wire \ALUResult[14] ;
  wire \ALUResult[14]_0 ;
  wire \ALUResult[15] ;
  wire \ALUResult[15]_0 ;
  wire \ALUResult[16] ;
  wire \ALUResult[16]_0 ;
  wire \ALUResult[17] ;
  wire \ALUResult[17]_0 ;
  wire \ALUResult[18] ;
  wire \ALUResult[18]_0 ;
  wire \ALUResult[19] ;
  wire \ALUResult[19]_0 ;
  wire \ALUResult[1] ;
  wire \ALUResult[1]_0 ;
  wire \ALUResult[20] ;
  wire \ALUResult[20]_0 ;
  wire \ALUResult[21] ;
  wire \ALUResult[21]_0 ;
  wire \ALUResult[22] ;
  wire \ALUResult[22]_0 ;
  wire \ALUResult[23] ;
  wire \ALUResult[23]_0 ;
  wire \ALUResult[24] ;
  wire \ALUResult[24]_0 ;
  wire \ALUResult[25] ;
  wire \ALUResult[25]_0 ;
  wire \ALUResult[26] ;
  wire \ALUResult[26]_0 ;
  wire \ALUResult[27] ;
  wire \ALUResult[27]_0 ;
  wire \ALUResult[28] ;
  wire \ALUResult[28]_0 ;
  wire \ALUResult[29] ;
  wire \ALUResult[29]_0 ;
  wire \ALUResult[2] ;
  wire \ALUResult[2]_0 ;
  wire \ALUResult[30] ;
  wire \ALUResult[30]_0 ;
  wire \ALUResult[31] ;
  wire \ALUResult[3] ;
  wire \ALUResult[3]_0 ;
  wire \ALUResult[4] ;
  wire \ALUResult[4]_0 ;
  wire \ALUResult[5] ;
  wire \ALUResult[5]_0 ;
  wire \ALUResult[6] ;
  wire \ALUResult[6]_0 ;
  wire \ALUResult[7] ;
  wire \ALUResult[7]_0 ;
  wire \ALUResult[8] ;
  wire \ALUResult[8]_0 ;
  wire \ALUResult[9] ;
  wire \ALUResult[9]_0 ;
  wire [31:0]ALUResult_OBUF;
  wire [0:0]CO;
  wire [31:0]SrcA_IBUF;
  wire [31:0]SrcB_IBUF;
  wire [30:0]SrcB_integer0;
  wire V_OBUF;
  wire Z_OBUF;
  wire [0:0]shamt5_IBUF;

  adder add
       (.ALUControl_IBUF(ALUControl_IBUF),
        .\ALUResult[0] (\ALUResult[0] ),
        .\ALUResult[0]_0 (\ALUResult[0]_0 ),
        .\ALUResult[0]_1 (\ALUResult[0]_1 ),
        .\ALUResult[0]_2 (\ALUResult[0]_2 ),
        .\ALUResult[10] (\ALUResult[10] ),
        .\ALUResult[10]_0 (\ALUResult[10]_0 ),
        .\ALUResult[11] (\ALUResult[11] ),
        .\ALUResult[11]_0 (\ALUResult[11]_0 ),
        .\ALUResult[12] (\ALUResult[12] ),
        .\ALUResult[12]_0 (\ALUResult[12]_0 ),
        .\ALUResult[13] (\ALUResult[13] ),
        .\ALUResult[13]_0 (\ALUResult[13]_0 ),
        .\ALUResult[14] (\ALUResult[14] ),
        .\ALUResult[14]_0 (\ALUResult[14]_0 ),
        .\ALUResult[15] (\ALUResult[15] ),
        .\ALUResult[15]_0 (\ALUResult[15]_0 ),
        .\ALUResult[16] (\ALUResult[16] ),
        .\ALUResult[16]_0 (\ALUResult[16]_0 ),
        .\ALUResult[17] (\ALUResult[17] ),
        .\ALUResult[17]_0 (\ALUResult[17]_0 ),
        .\ALUResult[18] (\ALUResult[18] ),
        .\ALUResult[18]_0 (\ALUResult[18]_0 ),
        .\ALUResult[19] (\ALUResult[19] ),
        .\ALUResult[19]_0 (\ALUResult[19]_0 ),
        .\ALUResult[1] (\ALUResult[1] ),
        .\ALUResult[1]_0 (\ALUResult[1]_0 ),
        .\ALUResult[20] (\ALUResult[20] ),
        .\ALUResult[20]_0 (\ALUResult[20]_0 ),
        .\ALUResult[21] (\ALUResult[21] ),
        .\ALUResult[21]_0 (\ALUResult[21]_0 ),
        .\ALUResult[22] (\ALUResult[22] ),
        .\ALUResult[22]_0 (\ALUResult[22]_0 ),
        .\ALUResult[23] (\ALUResult[23] ),
        .\ALUResult[23]_0 (\ALUResult[23]_0 ),
        .\ALUResult[24] (\ALUResult[24] ),
        .\ALUResult[24]_0 (\ALUResult[24]_0 ),
        .\ALUResult[25] (\ALUResult[25] ),
        .\ALUResult[25]_0 (\ALUResult[25]_0 ),
        .\ALUResult[26] (\ALUResult[26] ),
        .\ALUResult[26]_0 (\ALUResult[26]_0 ),
        .\ALUResult[27] (\ALUResult[27] ),
        .\ALUResult[27]_0 (\ALUResult[27]_0 ),
        .\ALUResult[28] (\ALUResult[28] ),
        .\ALUResult[28]_0 (\ALUResult[28]_0 ),
        .\ALUResult[29] (\ALUResult[29] ),
        .\ALUResult[29]_0 (\ALUResult[29]_0 ),
        .\ALUResult[2] (\ALUResult[2] ),
        .\ALUResult[2]_0 (\ALUResult[2]_0 ),
        .\ALUResult[30] (\ALUResult[30] ),
        .\ALUResult[30]_0 (\ALUResult[30]_0 ),
        .\ALUResult[31] (\ALUResult[31] ),
        .\ALUResult[3] (\ALUResult[3] ),
        .\ALUResult[3]_0 (\ALUResult[3]_0 ),
        .\ALUResult[4] (\ALUResult[4] ),
        .\ALUResult[4]_0 (\ALUResult[4]_0 ),
        .\ALUResult[5] (\ALUResult[5] ),
        .\ALUResult[5]_0 (\ALUResult[5]_0 ),
        .\ALUResult[6] (\ALUResult[6] ),
        .\ALUResult[6]_0 (\ALUResult[6]_0 ),
        .\ALUResult[7] (\ALUResult[7] ),
        .\ALUResult[7]_0 (\ALUResult[7]_0 ),
        .\ALUResult[8] (\ALUResult[8] ),
        .\ALUResult[8]_0 (\ALUResult[8]_0 ),
        .\ALUResult[9] (\ALUResult[9] ),
        .\ALUResult[9]_0 (\ALUResult[9]_0 ),
        .ALUResult_OBUF(ALUResult_OBUF),
        .CO(CO),
        .SrcA_IBUF(SrcA_IBUF),
        .SrcB_IBUF(SrcB_IBUF),
        .SrcB_integer0(SrcB_integer0),
        .V_OBUF(V_OBUF),
        .Z_OBUF(Z_OBUF),
        .shamt5_IBUF(shamt5_IBUF));
endmodule

(* ECO_CHECKSUM = "de426ab1" *) (* shamt = "5" *) (* width = "32" *) 
(* NotValidForBitStream *)
module ALU
   (SrcA,
    SrcB,
    shamt5,
    ALUControl,
    N,
    Z,
    C,
    V,
    ALUResult);
  input [31:0]SrcA;
  input [31:0]SrcB;
  input [4:0]shamt5;
  input [3:0]ALUControl;
  output N;
  output Z;
  output C;
  output V;
  output [31:0]ALUResult;

  wire [3:0]ALUControl;
  wire [3:0]ALUControl_IBUF;
  wire [31:0]ALUResult;
  wire [31:0]ALUResult_OBUF;
  wire \ALUResult_OBUF[0]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_7_n_0 ;
  wire AddSub_n_1;
  wire C;
  wire C_OBUF;
  wire C_OBUF_inst_i_3_n_0;
  wire Carry;
  wire N;
  wire N_OBUF_inst_i_10_n_0;
  wire N_OBUF_inst_i_11_n_0;
  wire N_OBUF_inst_i_12_n_0;
  wire N_OBUF_inst_i_13_n_0;
  wire N_OBUF_inst_i_14_n_0;
  wire N_OBUF_inst_i_2_n_0;
  wire N_OBUF_inst_i_4_n_0;
  wire N_OBUF_inst_i_5_n_0;
  wire N_OBUF_inst_i_6_n_0;
  wire N_OBUF_inst_i_7_n_0;
  wire N_OBUF_inst_i_8_n_0;
  wire N_OBUF_inst_i_9_n_0;
  wire [31:0]SrcA;
  wire [31:0]SrcA_IBUF;
  wire [31:0]SrcB;
  wire [31:0]SrcB_IBUF;
  wire [31:1]SrcB_integer0;
  wire V;
  wire V_OBUF;
  wire Z;
  wire Z_OBUF;
  wire [31:0]p_0_in;
  wire [4:0]shamt5;
  wire [4:0]shamt5_IBUF;
  wire sum0_carry__0_i_5_n_0;
  wire sum0_carry__1_i_5_n_0;
  wire sum0_carry__2_i_5_n_0;
  wire sum0_carry__3_i_5_n_0;
  wire sum0_carry__4_i_5_n_0;
  wire sum0_carry__5_i_5_n_0;
  wire sum0_carry_i_5_n_0;
  wire [3:0]NLW_C_OBUF_inst_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_C_OBUF_inst_i_2_O_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__0_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__1_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__2_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__3_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__4_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__5_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_sum0_carry__6_i_6_CO_UNCONNECTED;
  wire [3:3]NLW_sum0_carry__6_i_6_O_UNCONNECTED;
  wire [2:0]NLW_sum0_carry_i_5_CO_UNCONNECTED;

initial begin
 $sdf_annotate("ALU_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF #(
    .CCIO_EN("TRUE")) 
    \ALUControl_IBUF[0]_inst 
       (.I(ALUControl[0]),
        .O(ALUControl_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \ALUControl_IBUF[1]_inst 
       (.I(ALUControl[1]),
        .O(ALUControl_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \ALUControl_IBUF[2]_inst 
       (.I(ALUControl[2]),
        .O(ALUControl_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \ALUControl_IBUF[3]_inst 
       (.I(ALUControl[3]),
        .O(ALUControl_IBUF[3]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[0]_inst 
       (.I(ALUResult_OBUF[0]),
        .O(ALUResult[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult_OBUF[0]_inst_i_2 
       (.I0(shamt5_IBUF[2]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[0]),
        .I3(shamt5_IBUF[4]),
        .I4(shamt5_IBUF[1]),
        .O(\ALUResult_OBUF[0]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \ALUResult_OBUF[0]_inst_i_3 
       (.I0(ALUControl_IBUF[3]),
        .I1(ALUControl_IBUF[2]),
        .O(\ALUResult_OBUF[0]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[0]_inst_i_4 
       (.I0(\ALUResult_OBUF[1]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[0]_inst_i_7_n_0 ),
        .I3(shamt5_IBUF[1]),
        .I4(\ALUResult_OBUF[0]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[0]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \ALUResult_OBUF[0]_inst_i_5 
       (.I0(ALUControl_IBUF[3]),
        .I1(ALUControl_IBUF[2]),
        .I2(ALUControl_IBUF[1]),
        .O(\ALUResult_OBUF[0]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[0]_inst_i_7 
       (.I0(\ALUResult_OBUF[6]_inst_i_7_n_0 ),
        .I1(shamt5_IBUF[2]),
        .I2(\ALUResult_OBUF[2]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[0]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[0]_inst_i_8 
       (.I0(\ALUResult_OBUF[4]_inst_i_7_n_0 ),
        .I1(shamt5_IBUF[2]),
        .I2(\ALUResult_OBUF[0]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[0]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[0]_inst_i_9 
       (.I0(SrcB_IBUF[24]),
        .I1(SrcB_IBUF[8]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[16]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[0]),
        .O(\ALUResult_OBUF[0]_inst_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[10]_inst 
       (.I(ALUResult_OBUF[10]),
        .O(ALUResult[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[10]_inst_i_2 
       (.I0(\ALUResult_OBUF[10]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[11]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[10]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[10]_inst_i_3 
       (.I0(\ALUResult_OBUF[11]_inst_i_7_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[10]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[10]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult_OBUF[10]_inst_i_5 
       (.I0(SrcB_IBUF[3]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[7]),
        .I4(shamt5_IBUF[3]),
        .O(\ALUResult_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[10]_inst_i_6 
       (.I0(\ALUResult_OBUF[16]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[12]_inst_i_8_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[10]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[10]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[10]_inst_i_7 
       (.I0(SrcB_IBUF[31]),
        .I1(SrcB_IBUF[18]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[26]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[10]),
        .O(\ALUResult_OBUF[10]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[11]_inst 
       (.I(ALUResult_OBUF[11]),
        .O(ALUResult[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[11]_inst_i_2 
       (.I0(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[11]_inst_i_6_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[12]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[11]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[11]_inst_i_3 
       (.I0(\ALUResult_OBUF[12]_inst_i_7_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[11]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[11]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult_OBUF[11]_inst_i_5 
       (.I0(SrcB_IBUF[4]),
        .I1(shamt5_IBUF[2]),
        .I2(SrcB_IBUF[0]),
        .I3(shamt5_IBUF[3]),
        .I4(SrcB_IBUF[8]),
        .I5(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[11]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult_OBUF[11]_inst_i_6 
       (.I0(SrcB_IBUF[6]),
        .I1(shamt5_IBUF[2]),
        .I2(SrcB_IBUF[2]),
        .I3(shamt5_IBUF[3]),
        .I4(SrcB_IBUF[10]),
        .I5(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[11]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[11]_inst_i_7 
       (.I0(\ALUResult_OBUF[17]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[13]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[15]_inst_i_9_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[11]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[11]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[11]_inst_i_8 
       (.I0(SrcB_IBUF[31]),
        .I1(SrcB_IBUF[19]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[27]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[11]),
        .O(\ALUResult_OBUF[11]_inst_i_8_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[12]_inst 
       (.I(ALUResult_OBUF[12]),
        .O(ALUResult[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult_OBUF[12]_inst_i_2 
       (.I0(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[12]_inst_i_6_n_0 ),
        .I3(shamt5_IBUF[0]),
        .I4(\ALUResult_OBUF[13]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[12]_inst_i_3 
       (.I0(\ALUResult_OBUF[13]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[12]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult_OBUF[12]_inst_i_5 
       (.I0(SrcB_IBUF[5]),
        .I1(shamt5_IBUF[2]),
        .I2(SrcB_IBUF[1]),
        .I3(shamt5_IBUF[3]),
        .I4(SrcB_IBUF[9]),
        .I5(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[12]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \ALUResult_OBUF[12]_inst_i_6 
       (.I0(SrcB_IBUF[7]),
        .I1(shamt5_IBUF[2]),
        .I2(SrcB_IBUF[3]),
        .I3(shamt5_IBUF[3]),
        .I4(SrcB_IBUF[11]),
        .I5(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[12]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[12]_inst_i_7 
       (.I0(\ALUResult_OBUF[18]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[16]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[12]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[12]_inst_i_8 
       (.I0(SrcB_IBUF[31]),
        .I1(SrcB_IBUF[20]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[28]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[12]),
        .O(\ALUResult_OBUF[12]_inst_i_8_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[13]_inst 
       (.I(ALUResult_OBUF[13]),
        .O(ALUResult[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[13]_inst_i_2 
       (.I0(\ALUResult_OBUF[13]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[13]_inst_i_3 
       (.I0(\ALUResult_OBUF[14]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[13]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[13]_inst_i_5 
       (.I0(\ALUResult_OBUF[11]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[15]_inst_i_7_n_0 ),
        .I3(shamt5_IBUF[2]),
        .I4(\ALUResult_OBUF[19]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[13]_inst_i_6 
       (.I0(\ALUResult_OBUF[19]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[15]_inst_i_9_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[17]_inst_i_9_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[13]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[13]_inst_i_7 
       (.I0(SrcB_IBUF[31]),
        .I1(SrcB_IBUF[21]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[29]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[13]),
        .O(\ALUResult_OBUF[13]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[14]_inst 
       (.I(ALUResult_OBUF[14]),
        .O(ALUResult[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[14]_inst_i_2 
       (.I0(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[15]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[14]_inst_i_3 
       (.I0(\ALUResult_OBUF[15]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[14]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[14]_inst_i_5 
       (.I0(\ALUResult_OBUF[12]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[14]_inst_i_7_n_0 ),
        .I3(shamt5_IBUF[2]),
        .I4(\ALUResult_OBUF[20]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[14]_inst_i_6 
       (.I0(\ALUResult_OBUF[20]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[16]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[18]_inst_i_9_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult_OBUF[14]_inst_i_7 
       (.I0(SrcB_IBUF[1]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[9]),
        .I3(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[14]_inst_i_8 
       (.I0(SrcB_IBUF[31]),
        .I1(SrcB_IBUF[22]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[30]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[14]),
        .O(\ALUResult_OBUF[14]_inst_i_8_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[15]_inst 
       (.I(ALUResult_OBUF[15]),
        .O(ALUResult[15]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult_OBUF[15]_inst_i_2 
       (.I0(\ALUResult_OBUF[16]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[18]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[15]_inst_i_5_n_0 ),
        .I4(shamt5_IBUF[0]),
        .O(\ALUResult_OBUF[15]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[15]_inst_i_3 
       (.I0(\ALUResult_OBUF[16]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[15]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[15]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[15]_inst_i_5 
       (.I0(\ALUResult_OBUF[15]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[19]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[15]_inst_i_8_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[21]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[15]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[15]_inst_i_6 
       (.I0(\ALUResult_OBUF[21]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[17]_inst_i_9_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[19]_inst_i_9_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[15]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[15]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult_OBUF[15]_inst_i_7 
       (.I0(SrcB_IBUF[0]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[8]),
        .I3(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[15]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult_OBUF[15]_inst_i_8 
       (.I0(SrcB_IBUF[2]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[10]),
        .I3(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[15]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult_OBUF[15]_inst_i_9 
       (.I0(SrcB_IBUF[23]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[15]),
        .O(\ALUResult_OBUF[15]_inst_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[16]_inst 
       (.I(ALUResult_OBUF[16]),
        .O(ALUResult[16]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \ALUResult_OBUF[16]_inst_i_2 
       (.I0(\ALUResult_OBUF[16]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[18]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[17]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[17]_inst_i_6_n_0 ),
        .I5(shamt5_IBUF[0]),
        .O(\ALUResult_OBUF[16]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult_OBUF[16]_inst_i_3 
       (.I0(\ALUResult_OBUF[17]_inst_i_7_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[17]_inst_i_8_n_0 ),
        .I3(shamt5_IBUF[0]),
        .I4(\ALUResult_OBUF[16]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult_OBUF[16]_inst_i_5 
       (.I0(SrcB_IBUF[1]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[9]),
        .I3(shamt5_IBUF[4]),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[20]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[16]_inst_i_6 
       (.I0(\ALUResult_OBUF[22]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[18]_inst_i_9_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[20]_inst_i_9_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[16]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult_OBUF[16]_inst_i_7 
       (.I0(SrcB_IBUF[24]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[16]),
        .O(\ALUResult_OBUF[16]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[17]_inst 
       (.I(ALUResult_OBUF[17]),
        .O(ALUResult[17]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult_OBUF[17]_inst_i_2 
       (.I0(\ALUResult_OBUF[18]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[18]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[17]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[17]_inst_i_6_n_0 ),
        .I5(shamt5_IBUF[0]),
        .O(\ALUResult_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \ALUResult_OBUF[17]_inst_i_3 
       (.I0(\ALUResult_OBUF[17]_inst_i_7_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[17]_inst_i_8_n_0 ),
        .I3(\ALUResult_OBUF[18]_inst_i_7_n_0 ),
        .I4(\ALUResult_OBUF[18]_inst_i_8_n_0 ),
        .I5(shamt5_IBUF[0]),
        .O(\ALUResult_OBUF[17]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult_OBUF[17]_inst_i_5 
       (.I0(SrcB_IBUF[2]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[10]),
        .I3(shamt5_IBUF[4]),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[21]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult_OBUF[17]_inst_i_6 
       (.I0(SrcB_IBUF[4]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[12]),
        .I3(shamt5_IBUF[4]),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \ALUResult_OBUF[17]_inst_i_7 
       (.I0(shamt5_IBUF[3]),
        .I1(SrcB_IBUF[31]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[23]),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[19]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[17]_inst_i_8 
       (.I0(\ALUResult_OBUF[21]_inst_i_9_n_0 ),
        .I1(shamt5_IBUF[2]),
        .I2(\ALUResult_OBUF[17]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult_OBUF[17]_inst_i_9 
       (.I0(SrcB_IBUF[25]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[17]),
        .O(\ALUResult_OBUF[17]_inst_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[18]_inst 
       (.I(ALUResult_OBUF[18]),
        .O(ALUResult[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult_OBUF[18]_inst_i_2 
       (.I0(\ALUResult_OBUF[18]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[18]_inst_i_6_n_0 ),
        .I3(shamt5_IBUF[0]),
        .I4(\ALUResult_OBUF[19]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult_OBUF[18]_inst_i_3 
       (.I0(\ALUResult_OBUF[18]_inst_i_7_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[18]_inst_i_8_n_0 ),
        .I3(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .I4(shamt5_IBUF[0]),
        .O(\ALUResult_OBUF[18]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult_OBUF[18]_inst_i_5 
       (.I0(SrcB_IBUF[3]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[11]),
        .I3(shamt5_IBUF[4]),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[22]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \ALUResult_OBUF[18]_inst_i_6 
       (.I0(SrcB_IBUF[5]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[13]),
        .I3(shamt5_IBUF[4]),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[24]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \ALUResult_OBUF[18]_inst_i_7 
       (.I0(shamt5_IBUF[3]),
        .I1(SrcB_IBUF[31]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[24]),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[20]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[18]_inst_i_8 
       (.I0(\ALUResult_OBUF[22]_inst_i_9_n_0 ),
        .I1(shamt5_IBUF[2]),
        .I2(\ALUResult_OBUF[18]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult_OBUF[18]_inst_i_9 
       (.I0(SrcB_IBUF[26]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[18]),
        .O(\ALUResult_OBUF[18]_inst_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[19]_inst 
       (.I(ALUResult_OBUF[19]),
        .O(ALUResult[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[19]_inst_i_2 
       (.I0(\ALUResult_OBUF[19]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[20]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[19]_inst_i_3 
       (.I0(\ALUResult_OBUF[20]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[19]_inst_i_5 
       (.I0(\ALUResult_OBUF[19]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[21]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[25]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[19]_inst_i_6 
       (.I0(\ALUResult_OBUF[21]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[21]_inst_i_9_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[19]_inst_i_8_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[19]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult_OBUF[19]_inst_i_7 
       (.I0(SrcB_IBUF[4]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[12]),
        .I3(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[19]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult_OBUF[19]_inst_i_8 
       (.I0(shamt5_IBUF[3]),
        .I1(SrcB_IBUF[31]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[23]),
        .O(\ALUResult_OBUF[19]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult_OBUF[19]_inst_i_9 
       (.I0(SrcB_IBUF[27]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[19]),
        .O(\ALUResult_OBUF[19]_inst_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[1]_inst 
       (.I(ALUResult_OBUF[1]),
        .O(ALUResult[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[1]_inst_i_2 
       (.I0(\ALUResult_OBUF[0]_inst_i_2_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[1]_inst_i_3 
       (.I0(\ALUResult_OBUF[2]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[1]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[1]_inst_i_5 
       (.I0(\ALUResult_OBUF[7]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[3]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[5]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[1]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[1]_inst_i_6 
       (.I0(SrcB_IBUF[25]),
        .I1(SrcB_IBUF[9]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[17]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[1]),
        .O(\ALUResult_OBUF[1]_inst_i_6_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[20]_inst 
       (.I(ALUResult_OBUF[20]),
        .O(ALUResult[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[20]_inst_i_2 
       (.I0(\ALUResult_OBUF[20]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[21]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[20]_inst_i_3 
       (.I0(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[20]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[20]_inst_i_5 
       (.I0(\ALUResult_OBUF[20]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[24]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[22]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[26]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[20]_inst_i_6 
       (.I0(\ALUResult_OBUF[22]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[22]_inst_i_9_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[20]_inst_i_8_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[20]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult_OBUF[20]_inst_i_7 
       (.I0(SrcB_IBUF[5]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[13]),
        .I3(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[20]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult_OBUF[20]_inst_i_8 
       (.I0(shamt5_IBUF[3]),
        .I1(SrcB_IBUF[31]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[24]),
        .O(\ALUResult_OBUF[20]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult_OBUF[20]_inst_i_9 
       (.I0(SrcB_IBUF[28]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[20]),
        .O(\ALUResult_OBUF[20]_inst_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[21]_inst 
       (.I(ALUResult_OBUF[21]),
        .O(ALUResult[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[21]_inst_i_2 
       (.I0(\ALUResult_OBUF[21]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[22]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[21]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[21]_inst_i_3 
       (.I0(\ALUResult_OBUF[22]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[21]_inst_i_5 
       (.I0(\ALUResult_OBUF[21]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[27]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[21]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[21]_inst_i_6 
       (.I0(\ALUResult_OBUF[23]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[21]_inst_i_8_n_0 ),
        .I3(shamt5_IBUF[2]),
        .I4(\ALUResult_OBUF[21]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[21]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult_OBUF[21]_inst_i_7 
       (.I0(SrcB_IBUF[6]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[14]),
        .I3(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[21]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult_OBUF[21]_inst_i_8 
       (.I0(shamt5_IBUF[3]),
        .I1(SrcB_IBUF[31]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[25]),
        .O(\ALUResult_OBUF[21]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult_OBUF[21]_inst_i_9 
       (.I0(SrcB_IBUF[29]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[21]),
        .O(\ALUResult_OBUF[21]_inst_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[22]_inst 
       (.I(ALUResult_OBUF[22]),
        .O(ALUResult[22]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[22]_inst_i_2 
       (.I0(\ALUResult_OBUF[22]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult_OBUF[22]_inst_i_3 
       (.I0(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[23]_inst_i_6_n_0 ),
        .I3(shamt5_IBUF[0]),
        .I4(\ALUResult_OBUF[22]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[22]_inst_i_5 
       (.I0(\ALUResult_OBUF[22]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[26]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[24]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[28]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[22]_inst_i_6 
       (.I0(\ALUResult_OBUF[24]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[22]_inst_i_8_n_0 ),
        .I3(shamt5_IBUF[2]),
        .I4(\ALUResult_OBUF[22]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \ALUResult_OBUF[22]_inst_i_7 
       (.I0(SrcB_IBUF[7]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[15]),
        .I3(shamt5_IBUF[4]),
        .O(\ALUResult_OBUF[22]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hCDC8)) 
    \ALUResult_OBUF[22]_inst_i_8 
       (.I0(shamt5_IBUF[3]),
        .I1(SrcB_IBUF[31]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[26]),
        .O(\ALUResult_OBUF[22]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \ALUResult_OBUF[22]_inst_i_9 
       (.I0(SrcB_IBUF[30]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[22]),
        .O(\ALUResult_OBUF[22]_inst_i_9_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[23]_inst 
       (.I(ALUResult_OBUF[23]),
        .O(ALUResult[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[23]_inst_i_2 
       (.I0(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[24]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[23]_inst_i_3 
       (.I0(\ALUResult_OBUF[26]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[24]_inst_i_6_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[23]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[23]_inst_i_5 
       (.I0(\ALUResult_OBUF[23]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[27]_inst_i_8_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[25]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[29]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[23]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult_OBUF[23]_inst_i_6 
       (.I0(SrcB_IBUF[27]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[31]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[23]),
        .O(\ALUResult_OBUF[23]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult_OBUF[23]_inst_i_7 
       (.I0(SrcB_IBUF[8]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[0]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[16]),
        .O(\ALUResult_OBUF[23]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[24]_inst 
       (.I(ALUResult_OBUF[24]),
        .O(ALUResult[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[24]_inst_i_2 
       (.I0(\ALUResult_OBUF[24]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[25]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[24]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[24]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[26]_inst_i_6_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[24]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[24]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[24]_inst_i_5 
       (.I0(\ALUResult_OBUF[24]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_8_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[26]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[24]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult_OBUF[24]_inst_i_6 
       (.I0(SrcB_IBUF[28]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[31]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[24]),
        .O(\ALUResult_OBUF[24]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult_OBUF[24]_inst_i_7 
       (.I0(SrcB_IBUF[9]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[1]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[17]),
        .O(\ALUResult_OBUF[24]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[25]_inst 
       (.I(ALUResult_OBUF[25]),
        .O(ALUResult[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[25]_inst_i_2 
       (.I0(\ALUResult_OBUF[25]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[26]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[25]_inst_i_3 
       (.I0(\ALUResult_OBUF[28]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[26]_inst_i_6_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[27]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[25]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[25]_inst_i_5 
       (.I0(\ALUResult_OBUF[25]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[29]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[27]_inst_i_8_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(N_OBUF_inst_i_7_n_0),
        .O(\ALUResult_OBUF[25]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult_OBUF[25]_inst_i_6 
       (.I0(SrcB_IBUF[29]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[31]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[25]),
        .O(\ALUResult_OBUF[25]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult_OBUF[25]_inst_i_7 
       (.I0(SrcB_IBUF[10]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[2]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[18]),
        .O(\ALUResult_OBUF[25]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[26]_inst 
       (.I(ALUResult_OBUF[26]),
        .O(ALUResult[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[26]_inst_i_2 
       (.I0(\ALUResult_OBUF[26]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[26]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[26]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[27]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[28]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[26]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[26]_inst_i_5 
       (.I0(\ALUResult_OBUF[26]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[28]_inst_i_8_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(N_OBUF_inst_i_11_n_0),
        .O(\ALUResult_OBUF[26]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \ALUResult_OBUF[26]_inst_i_6 
       (.I0(SrcB_IBUF[30]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[31]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[26]),
        .O(\ALUResult_OBUF[26]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult_OBUF[26]_inst_i_7 
       (.I0(SrcB_IBUF[11]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[3]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[19]),
        .O(\ALUResult_OBUF[26]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[27]_inst 
       (.I(ALUResult_OBUF[27]),
        .O(ALUResult[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[27]_inst_i_2 
       (.I0(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[27]_inst_i_3 
       (.I0(\ALUResult_OBUF[28]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[27]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[27]_inst_i_5 
       (.I0(\ALUResult_OBUF[27]_inst_i_8_n_0 ),
        .I1(N_OBUF_inst_i_7_n_0),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[29]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(N_OBUF_inst_i_9_n_0),
        .O(\ALUResult_OBUF[27]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult_OBUF[27]_inst_i_6 
       (.I0(shamt5_IBUF[2]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[29]),
        .O(\ALUResult_OBUF[27]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult_OBUF[27]_inst_i_7 
       (.I0(shamt5_IBUF[2]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[27]),
        .O(\ALUResult_OBUF[27]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult_OBUF[27]_inst_i_8 
       (.I0(SrcB_IBUF[12]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[4]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[20]),
        .O(\ALUResult_OBUF[27]_inst_i_8_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[28]_inst 
       (.I(ALUResult_OBUF[28]),
        .O(ALUResult[28]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[28]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[29]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[28]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ALUResult_OBUF[28]_inst_i_3 
       (.I0(\ALUResult_OBUF[29]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[28]_inst_i_6_n_0 ),
        .I3(shamt5_IBUF[1]),
        .I4(\ALUResult_OBUF[28]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[28]_inst_i_5 
       (.I0(\ALUResult_OBUF[28]_inst_i_8_n_0 ),
        .I1(N_OBUF_inst_i_11_n_0),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(N_OBUF_inst_i_13_n_0),
        .O(\ALUResult_OBUF[28]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult_OBUF[28]_inst_i_6 
       (.I0(shamt5_IBUF[2]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[30]),
        .O(\ALUResult_OBUF[28]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \ALUResult_OBUF[28]_inst_i_7 
       (.I0(shamt5_IBUF[2]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[31]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[28]),
        .O(\ALUResult_OBUF[28]_inst_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult_OBUF[28]_inst_i_8 
       (.I0(SrcB_IBUF[13]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[5]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[21]),
        .O(\ALUResult_OBUF[28]_inst_i_8_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[29]_inst 
       (.I(ALUResult_OBUF[29]),
        .O(ALUResult[29]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult_OBUF[29]_inst_i_2 
       (.I0(\ALUResult_OBUF[30]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(N_OBUF_inst_i_5_n_0),
        .I3(\ALUResult_OBUF[29]_inst_i_5_n_0 ),
        .I4(shamt5_IBUF[0]),
        .O(\ALUResult_OBUF[29]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[29]_inst_i_3 
       (.I0(\ALUResult_OBUF[30]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[29]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[29]_inst_i_5 
       (.I0(\ALUResult_OBUF[29]_inst_i_7_n_0 ),
        .I1(N_OBUF_inst_i_9_n_0),
        .I2(shamt5_IBUF[1]),
        .I3(N_OBUF_inst_i_7_n_0),
        .I4(shamt5_IBUF[2]),
        .I5(N_OBUF_inst_i_8_n_0),
        .O(\ALUResult_OBUF[29]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \ALUResult_OBUF[29]_inst_i_6 
       (.I0(shamt5_IBUF[1]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[31]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[29]),
        .O(\ALUResult_OBUF[29]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult_OBUF[29]_inst_i_7 
       (.I0(SrcB_IBUF[14]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[6]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[22]),
        .O(\ALUResult_OBUF[29]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[2]_inst 
       (.I(ALUResult_OBUF[2]),
        .O(ALUResult[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[2]_inst_i_2 
       (.I0(\ALUResult_OBUF[2]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[3]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[2]_inst_i_3 
       (.I0(\ALUResult_OBUF[3]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[2]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[2]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \ALUResult_OBUF[2]_inst_i_5 
       (.I0(shamt5_IBUF[2]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[1]),
        .I3(shamt5_IBUF[4]),
        .I4(shamt5_IBUF[1]),
        .O(\ALUResult_OBUF[2]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[2]_inst_i_6 
       (.I0(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[4]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[6]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[2]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[2]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[2]_inst_i_7 
       (.I0(SrcB_IBUF[26]),
        .I1(SrcB_IBUF[10]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[18]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[2]),
        .O(\ALUResult_OBUF[2]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[30]_inst 
       (.I(ALUResult_OBUF[30]),
        .O(ALUResult[30]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ALUResult_OBUF[30]_inst_i_2 
       (.I0(\ALUResult_OBUF[30]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(N_OBUF_inst_i_5_n_0),
        .I3(shamt5_IBUF[0]),
        .I4(N_OBUF_inst_i_4_n_0),
        .O(\ALUResult_OBUF[30]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[30]_inst_i_3 
       (.I0(SrcB_IBUF[31]),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[30]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[30]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I1(shamt5_IBUF[2]),
        .I2(N_OBUF_inst_i_13_n_0),
        .O(\ALUResult_OBUF[30]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF01FF00FE00)) 
    \ALUResult_OBUF[30]_inst_i_6 
       (.I0(shamt5_IBUF[1]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[31]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[30]),
        .O(\ALUResult_OBUF[30]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ALUResult_OBUF[30]_inst_i_7 
       (.I0(SrcB_IBUF[15]),
        .I1(shamt5_IBUF[3]),
        .I2(SrcB_IBUF[7]),
        .I3(shamt5_IBUF[4]),
        .I4(SrcB_IBUF[23]),
        .O(\ALUResult_OBUF[30]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[31]_inst 
       (.I(ALUResult_OBUF[31]),
        .O(ALUResult[31]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[3]_inst 
       (.I(ALUResult_OBUF[3]),
        .O(ALUResult[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[3]_inst_i_2 
       (.I0(\ALUResult_OBUF[3]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[4]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[3]_inst_i_3 
       (.I0(\ALUResult_OBUF[4]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[3]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult_OBUF[3]_inst_i_5 
       (.I0(SrcB_IBUF[0]),
        .I1(shamt5_IBUF[1]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[2]),
        .I4(shamt5_IBUF[4]),
        .I5(shamt5_IBUF[2]),
        .O(\ALUResult_OBUF[3]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[3]_inst_i_6 
       (.I0(\ALUResult_OBUF[9]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[5]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[7]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[3]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[3]_inst_i_7 
       (.I0(SrcB_IBUF[27]),
        .I1(SrcB_IBUF[11]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[19]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[3]),
        .O(\ALUResult_OBUF[3]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[4]_inst 
       (.I(ALUResult_OBUF[4]),
        .O(ALUResult[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[4]_inst_i_2 
       (.I0(\ALUResult_OBUF[4]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[5]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[4]_inst_i_3 
       (.I0(\ALUResult_OBUF[5]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[4]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \ALUResult_OBUF[4]_inst_i_5 
       (.I0(SrcB_IBUF[1]),
        .I1(shamt5_IBUF[1]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[3]),
        .I4(shamt5_IBUF[4]),
        .I5(shamt5_IBUF[2]),
        .O(\ALUResult_OBUF[4]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[4]_inst_i_6 
       (.I0(\ALUResult_OBUF[10]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[6]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[4]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[4]_inst_i_7 
       (.I0(SrcB_IBUF[28]),
        .I1(SrcB_IBUF[12]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[20]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[4]),
        .O(\ALUResult_OBUF[4]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[5]_inst 
       (.I(ALUResult_OBUF[5]),
        .O(ALUResult[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[5]_inst_i_2 
       (.I0(\ALUResult_OBUF[5]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[6]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[5]_inst_i_3 
       (.I0(\ALUResult_OBUF[6]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[5]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult_OBUF[5]_inst_i_5 
       (.I0(shamt5_IBUF[3]),
        .I1(SrcB_IBUF[2]),
        .I2(shamt5_IBUF[4]),
        .I3(shamt5_IBUF[2]),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[7]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[5]_inst_i_6 
       (.I0(\ALUResult_OBUF[11]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[7]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[9]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[5]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[5]_inst_i_7 
       (.I0(SrcB_IBUF[29]),
        .I1(SrcB_IBUF[13]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[21]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[5]),
        .O(\ALUResult_OBUF[5]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[6]_inst 
       (.I(ALUResult_OBUF[6]),
        .O(ALUResult[6]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \ALUResult_OBUF[6]_inst_i_2 
       (.I0(\ALUResult_OBUF[7]_inst_i_5_n_0 ),
        .I1(shamt5_IBUF[1]),
        .I2(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[6]_inst_i_5_n_0 ),
        .I4(shamt5_IBUF[0]),
        .O(\ALUResult_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[6]_inst_i_3 
       (.I0(\ALUResult_OBUF[7]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[6]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \ALUResult_OBUF[6]_inst_i_5 
       (.I0(shamt5_IBUF[3]),
        .I1(SrcB_IBUF[3]),
        .I2(shamt5_IBUF[4]),
        .I3(shamt5_IBUF[2]),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[8]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[6]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[6]_inst_i_6 
       (.I0(\ALUResult_OBUF[12]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[10]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[6]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[6]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[6]_inst_i_7 
       (.I0(SrcB_IBUF[30]),
        .I1(SrcB_IBUF[14]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[22]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[6]),
        .O(\ALUResult_OBUF[6]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[7]_inst 
       (.I(ALUResult_OBUF[7]),
        .O(ALUResult[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[7]_inst_i_2 
       (.I0(\ALUResult_OBUF[7]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[8]_inst_i_5_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[10]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[7]_inst_i_3 
       (.I0(\ALUResult_OBUF[8]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[7]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult_OBUF[7]_inst_i_5 
       (.I0(SrcB_IBUF[0]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[4]),
        .I4(shamt5_IBUF[3]),
        .O(\ALUResult_OBUF[7]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[7]_inst_i_6 
       (.I0(\ALUResult_OBUF[13]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[9]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[11]_inst_i_8_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[7]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[7]_inst_i_7 
       (.I0(SrcB_IBUF[31]),
        .I1(SrcB_IBUF[15]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[23]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[7]),
        .O(\ALUResult_OBUF[7]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[8]_inst 
       (.I(ALUResult_OBUF[8]),
        .O(ALUResult[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[8]_inst_i_2 
       (.I0(\ALUResult_OBUF[8]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[10]_inst_i_5_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[8]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[8]_inst_i_3 
       (.I0(\ALUResult_OBUF[9]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[8]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[8]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult_OBUF[8]_inst_i_5 
       (.I0(SrcB_IBUF[1]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[5]),
        .I4(shamt5_IBUF[3]),
        .O(\ALUResult_OBUF[8]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[8]_inst_i_6 
       (.I0(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[10]_inst_i_7_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[12]_inst_i_8_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[8]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[8]_inst_i_7 
       (.I0(SrcB_IBUF[31]),
        .I1(SrcB_IBUF[16]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[24]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[8]),
        .O(\ALUResult_OBUF[8]_inst_i_7_n_0 ));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[9]_inst 
       (.I(ALUResult_OBUF[9]),
        .O(ALUResult[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[9]_inst_i_2 
       (.I0(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I2(shamt5_IBUF[0]),
        .I3(\ALUResult_OBUF[10]_inst_i_5_n_0 ),
        .I4(shamt5_IBUF[1]),
        .I5(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[9]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[9]_inst_i_3 
       (.I0(\ALUResult_OBUF[10]_inst_i_6_n_0 ),
        .I1(shamt5_IBUF[0]),
        .I2(\ALUResult_OBUF[9]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[9]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \ALUResult_OBUF[9]_inst_i_5 
       (.I0(SrcB_IBUF[2]),
        .I1(shamt5_IBUF[2]),
        .I2(shamt5_IBUF[4]),
        .I3(SrcB_IBUF[6]),
        .I4(shamt5_IBUF[3]),
        .O(\ALUResult_OBUF[9]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[9]_inst_i_6 
       (.I0(\ALUResult_OBUF[15]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[11]_inst_i_8_n_0 ),
        .I2(shamt5_IBUF[1]),
        .I3(\ALUResult_OBUF[13]_inst_i_7_n_0 ),
        .I4(shamt5_IBUF[2]),
        .I5(\ALUResult_OBUF[9]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[9]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ALUResult_OBUF[9]_inst_i_7 
       (.I0(SrcB_IBUF[31]),
        .I1(SrcB_IBUF[17]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[25]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[9]),
        .O(\ALUResult_OBUF[9]_inst_i_7_n_0 ));
  ADD_SUB AddSub
       (.ALUControl_IBUF(ALUControl_IBUF),
        .\ALUResult[0] (\ALUResult_OBUF[0]_inst_i_2_n_0 ),
        .\ALUResult[0]_0 (\ALUResult_OBUF[0]_inst_i_3_n_0 ),
        .\ALUResult[0]_1 (\ALUResult_OBUF[0]_inst_i_4_n_0 ),
        .\ALUResult[0]_2 (\ALUResult_OBUF[0]_inst_i_5_n_0 ),
        .\ALUResult[10] (\ALUResult_OBUF[10]_inst_i_2_n_0 ),
        .\ALUResult[10]_0 (\ALUResult_OBUF[10]_inst_i_3_n_0 ),
        .\ALUResult[11] (\ALUResult_OBUF[11]_inst_i_2_n_0 ),
        .\ALUResult[11]_0 (\ALUResult_OBUF[11]_inst_i_3_n_0 ),
        .\ALUResult[12] (\ALUResult_OBUF[12]_inst_i_2_n_0 ),
        .\ALUResult[12]_0 (\ALUResult_OBUF[12]_inst_i_3_n_0 ),
        .\ALUResult[13] (\ALUResult_OBUF[13]_inst_i_2_n_0 ),
        .\ALUResult[13]_0 (\ALUResult_OBUF[13]_inst_i_3_n_0 ),
        .\ALUResult[14] (\ALUResult_OBUF[14]_inst_i_2_n_0 ),
        .\ALUResult[14]_0 (\ALUResult_OBUF[14]_inst_i_3_n_0 ),
        .\ALUResult[15] (\ALUResult_OBUF[15]_inst_i_2_n_0 ),
        .\ALUResult[15]_0 (\ALUResult_OBUF[15]_inst_i_3_n_0 ),
        .\ALUResult[16] (\ALUResult_OBUF[16]_inst_i_2_n_0 ),
        .\ALUResult[16]_0 (\ALUResult_OBUF[16]_inst_i_3_n_0 ),
        .\ALUResult[17] (\ALUResult_OBUF[17]_inst_i_2_n_0 ),
        .\ALUResult[17]_0 (\ALUResult_OBUF[17]_inst_i_3_n_0 ),
        .\ALUResult[18] (\ALUResult_OBUF[18]_inst_i_2_n_0 ),
        .\ALUResult[18]_0 (\ALUResult_OBUF[18]_inst_i_3_n_0 ),
        .\ALUResult[19] (\ALUResult_OBUF[19]_inst_i_2_n_0 ),
        .\ALUResult[19]_0 (\ALUResult_OBUF[19]_inst_i_3_n_0 ),
        .\ALUResult[1] (\ALUResult_OBUF[1]_inst_i_2_n_0 ),
        .\ALUResult[1]_0 (\ALUResult_OBUF[1]_inst_i_3_n_0 ),
        .\ALUResult[20] (\ALUResult_OBUF[20]_inst_i_2_n_0 ),
        .\ALUResult[20]_0 (\ALUResult_OBUF[20]_inst_i_3_n_0 ),
        .\ALUResult[21] (\ALUResult_OBUF[21]_inst_i_2_n_0 ),
        .\ALUResult[21]_0 (\ALUResult_OBUF[21]_inst_i_3_n_0 ),
        .\ALUResult[22] (\ALUResult_OBUF[22]_inst_i_2_n_0 ),
        .\ALUResult[22]_0 (\ALUResult_OBUF[22]_inst_i_3_n_0 ),
        .\ALUResult[23] (\ALUResult_OBUF[23]_inst_i_2_n_0 ),
        .\ALUResult[23]_0 (\ALUResult_OBUF[23]_inst_i_3_n_0 ),
        .\ALUResult[24] (\ALUResult_OBUF[24]_inst_i_2_n_0 ),
        .\ALUResult[24]_0 (\ALUResult_OBUF[24]_inst_i_3_n_0 ),
        .\ALUResult[25] (\ALUResult_OBUF[25]_inst_i_2_n_0 ),
        .\ALUResult[25]_0 (\ALUResult_OBUF[25]_inst_i_3_n_0 ),
        .\ALUResult[26] (\ALUResult_OBUF[26]_inst_i_2_n_0 ),
        .\ALUResult[26]_0 (\ALUResult_OBUF[26]_inst_i_3_n_0 ),
        .\ALUResult[27] (\ALUResult_OBUF[27]_inst_i_2_n_0 ),
        .\ALUResult[27]_0 (\ALUResult_OBUF[27]_inst_i_3_n_0 ),
        .\ALUResult[28] (\ALUResult_OBUF[28]_inst_i_2_n_0 ),
        .\ALUResult[28]_0 (\ALUResult_OBUF[28]_inst_i_3_n_0 ),
        .\ALUResult[29] (\ALUResult_OBUF[29]_inst_i_2_n_0 ),
        .\ALUResult[29]_0 (\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .\ALUResult[2] (\ALUResult_OBUF[2]_inst_i_2_n_0 ),
        .\ALUResult[2]_0 (\ALUResult_OBUF[2]_inst_i_3_n_0 ),
        .\ALUResult[30] (\ALUResult_OBUF[30]_inst_i_2_n_0 ),
        .\ALUResult[30]_0 (\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .\ALUResult[31] (N_OBUF_inst_i_2_n_0),
        .\ALUResult[3] (\ALUResult_OBUF[3]_inst_i_2_n_0 ),
        .\ALUResult[3]_0 (\ALUResult_OBUF[3]_inst_i_3_n_0 ),
        .\ALUResult[4] (\ALUResult_OBUF[4]_inst_i_2_n_0 ),
        .\ALUResult[4]_0 (\ALUResult_OBUF[4]_inst_i_3_n_0 ),
        .\ALUResult[5] (\ALUResult_OBUF[5]_inst_i_2_n_0 ),
        .\ALUResult[5]_0 (\ALUResult_OBUF[5]_inst_i_3_n_0 ),
        .\ALUResult[6] (\ALUResult_OBUF[6]_inst_i_2_n_0 ),
        .\ALUResult[6]_0 (\ALUResult_OBUF[6]_inst_i_3_n_0 ),
        .\ALUResult[7] (\ALUResult_OBUF[7]_inst_i_2_n_0 ),
        .\ALUResult[7]_0 (\ALUResult_OBUF[7]_inst_i_3_n_0 ),
        .\ALUResult[8] (\ALUResult_OBUF[8]_inst_i_2_n_0 ),
        .\ALUResult[8]_0 (\ALUResult_OBUF[8]_inst_i_3_n_0 ),
        .\ALUResult[9] (\ALUResult_OBUF[9]_inst_i_2_n_0 ),
        .\ALUResult[9]_0 (\ALUResult_OBUF[9]_inst_i_3_n_0 ),
        .ALUResult_OBUF(ALUResult_OBUF),
        .CO(AddSub_n_1),
        .SrcA_IBUF(SrcA_IBUF),
        .SrcB_IBUF(SrcB_IBUF),
        .SrcB_integer0(SrcB_integer0),
        .V_OBUF(V_OBUF),
        .Z_OBUF(Z_OBUF),
        .shamt5_IBUF(shamt5_IBUF[0]));
  (* IOB = "TRUE" *) 
  OBUF C_OBUF_inst
       (.I(C_OBUF),
        .O(C));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    C_OBUF_inst_i_1
       (.I0(Carry),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[1]),
        .I3(ALUControl_IBUF[2]),
        .O(C_OBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 C_OBUF_inst_i_2
       (.CI(1'b0),
        .CO(NLW_C_OBUF_inst_i_2_CO_UNCONNECTED[3:0]),
        .CYINIT(AddSub_n_1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_C_OBUF_inst_i_2_O_UNCONNECTED[3:2],Carry,NLW_C_OBUF_inst_i_2_O_UNCONNECTED[0]}),
        .S({1'b0,1'b0,C_OBUF_inst_i_3_n_0,1'b1}));
  LUT4 #(
    .INIT(16'hB847)) 
    C_OBUF_inst_i_3
       (.I0(SrcB_integer0[31]),
        .I1(ALUControl_IBUF[0]),
        .I2(SrcB_IBUF[31]),
        .I3(SrcA_IBUF[31]),
        .O(C_OBUF_inst_i_3_n_0));
  (* IOB = "TRUE" *) 
  OBUF N_OBUF_inst
       (.I(ALUResult_OBUF[31]),
        .O(N));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_10
       (.I0(SrcB_IBUF[6]),
        .I1(SrcB_IBUF[22]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[14]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[30]),
        .O(N_OBUF_inst_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_11
       (.I0(SrcB_IBUF[1]),
        .I1(SrcB_IBUF[17]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[9]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[25]),
        .O(N_OBUF_inst_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_12
       (.I0(SrcB_IBUF[5]),
        .I1(SrcB_IBUF[21]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[13]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[29]),
        .O(N_OBUF_inst_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_13
       (.I0(SrcB_IBUF[3]),
        .I1(SrcB_IBUF[19]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[11]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[27]),
        .O(N_OBUF_inst_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_14
       (.I0(SrcB_IBUF[7]),
        .I1(SrcB_IBUF[23]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[15]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[31]),
        .O(N_OBUF_inst_i_14_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    N_OBUF_inst_i_2
       (.I0(N_OBUF_inst_i_4_n_0),
        .I1(shamt5_IBUF[0]),
        .I2(N_OBUF_inst_i_5_n_0),
        .I3(shamt5_IBUF[1]),
        .I4(N_OBUF_inst_i_6_n_0),
        .O(N_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_4
       (.I0(N_OBUF_inst_i_7_n_0),
        .I1(N_OBUF_inst_i_8_n_0),
        .I2(shamt5_IBUF[1]),
        .I3(N_OBUF_inst_i_9_n_0),
        .I4(shamt5_IBUF[2]),
        .I5(N_OBUF_inst_i_10_n_0),
        .O(N_OBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    N_OBUF_inst_i_5
       (.I0(N_OBUF_inst_i_11_n_0),
        .I1(shamt5_IBUF[2]),
        .I2(N_OBUF_inst_i_12_n_0),
        .O(N_OBUF_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    N_OBUF_inst_i_6
       (.I0(N_OBUF_inst_i_13_n_0),
        .I1(shamt5_IBUF[2]),
        .I2(N_OBUF_inst_i_14_n_0),
        .O(N_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_7
       (.I0(SrcB_IBUF[0]),
        .I1(SrcB_IBUF[16]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[8]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[24]),
        .O(N_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_8
       (.I0(SrcB_IBUF[4]),
        .I1(SrcB_IBUF[20]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[12]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[28]),
        .O(N_OBUF_inst_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    N_OBUF_inst_i_9
       (.I0(SrcB_IBUF[2]),
        .I1(SrcB_IBUF[18]),
        .I2(shamt5_IBUF[3]),
        .I3(SrcB_IBUF[10]),
        .I4(shamt5_IBUF[4]),
        .I5(SrcB_IBUF[26]),
        .O(N_OBUF_inst_i_9_n_0));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[0]_inst 
       (.I(SrcA[0]),
        .O(SrcA_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[10]_inst 
       (.I(SrcA[10]),
        .O(SrcA_IBUF[10]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[11]_inst 
       (.I(SrcA[11]),
        .O(SrcA_IBUF[11]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[12]_inst 
       (.I(SrcA[12]),
        .O(SrcA_IBUF[12]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[13]_inst 
       (.I(SrcA[13]),
        .O(SrcA_IBUF[13]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[14]_inst 
       (.I(SrcA[14]),
        .O(SrcA_IBUF[14]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[15]_inst 
       (.I(SrcA[15]),
        .O(SrcA_IBUF[15]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[16]_inst 
       (.I(SrcA[16]),
        .O(SrcA_IBUF[16]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[17]_inst 
       (.I(SrcA[17]),
        .O(SrcA_IBUF[17]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[18]_inst 
       (.I(SrcA[18]),
        .O(SrcA_IBUF[18]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[19]_inst 
       (.I(SrcA[19]),
        .O(SrcA_IBUF[19]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[1]_inst 
       (.I(SrcA[1]),
        .O(SrcA_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[20]_inst 
       (.I(SrcA[20]),
        .O(SrcA_IBUF[20]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[21]_inst 
       (.I(SrcA[21]),
        .O(SrcA_IBUF[21]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[22]_inst 
       (.I(SrcA[22]),
        .O(SrcA_IBUF[22]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[23]_inst 
       (.I(SrcA[23]),
        .O(SrcA_IBUF[23]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[24]_inst 
       (.I(SrcA[24]),
        .O(SrcA_IBUF[24]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[25]_inst 
       (.I(SrcA[25]),
        .O(SrcA_IBUF[25]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[26]_inst 
       (.I(SrcA[26]),
        .O(SrcA_IBUF[26]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[27]_inst 
       (.I(SrcA[27]),
        .O(SrcA_IBUF[27]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[28]_inst 
       (.I(SrcA[28]),
        .O(SrcA_IBUF[28]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[29]_inst 
       (.I(SrcA[29]),
        .O(SrcA_IBUF[29]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[2]_inst 
       (.I(SrcA[2]),
        .O(SrcA_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[30]_inst 
       (.I(SrcA[30]),
        .O(SrcA_IBUF[30]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[31]_inst 
       (.I(SrcA[31]),
        .O(SrcA_IBUF[31]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[3]_inst 
       (.I(SrcA[3]),
        .O(SrcA_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[4]_inst 
       (.I(SrcA[4]),
        .O(SrcA_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[5]_inst 
       (.I(SrcA[5]),
        .O(SrcA_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[6]_inst 
       (.I(SrcA[6]),
        .O(SrcA_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[7]_inst 
       (.I(SrcA[7]),
        .O(SrcA_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[8]_inst 
       (.I(SrcA[8]),
        .O(SrcA_IBUF[8]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcA_IBUF[9]_inst 
       (.I(SrcA[9]),
        .O(SrcA_IBUF[9]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[0]_inst 
       (.I(SrcB[0]),
        .O(SrcB_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[10]_inst 
       (.I(SrcB[10]),
        .O(SrcB_IBUF[10]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[11]_inst 
       (.I(SrcB[11]),
        .O(SrcB_IBUF[11]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[12]_inst 
       (.I(SrcB[12]),
        .O(SrcB_IBUF[12]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[13]_inst 
       (.I(SrcB[13]),
        .O(SrcB_IBUF[13]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[14]_inst 
       (.I(SrcB[14]),
        .O(SrcB_IBUF[14]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[15]_inst 
       (.I(SrcB[15]),
        .O(SrcB_IBUF[15]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[16]_inst 
       (.I(SrcB[16]),
        .O(SrcB_IBUF[16]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[17]_inst 
       (.I(SrcB[17]),
        .O(SrcB_IBUF[17]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[18]_inst 
       (.I(SrcB[18]),
        .O(SrcB_IBUF[18]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[19]_inst 
       (.I(SrcB[19]),
        .O(SrcB_IBUF[19]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[1]_inst 
       (.I(SrcB[1]),
        .O(SrcB_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[20]_inst 
       (.I(SrcB[20]),
        .O(SrcB_IBUF[20]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[21]_inst 
       (.I(SrcB[21]),
        .O(SrcB_IBUF[21]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[22]_inst 
       (.I(SrcB[22]),
        .O(SrcB_IBUF[22]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[23]_inst 
       (.I(SrcB[23]),
        .O(SrcB_IBUF[23]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[24]_inst 
       (.I(SrcB[24]),
        .O(SrcB_IBUF[24]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[25]_inst 
       (.I(SrcB[25]),
        .O(SrcB_IBUF[25]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[26]_inst 
       (.I(SrcB[26]),
        .O(SrcB_IBUF[26]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[27]_inst 
       (.I(SrcB[27]),
        .O(SrcB_IBUF[27]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[28]_inst 
       (.I(SrcB[28]),
        .O(SrcB_IBUF[28]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[29]_inst 
       (.I(SrcB[29]),
        .O(SrcB_IBUF[29]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[2]_inst 
       (.I(SrcB[2]),
        .O(SrcB_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[30]_inst 
       (.I(SrcB[30]),
        .O(SrcB_IBUF[30]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[31]_inst 
       (.I(SrcB[31]),
        .O(SrcB_IBUF[31]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[3]_inst 
       (.I(SrcB[3]),
        .O(SrcB_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[4]_inst 
       (.I(SrcB[4]),
        .O(SrcB_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[5]_inst 
       (.I(SrcB[5]),
        .O(SrcB_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[6]_inst 
       (.I(SrcB[6]),
        .O(SrcB_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[7]_inst 
       (.I(SrcB[7]),
        .O(SrcB_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[8]_inst 
       (.I(SrcB[8]),
        .O(SrcB_IBUF[8]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \SrcB_IBUF[9]_inst 
       (.I(SrcB[9]),
        .O(SrcB_IBUF[9]));
  (* IOB = "TRUE" *) 
  OBUF V_OBUF_inst
       (.I(V_OBUF),
        .O(V));
  (* IOB = "TRUE" *) 
  OBUF Z_OBUF_inst
       (.I(Z_OBUF),
        .O(Z));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \shamt5_IBUF[0]_inst 
       (.I(shamt5[0]),
        .O(shamt5_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \shamt5_IBUF[1]_inst 
       (.I(shamt5[1]),
        .O(shamt5_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \shamt5_IBUF[2]_inst 
       (.I(shamt5[2]),
        .O(shamt5_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \shamt5_IBUF[3]_inst 
       (.I(shamt5[3]),
        .O(shamt5_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \shamt5_IBUF[4]_inst 
       (.I(shamt5[4]),
        .O(shamt5_IBUF[4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__0_i_5
       (.CI(sum0_carry_i_5_n_0),
        .CO({sum0_carry__0_i_5_n_0,NLW_sum0_carry__0_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[8:5]),
        .S(p_0_in[8:5]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__0_i_6
       (.I0(SrcB_IBUF[8]),
        .O(p_0_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__0_i_7
       (.I0(SrcB_IBUF[7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__0_i_8
       (.I0(SrcB_IBUF[6]),
        .O(p_0_in[6]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__0_i_9
       (.I0(SrcB_IBUF[5]),
        .O(p_0_in[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__1_i_5
       (.CI(sum0_carry__0_i_5_n_0),
        .CO({sum0_carry__1_i_5_n_0,NLW_sum0_carry__1_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[12:9]),
        .S(p_0_in[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__1_i_6
       (.I0(SrcB_IBUF[12]),
        .O(p_0_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__1_i_7
       (.I0(SrcB_IBUF[11]),
        .O(p_0_in[11]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__1_i_8
       (.I0(SrcB_IBUF[10]),
        .O(p_0_in[10]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__1_i_9
       (.I0(SrcB_IBUF[9]),
        .O(p_0_in[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__2_i_5
       (.CI(sum0_carry__1_i_5_n_0),
        .CO({sum0_carry__2_i_5_n_0,NLW_sum0_carry__2_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[16:13]),
        .S(p_0_in[16:13]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__2_i_6
       (.I0(SrcB_IBUF[16]),
        .O(p_0_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__2_i_7
       (.I0(SrcB_IBUF[15]),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__2_i_8
       (.I0(SrcB_IBUF[14]),
        .O(p_0_in[14]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__2_i_9
       (.I0(SrcB_IBUF[13]),
        .O(p_0_in[13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__3_i_5
       (.CI(sum0_carry__2_i_5_n_0),
        .CO({sum0_carry__3_i_5_n_0,NLW_sum0_carry__3_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[20:17]),
        .S(p_0_in[20:17]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__3_i_6
       (.I0(SrcB_IBUF[20]),
        .O(p_0_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__3_i_7
       (.I0(SrcB_IBUF[19]),
        .O(p_0_in[19]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__3_i_8
       (.I0(SrcB_IBUF[18]),
        .O(p_0_in[18]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__3_i_9
       (.I0(SrcB_IBUF[17]),
        .O(p_0_in[17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__4_i_5
       (.CI(sum0_carry__3_i_5_n_0),
        .CO({sum0_carry__4_i_5_n_0,NLW_sum0_carry__4_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[24:21]),
        .S(p_0_in[24:21]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__4_i_6
       (.I0(SrcB_IBUF[24]),
        .O(p_0_in[24]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__4_i_7
       (.I0(SrcB_IBUF[23]),
        .O(p_0_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__4_i_8
       (.I0(SrcB_IBUF[22]),
        .O(p_0_in[22]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__4_i_9
       (.I0(SrcB_IBUF[21]),
        .O(p_0_in[21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__5_i_5
       (.CI(sum0_carry__4_i_5_n_0),
        .CO({sum0_carry__5_i_5_n_0,NLW_sum0_carry__5_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[28:25]),
        .S(p_0_in[28:25]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__5_i_6
       (.I0(SrcB_IBUF[28]),
        .O(p_0_in[28]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__5_i_7
       (.I0(SrcB_IBUF[27]),
        .O(p_0_in[27]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__5_i_8
       (.I0(SrcB_IBUF[26]),
        .O(p_0_in[26]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__5_i_9
       (.I0(SrcB_IBUF[25]),
        .O(p_0_in[25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__6_i_6
       (.CI(sum0_carry__5_i_5_n_0),
        .CO(NLW_sum0_carry__6_i_6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sum0_carry__6_i_6_O_UNCONNECTED[3],SrcB_integer0[31:29]}),
        .S({1'b0,p_0_in[31:29]}));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__6_i_7
       (.I0(SrcB_IBUF[31]),
        .O(p_0_in[31]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__6_i_8
       (.I0(SrcB_IBUF[30]),
        .O(p_0_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__6_i_9
       (.I0(SrcB_IBUF[29]),
        .O(p_0_in[29]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry_i_10
       (.I0(SrcB_IBUF[1]),
        .O(p_0_in[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry_i_5
       (.CI(1'b0),
        .CO({sum0_carry_i_5_n_0,NLW_sum0_carry_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[4:1]),
        .S(p_0_in[4:1]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry_i_6
       (.I0(SrcB_IBUF[0]),
        .O(p_0_in[0]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry_i_7
       (.I0(SrcB_IBUF[4]),
        .O(p_0_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry_i_8
       (.I0(SrcB_IBUF[3]),
        .O(p_0_in[3]));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry_i_9
       (.I0(SrcB_IBUF[2]),
        .O(p_0_in[2]));
endmodule

module adder
   (V_OBUF,
    CO,
    Z_OBUF,
    ALUResult_OBUF,
    SrcA_IBUF,
    ALUControl_IBUF,
    \ALUResult[0] ,
    shamt5_IBUF,
    \ALUResult[0]_0 ,
    \ALUResult[0]_1 ,
    \ALUResult[0]_2 ,
    \ALUResult[1] ,
    \ALUResult[1]_0 ,
    \ALUResult[2] ,
    \ALUResult[2]_0 ,
    \ALUResult[3] ,
    \ALUResult[3]_0 ,
    \ALUResult[4] ,
    \ALUResult[4]_0 ,
    \ALUResult[5] ,
    \ALUResult[5]_0 ,
    \ALUResult[6] ,
    \ALUResult[6]_0 ,
    \ALUResult[7] ,
    \ALUResult[7]_0 ,
    \ALUResult[8] ,
    \ALUResult[8]_0 ,
    \ALUResult[9] ,
    \ALUResult[9]_0 ,
    \ALUResult[10] ,
    \ALUResult[10]_0 ,
    \ALUResult[11] ,
    \ALUResult[11]_0 ,
    \ALUResult[12] ,
    \ALUResult[12]_0 ,
    \ALUResult[13] ,
    \ALUResult[13]_0 ,
    \ALUResult[14] ,
    \ALUResult[14]_0 ,
    \ALUResult[15] ,
    \ALUResult[15]_0 ,
    \ALUResult[16] ,
    \ALUResult[16]_0 ,
    \ALUResult[17] ,
    \ALUResult[17]_0 ,
    \ALUResult[18] ,
    \ALUResult[18]_0 ,
    \ALUResult[19] ,
    \ALUResult[19]_0 ,
    \ALUResult[20] ,
    \ALUResult[20]_0 ,
    \ALUResult[21] ,
    \ALUResult[21]_0 ,
    \ALUResult[22] ,
    \ALUResult[22]_0 ,
    \ALUResult[23] ,
    \ALUResult[23]_0 ,
    \ALUResult[24] ,
    \ALUResult[24]_0 ,
    \ALUResult[25] ,
    \ALUResult[25]_0 ,
    \ALUResult[26] ,
    \ALUResult[26]_0 ,
    \ALUResult[27] ,
    \ALUResult[27]_0 ,
    \ALUResult[28] ,
    \ALUResult[28]_0 ,
    \ALUResult[29] ,
    \ALUResult[29]_0 ,
    \ALUResult[30] ,
    \ALUResult[30]_0 ,
    \ALUResult[31] ,
    SrcB_IBUF,
    SrcB_integer0);
  output V_OBUF;
  output [0:0]CO;
  output Z_OBUF;
  output [31:0]ALUResult_OBUF;
  input [31:0]SrcA_IBUF;
  input [3:0]ALUControl_IBUF;
  input \ALUResult[0] ;
  input [0:0]shamt5_IBUF;
  input \ALUResult[0]_0 ;
  input \ALUResult[0]_1 ;
  input \ALUResult[0]_2 ;
  input \ALUResult[1] ;
  input \ALUResult[1]_0 ;
  input \ALUResult[2] ;
  input \ALUResult[2]_0 ;
  input \ALUResult[3] ;
  input \ALUResult[3]_0 ;
  input \ALUResult[4] ;
  input \ALUResult[4]_0 ;
  input \ALUResult[5] ;
  input \ALUResult[5]_0 ;
  input \ALUResult[6] ;
  input \ALUResult[6]_0 ;
  input \ALUResult[7] ;
  input \ALUResult[7]_0 ;
  input \ALUResult[8] ;
  input \ALUResult[8]_0 ;
  input \ALUResult[9] ;
  input \ALUResult[9]_0 ;
  input \ALUResult[10] ;
  input \ALUResult[10]_0 ;
  input \ALUResult[11] ;
  input \ALUResult[11]_0 ;
  input \ALUResult[12] ;
  input \ALUResult[12]_0 ;
  input \ALUResult[13] ;
  input \ALUResult[13]_0 ;
  input \ALUResult[14] ;
  input \ALUResult[14]_0 ;
  input \ALUResult[15] ;
  input \ALUResult[15]_0 ;
  input \ALUResult[16] ;
  input \ALUResult[16]_0 ;
  input \ALUResult[17] ;
  input \ALUResult[17]_0 ;
  input \ALUResult[18] ;
  input \ALUResult[18]_0 ;
  input \ALUResult[19] ;
  input \ALUResult[19]_0 ;
  input \ALUResult[20] ;
  input \ALUResult[20]_0 ;
  input \ALUResult[21] ;
  input \ALUResult[21]_0 ;
  input \ALUResult[22] ;
  input \ALUResult[22]_0 ;
  input \ALUResult[23] ;
  input \ALUResult[23]_0 ;
  input \ALUResult[24] ;
  input \ALUResult[24]_0 ;
  input \ALUResult[25] ;
  input \ALUResult[25]_0 ;
  input \ALUResult[26] ;
  input \ALUResult[26]_0 ;
  input \ALUResult[27] ;
  input \ALUResult[27]_0 ;
  input \ALUResult[28] ;
  input \ALUResult[28]_0 ;
  input \ALUResult[29] ;
  input \ALUResult[29]_0 ;
  input \ALUResult[30] ;
  input \ALUResult[30]_0 ;
  input \ALUResult[31] ;
  input [31:0]SrcB_IBUF;
  input [30:0]SrcB_integer0;

  wire [3:0]ALUControl_IBUF;
  wire \ALUResult[0] ;
  wire \ALUResult[0]_0 ;
  wire \ALUResult[0]_1 ;
  wire \ALUResult[0]_2 ;
  wire \ALUResult[10] ;
  wire \ALUResult[10]_0 ;
  wire \ALUResult[11] ;
  wire \ALUResult[11]_0 ;
  wire \ALUResult[12] ;
  wire \ALUResult[12]_0 ;
  wire \ALUResult[13] ;
  wire \ALUResult[13]_0 ;
  wire \ALUResult[14] ;
  wire \ALUResult[14]_0 ;
  wire \ALUResult[15] ;
  wire \ALUResult[15]_0 ;
  wire \ALUResult[16] ;
  wire \ALUResult[16]_0 ;
  wire \ALUResult[17] ;
  wire \ALUResult[17]_0 ;
  wire \ALUResult[18] ;
  wire \ALUResult[18]_0 ;
  wire \ALUResult[19] ;
  wire \ALUResult[19]_0 ;
  wire \ALUResult[1] ;
  wire \ALUResult[1]_0 ;
  wire \ALUResult[20] ;
  wire \ALUResult[20]_0 ;
  wire \ALUResult[21] ;
  wire \ALUResult[21]_0 ;
  wire \ALUResult[22] ;
  wire \ALUResult[22]_0 ;
  wire \ALUResult[23] ;
  wire \ALUResult[23]_0 ;
  wire \ALUResult[24] ;
  wire \ALUResult[24]_0 ;
  wire \ALUResult[25] ;
  wire \ALUResult[25]_0 ;
  wire \ALUResult[26] ;
  wire \ALUResult[26]_0 ;
  wire \ALUResult[27] ;
  wire \ALUResult[27]_0 ;
  wire \ALUResult[28] ;
  wire \ALUResult[28]_0 ;
  wire \ALUResult[29] ;
  wire \ALUResult[29]_0 ;
  wire \ALUResult[2] ;
  wire \ALUResult[2]_0 ;
  wire \ALUResult[30] ;
  wire \ALUResult[30]_0 ;
  wire \ALUResult[31] ;
  wire \ALUResult[3] ;
  wire \ALUResult[3]_0 ;
  wire \ALUResult[4] ;
  wire \ALUResult[4]_0 ;
  wire \ALUResult[5] ;
  wire \ALUResult[5]_0 ;
  wire \ALUResult[6] ;
  wire \ALUResult[6]_0 ;
  wire \ALUResult[7] ;
  wire \ALUResult[7]_0 ;
  wire \ALUResult[8] ;
  wire \ALUResult[8]_0 ;
  wire \ALUResult[9] ;
  wire \ALUResult[9]_0 ;
  wire [31:0]ALUResult_OBUF;
  wire \ALUResult_OBUF[0]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_4_n_0 ;
  wire [0:0]CO;
  wire N_OBUF_inst_i_3_n_0;
  wire [31:0]S;
  wire [31:0]SrcA_IBUF;
  wire [31:0]SrcB_IBUF;
  wire [30:0]SrcB_integer0;
  wire V_OBUF;
  wire Z_OBUF;
  wire Z_OBUF_inst_i_2_n_0;
  wire Z_OBUF_inst_i_3_n_0;
  wire Z_OBUF_inst_i_4_n_0;
  wire Z_OBUF_inst_i_5_n_0;
  wire Z_OBUF_inst_i_6_n_0;
  wire Z_OBUF_inst_i_7_n_0;
  wire Z_OBUF_inst_i_8_n_0;
  wire Z_OBUF_inst_i_9_n_0;
  wire [0:0]shamt5_IBUF;
  wire sum0_carry__0_i_1_n_0;
  wire sum0_carry__0_i_2_n_0;
  wire sum0_carry__0_i_3_n_0;
  wire sum0_carry__0_i_4_n_0;
  wire sum0_carry__0_n_0;
  wire sum0_carry__1_i_1_n_0;
  wire sum0_carry__1_i_2_n_0;
  wire sum0_carry__1_i_3_n_0;
  wire sum0_carry__1_i_4_n_0;
  wire sum0_carry__1_n_0;
  wire sum0_carry__2_i_1_n_0;
  wire sum0_carry__2_i_2_n_0;
  wire sum0_carry__2_i_3_n_0;
  wire sum0_carry__2_i_4_n_0;
  wire sum0_carry__2_n_0;
  wire sum0_carry__3_i_1_n_0;
  wire sum0_carry__3_i_2_n_0;
  wire sum0_carry__3_i_3_n_0;
  wire sum0_carry__3_i_4_n_0;
  wire sum0_carry__3_n_0;
  wire sum0_carry__4_i_1_n_0;
  wire sum0_carry__4_i_2_n_0;
  wire sum0_carry__4_i_3_n_0;
  wire sum0_carry__4_i_4_n_0;
  wire sum0_carry__4_n_0;
  wire sum0_carry__5_i_1_n_0;
  wire sum0_carry__5_i_2_n_0;
  wire sum0_carry__5_i_3_n_0;
  wire sum0_carry__5_i_4_n_0;
  wire sum0_carry__5_n_0;
  wire sum0_carry__6_i_1_n_0;
  wire sum0_carry__6_i_2_n_0;
  wire sum0_carry__6_i_3_n_0;
  wire sum0_carry__6_i_4_n_0;
  wire sum0_carry__6_i_5_n_0;
  wire sum0_carry__6_n_0;
  wire sum0_carry_i_1_n_0;
  wire sum0_carry_i_2_n_0;
  wire sum0_carry_i_3_n_0;
  wire sum0_carry_i_4_n_0;
  wire sum0_carry_n_0;
  wire [3:1]NLW_V_OBUF_inst_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_V_OBUF_inst_i_2_O_UNCONNECTED;
  wire [2:0]NLW_sum0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__6_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'h2F20FF0F2F20F000)) 
    \ALUResult_OBUF[0]_inst_i_1 
       (.I0(\ALUResult[0] ),
        .I1(shamt5_IBUF),
        .I2(\ALUResult[0]_0 ),
        .I3(\ALUResult[0]_1 ),
        .I4(\ALUResult[0]_2 ),
        .I5(\ALUResult_OBUF[0]_inst_i_6_n_0 ),
        .O(ALUResult_OBUF[0]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[0]_inst_i_6 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[0]),
        .I3(SrcA_IBUF[0]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[0]),
        .O(\ALUResult_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[10]_inst_i_1 
       (.I0(\ALUResult[10] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[10]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[10]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[10]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[10]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[10]),
        .I3(SrcA_IBUF[10]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[10]),
        .O(\ALUResult_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[11]_inst_i_1 
       (.I0(\ALUResult[11] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[11]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[11]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[11]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[11]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[11]),
        .I3(SrcA_IBUF[11]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[11]),
        .O(\ALUResult_OBUF[11]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[12]_inst_i_1 
       (.I0(\ALUResult[12] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[12]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[12]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[12]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[12]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[12]),
        .I3(SrcA_IBUF[12]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[12]),
        .O(\ALUResult_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[13]_inst_i_1 
       (.I0(\ALUResult[13] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[13]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[13]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[13]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[13]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[13]),
        .I3(SrcA_IBUF[13]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[13]),
        .O(\ALUResult_OBUF[13]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[14]_inst_i_1 
       (.I0(\ALUResult[14] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[14]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[14]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[14]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[14]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[14]),
        .I3(SrcA_IBUF[14]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[14]),
        .O(\ALUResult_OBUF[14]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[15]_inst_i_1 
       (.I0(\ALUResult[15] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[15]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[15]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[15]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[15]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[15]),
        .I3(SrcA_IBUF[15]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[15]),
        .O(\ALUResult_OBUF[15]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[16]_inst_i_1 
       (.I0(\ALUResult[16] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[16]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[16]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[16]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[16]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[16]),
        .I3(SrcA_IBUF[16]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[16]),
        .O(\ALUResult_OBUF[16]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[17]_inst_i_1 
       (.I0(\ALUResult[17] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[17]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[17]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[17]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[17]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[17]),
        .I3(SrcA_IBUF[17]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[17]),
        .O(\ALUResult_OBUF[17]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[18]_inst_i_1 
       (.I0(\ALUResult[18] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[18]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[18]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[18]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[18]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[18]),
        .I3(SrcA_IBUF[18]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[18]),
        .O(\ALUResult_OBUF[18]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[19]_inst_i_1 
       (.I0(\ALUResult[19] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[19]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[19]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[19]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[19]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[19]),
        .I3(SrcA_IBUF[19]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[19]),
        .O(\ALUResult_OBUF[19]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[1]_inst_i_1 
       (.I0(\ALUResult[1] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[1]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[1]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[1]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[1]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[1]),
        .I3(SrcA_IBUF[1]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[1]),
        .O(\ALUResult_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[20]_inst_i_1 
       (.I0(\ALUResult[20] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[20]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[20]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[20]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[20]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[20]),
        .I3(SrcA_IBUF[20]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[20]),
        .O(\ALUResult_OBUF[20]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[21]_inst_i_1 
       (.I0(\ALUResult[21] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[21]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[21]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[21]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[21]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[21]),
        .I3(SrcA_IBUF[21]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[21]),
        .O(\ALUResult_OBUF[21]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[22]_inst_i_1 
       (.I0(\ALUResult[22] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[22]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[22]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[22]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[22]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[22]),
        .I3(SrcA_IBUF[22]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[22]),
        .O(\ALUResult_OBUF[22]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[23]_inst_i_1 
       (.I0(\ALUResult[23] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[23]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[23]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[23]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[23]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[23]),
        .I3(SrcA_IBUF[23]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[23]),
        .O(\ALUResult_OBUF[23]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[24]_inst_i_1 
       (.I0(\ALUResult[24] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[24]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[24]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[24]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[24]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[24]),
        .I3(SrcA_IBUF[24]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[24]),
        .O(\ALUResult_OBUF[24]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[25]_inst_i_1 
       (.I0(\ALUResult[25] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[25]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[25]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[25]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[25]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[25]),
        .I3(SrcA_IBUF[25]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[25]),
        .O(\ALUResult_OBUF[25]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[26]_inst_i_1 
       (.I0(\ALUResult[26] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[26]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[26]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[26]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[26]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[26]),
        .I3(SrcA_IBUF[26]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[26]),
        .O(\ALUResult_OBUF[26]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[27]_inst_i_1 
       (.I0(\ALUResult[27] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[27]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[27]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[27]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[27]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[27]),
        .I3(SrcA_IBUF[27]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[27]),
        .O(\ALUResult_OBUF[27]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[28]_inst_i_1 
       (.I0(\ALUResult[28] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[28]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[28]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[28]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[28]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[28]),
        .I3(SrcA_IBUF[28]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[28]),
        .O(\ALUResult_OBUF[28]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[29]_inst_i_1 
       (.I0(\ALUResult[29] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[29]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[29]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[29]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[29]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[29]),
        .I3(SrcA_IBUF[29]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[29]),
        .O(\ALUResult_OBUF[29]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[2]_inst_i_1 
       (.I0(\ALUResult[2] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[2]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[2]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[2]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[2]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[2]),
        .I3(SrcA_IBUF[2]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[2]),
        .O(\ALUResult_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[30]_inst_i_1 
       (.I0(\ALUResult[30] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[30]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[30]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[30]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[30]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[30]),
        .I3(SrcA_IBUF[30]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[30]),
        .O(\ALUResult_OBUF[30]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[3]_inst_i_1 
       (.I0(\ALUResult[3] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[3]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[3]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[3]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[3]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[3]),
        .I3(SrcA_IBUF[3]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[3]),
        .O(\ALUResult_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[4]_inst_i_1 
       (.I0(\ALUResult[4] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[4]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[4]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[4]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[4]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[4]),
        .I3(SrcA_IBUF[4]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[4]),
        .O(\ALUResult_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[5]_inst_i_1 
       (.I0(\ALUResult[5] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[5]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[5]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[5]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[5]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[5]),
        .I3(SrcA_IBUF[5]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[5]),
        .O(\ALUResult_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[6]_inst_i_1 
       (.I0(\ALUResult[6] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[6]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[6]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[6]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[6]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[6]),
        .I3(SrcA_IBUF[6]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[6]),
        .O(\ALUResult_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[7]_inst_i_1 
       (.I0(\ALUResult[7] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[7]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[7]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[7]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[7]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[7]),
        .I3(SrcA_IBUF[7]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[7]),
        .O(\ALUResult_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[8]_inst_i_1 
       (.I0(\ALUResult[8] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[8]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[8]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[8]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[8]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[8]),
        .I3(SrcA_IBUF[8]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[8]),
        .O(\ALUResult_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    \ALUResult_OBUF[9]_inst_i_1 
       (.I0(\ALUResult[9] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(\ALUResult[9]_0 ),
        .I4(ALUControl_IBUF[1]),
        .I5(\ALUResult_OBUF[9]_inst_i_4_n_0 ),
        .O(ALUResult_OBUF[9]));
  LUT6 #(
    .INIT(64'h3CC07B7B3CC04848)) 
    \ALUResult_OBUF[9]_inst_i_4 
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcB_IBUF[9]),
        .I3(SrcA_IBUF[9]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[9]),
        .O(\ALUResult_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF33FB3BCC00C808)) 
    N_OBUF_inst_i_1
       (.I0(\ALUResult[31] ),
        .I1(ALUControl_IBUF[3]),
        .I2(ALUControl_IBUF[2]),
        .I3(SrcB_IBUF[31]),
        .I4(ALUControl_IBUF[1]),
        .I5(N_OBUF_inst_i_3_n_0),
        .O(ALUResult_OBUF[31]));
  LUT6 #(
    .INIT(64'h3CC077BB3CC04488)) 
    N_OBUF_inst_i_3
       (.I0(ALUControl_IBUF[0]),
        .I1(ALUControl_IBUF[2]),
        .I2(SrcA_IBUF[31]),
        .I3(SrcB_IBUF[31]),
        .I4(ALUControl_IBUF[1]),
        .I5(S[31]),
        .O(N_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'h01000001)) 
    V_OBUF_inst_i_1
       (.I0(ALUControl_IBUF[3]),
        .I1(ALUControl_IBUF[1]),
        .I2(ALUControl_IBUF[2]),
        .I3(CO),
        .I4(S[31]),
        .O(V_OBUF));
  CARRY4 V_OBUF_inst_i_2
       (.CI(sum0_carry__6_n_0),
        .CO({NLW_V_OBUF_inst_i_2_CO_UNCONNECTED[3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_V_OBUF_inst_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT4 #(
    .INIT(16'h0004)) 
    Z_OBUF_inst_i_1
       (.I0(Z_OBUF_inst_i_2_n_0),
        .I1(Z_OBUF_inst_i_3_n_0),
        .I2(Z_OBUF_inst_i_4_n_0),
        .I3(Z_OBUF_inst_i_5_n_0),
        .O(Z_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Z_OBUF_inst_i_2
       (.I0(ALUResult_OBUF[24]),
        .I1(ALUResult_OBUF[18]),
        .I2(ALUResult_OBUF[29]),
        .I3(ALUResult_OBUF[17]),
        .I4(Z_OBUF_inst_i_6_n_0),
        .O(Z_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    Z_OBUF_inst_i_3
       (.I0(ALUResult_OBUF[12]),
        .I1(ALUResult_OBUF[9]),
        .I2(ALUResult_OBUF[25]),
        .I3(ALUResult_OBUF[8]),
        .I4(Z_OBUF_inst_i_7_n_0),
        .O(Z_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Z_OBUF_inst_i_4
       (.I0(ALUResult_OBUF[21]),
        .I1(ALUResult_OBUF[5]),
        .I2(ALUResult_OBUF[30]),
        .I3(ALUResult_OBUF[10]),
        .I4(Z_OBUF_inst_i_8_n_0),
        .O(Z_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Z_OBUF_inst_i_5
       (.I0(ALUResult_OBUF[15]),
        .I1(ALUResult_OBUF[3]),
        .I2(ALUResult_OBUF[16]),
        .I3(ALUResult_OBUF[7]),
        .I4(Z_OBUF_inst_i_9_n_0),
        .O(Z_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Z_OBUF_inst_i_6
       (.I0(ALUResult_OBUF[22]),
        .I1(ALUResult_OBUF[23]),
        .I2(ALUResult_OBUF[0]),
        .I3(ALUResult_OBUF[14]),
        .O(Z_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Z_OBUF_inst_i_7
       (.I0(ALUResult_OBUF[4]),
        .I1(ALUResult_OBUF[13]),
        .I2(ALUResult_OBUF[19]),
        .I3(ALUResult_OBUF[27]),
        .O(Z_OBUF_inst_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Z_OBUF_inst_i_8
       (.I0(ALUResult_OBUF[1]),
        .I1(ALUResult_OBUF[6]),
        .I2(ALUResult_OBUF[20]),
        .I3(ALUResult_OBUF[28]),
        .O(Z_OBUF_inst_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Z_OBUF_inst_i_9
       (.I0(ALUResult_OBUF[2]),
        .I1(ALUResult_OBUF[31]),
        .I2(ALUResult_OBUF[11]),
        .I3(ALUResult_OBUF[26]),
        .O(Z_OBUF_inst_i_9_n_0));
  CARRY4 sum0_carry
       (.CI(1'b0),
        .CO({sum0_carry_n_0,NLW_sum0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SrcA_IBUF[3:0]),
        .O(S[3:0]),
        .S({sum0_carry_i_1_n_0,sum0_carry_i_2_n_0,sum0_carry_i_3_n_0,sum0_carry_i_4_n_0}));
  CARRY4 sum0_carry__0
       (.CI(sum0_carry_n_0),
        .CO({sum0_carry__0_n_0,NLW_sum0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SrcA_IBUF[7:4]),
        .O(S[7:4]),
        .S({sum0_carry__0_i_1_n_0,sum0_carry__0_i_2_n_0,sum0_carry__0_i_3_n_0,sum0_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__0_i_1
       (.I0(SrcA_IBUF[7]),
        .I1(SrcB_IBUF[7]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[6]),
        .O(sum0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__0_i_2
       (.I0(SrcA_IBUF[6]),
        .I1(SrcB_IBUF[6]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[5]),
        .O(sum0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__0_i_3
       (.I0(SrcA_IBUF[5]),
        .I1(SrcB_IBUF[5]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[4]),
        .O(sum0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__0_i_4
       (.I0(SrcA_IBUF[4]),
        .I1(SrcB_IBUF[4]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[3]),
        .O(sum0_carry__0_i_4_n_0));
  CARRY4 sum0_carry__1
       (.CI(sum0_carry__0_n_0),
        .CO({sum0_carry__1_n_0,NLW_sum0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SrcA_IBUF[11:8]),
        .O(S[11:8]),
        .S({sum0_carry__1_i_1_n_0,sum0_carry__1_i_2_n_0,sum0_carry__1_i_3_n_0,sum0_carry__1_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__1_i_1
       (.I0(SrcA_IBUF[11]),
        .I1(SrcB_IBUF[11]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[10]),
        .O(sum0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__1_i_2
       (.I0(SrcA_IBUF[10]),
        .I1(SrcB_IBUF[10]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[9]),
        .O(sum0_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__1_i_3
       (.I0(SrcA_IBUF[9]),
        .I1(SrcB_IBUF[9]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[8]),
        .O(sum0_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__1_i_4
       (.I0(SrcA_IBUF[8]),
        .I1(SrcB_IBUF[8]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[7]),
        .O(sum0_carry__1_i_4_n_0));
  CARRY4 sum0_carry__2
       (.CI(sum0_carry__1_n_0),
        .CO({sum0_carry__2_n_0,NLW_sum0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SrcA_IBUF[15:12]),
        .O(S[15:12]),
        .S({sum0_carry__2_i_1_n_0,sum0_carry__2_i_2_n_0,sum0_carry__2_i_3_n_0,sum0_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__2_i_1
       (.I0(SrcA_IBUF[15]),
        .I1(SrcB_IBUF[15]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[14]),
        .O(sum0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__2_i_2
       (.I0(SrcA_IBUF[14]),
        .I1(SrcB_IBUF[14]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[13]),
        .O(sum0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__2_i_3
       (.I0(SrcA_IBUF[13]),
        .I1(SrcB_IBUF[13]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[12]),
        .O(sum0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__2_i_4
       (.I0(SrcA_IBUF[12]),
        .I1(SrcB_IBUF[12]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[11]),
        .O(sum0_carry__2_i_4_n_0));
  CARRY4 sum0_carry__3
       (.CI(sum0_carry__2_n_0),
        .CO({sum0_carry__3_n_0,NLW_sum0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SrcA_IBUF[19:16]),
        .O(S[19:16]),
        .S({sum0_carry__3_i_1_n_0,sum0_carry__3_i_2_n_0,sum0_carry__3_i_3_n_0,sum0_carry__3_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__3_i_1
       (.I0(SrcA_IBUF[19]),
        .I1(SrcB_IBUF[19]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[18]),
        .O(sum0_carry__3_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__3_i_2
       (.I0(SrcA_IBUF[18]),
        .I1(SrcB_IBUF[18]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[17]),
        .O(sum0_carry__3_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__3_i_3
       (.I0(SrcA_IBUF[17]),
        .I1(SrcB_IBUF[17]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[16]),
        .O(sum0_carry__3_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__3_i_4
       (.I0(SrcA_IBUF[16]),
        .I1(SrcB_IBUF[16]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[15]),
        .O(sum0_carry__3_i_4_n_0));
  CARRY4 sum0_carry__4
       (.CI(sum0_carry__3_n_0),
        .CO({sum0_carry__4_n_0,NLW_sum0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SrcA_IBUF[23:20]),
        .O(S[23:20]),
        .S({sum0_carry__4_i_1_n_0,sum0_carry__4_i_2_n_0,sum0_carry__4_i_3_n_0,sum0_carry__4_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__4_i_1
       (.I0(SrcA_IBUF[23]),
        .I1(SrcB_IBUF[23]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[22]),
        .O(sum0_carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__4_i_2
       (.I0(SrcA_IBUF[22]),
        .I1(SrcB_IBUF[22]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[21]),
        .O(sum0_carry__4_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__4_i_3
       (.I0(SrcA_IBUF[21]),
        .I1(SrcB_IBUF[21]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[20]),
        .O(sum0_carry__4_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__4_i_4
       (.I0(SrcA_IBUF[20]),
        .I1(SrcB_IBUF[20]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[19]),
        .O(sum0_carry__4_i_4_n_0));
  CARRY4 sum0_carry__5
       (.CI(sum0_carry__4_n_0),
        .CO({sum0_carry__5_n_0,NLW_sum0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(SrcA_IBUF[27:24]),
        .O(S[27:24]),
        .S({sum0_carry__5_i_1_n_0,sum0_carry__5_i_2_n_0,sum0_carry__5_i_3_n_0,sum0_carry__5_i_4_n_0}));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__5_i_1
       (.I0(SrcA_IBUF[27]),
        .I1(SrcB_IBUF[27]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[26]),
        .O(sum0_carry__5_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__5_i_2
       (.I0(SrcA_IBUF[26]),
        .I1(SrcB_IBUF[26]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[25]),
        .O(sum0_carry__5_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__5_i_3
       (.I0(SrcA_IBUF[25]),
        .I1(SrcB_IBUF[25]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[24]),
        .O(sum0_carry__5_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__5_i_4
       (.I0(SrcA_IBUF[24]),
        .I1(SrcB_IBUF[24]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[23]),
        .O(sum0_carry__5_i_4_n_0));
  CARRY4 sum0_carry__6
       (.CI(sum0_carry__5_n_0),
        .CO({sum0_carry__6_n_0,NLW_sum0_carry__6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({sum0_carry__6_i_1_n_0,SrcA_IBUF[30:28]}),
        .O(S[31:28]),
        .S({sum0_carry__6_i_2_n_0,sum0_carry__6_i_3_n_0,sum0_carry__6_i_4_n_0,sum0_carry__6_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__6_i_1
       (.I0(SrcA_IBUF[31]),
        .O(sum0_carry__6_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__6_i_2
       (.I0(SrcA_IBUF[31]),
        .I1(SrcB_IBUF[31]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[30]),
        .O(sum0_carry__6_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__6_i_3
       (.I0(SrcA_IBUF[30]),
        .I1(SrcB_IBUF[30]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[29]),
        .O(sum0_carry__6_i_3_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__6_i_4
       (.I0(SrcA_IBUF[29]),
        .I1(SrcB_IBUF[29]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[28]),
        .O(sum0_carry__6_i_4_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry__6_i_5
       (.I0(SrcA_IBUF[28]),
        .I1(SrcB_IBUF[28]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[27]),
        .O(sum0_carry__6_i_5_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry_i_1
       (.I0(SrcA_IBUF[3]),
        .I1(SrcB_IBUF[3]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[2]),
        .O(sum0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry_i_2
       (.I0(SrcA_IBUF[2]),
        .I1(SrcB_IBUF[2]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[1]),
        .O(sum0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    sum0_carry_i_3
       (.I0(SrcA_IBUF[1]),
        .I1(SrcB_IBUF[1]),
        .I2(ALUControl_IBUF[0]),
        .I3(SrcB_integer0[0]),
        .O(sum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_4
       (.I0(SrcA_IBUF[0]),
        .I1(SrcB_IBUF[0]),
        .O(sum0_carry_i_4_n_0));
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
