// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Mar 22 21:04:34 2024
// Host        : yannos running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Yannos/FILES/PROGRAMS/FPGA/VIVADO/MSc_Control_and_Computing-UoA/PROJECTS/Project_2/Processor_Multicycle/Processor_Multicycle.sim/sim_1/impl/timing/xsim/regfile_tb_time_impl.v
// Design      : regfile
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD278
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD279
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD280
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD282
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD283
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD284
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD285
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD286
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD289
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD281
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD287
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD288
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

(* ECO_CHECKSUM = "1ae0afe4" *) (* M = "32" *) (* N = "4" *) 
(* NotValidForBitStream *)
module regfile
   (CLK,
    RegWrite,
    A1,
    A2,
    A3,
    WD3,
    R15,
    RD1,
    RD2);
  input CLK;
  input RegWrite;
  input [3:0]A1;
  input [3:0]A2;
  input [3:0]A3;
  input [31:0]WD3;
  input [31:0]R15;
  output [31:0]RD1;
  output [31:0]RD2;

  wire [3:0]A1;
  wire [3:0]A1_IBUF;
  wire [3:0]A2;
  wire [3:0]A2_IBUF;
  wire [3:0]A3;
  wire [3:0]A3_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [31:0]R15;
  wire [31:0]R15_IBUF;
  wire [31:0]RD1;
  wire [31:0]RD1_OBUF;
  wire [31:0]RD2;
  wire [31:0]RD2_OBUF;
  wire RegWrite;
  wire RegWrite_IBUF;
  wire [31:0]WD3;
  wire [31:0]WD3_IBUF;

initial begin
 $sdf_annotate("regfile_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A1_IBUF[0]_inst 
       (.I(A1[0]),
        .O(A1_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A1_IBUF[1]_inst 
       (.I(A1[1]),
        .O(A1_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A1_IBUF[2]_inst 
       (.I(A1[2]),
        .O(A1_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A1_IBUF[3]_inst 
       (.I(A1[3]),
        .O(A1_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A2_IBUF[0]_inst 
       (.I(A2[0]),
        .O(A2_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A2_IBUF[1]_inst 
       (.I(A2[1]),
        .O(A2_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A2_IBUF[2]_inst 
       (.I(A2[2]),
        .O(A2_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A2_IBUF[3]_inst 
       (.I(A2[3]),
        .O(A2_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A3_IBUF[0]_inst 
       (.I(A3[0]),
        .O(A3_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A3_IBUF[1]_inst 
       (.I(A3[1]),
        .O(A3_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A3_IBUF[2]_inst 
       (.I(A3[2]),
        .O(A3_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \A3_IBUF[3]_inst 
       (.I(A3[3]),
        .O(A3_IBUF[3]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[0]_inst 
       (.I(R15[0]),
        .O(R15_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[10]_inst 
       (.I(R15[10]),
        .O(R15_IBUF[10]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[11]_inst 
       (.I(R15[11]),
        .O(R15_IBUF[11]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[12]_inst 
       (.I(R15[12]),
        .O(R15_IBUF[12]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[13]_inst 
       (.I(R15[13]),
        .O(R15_IBUF[13]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[14]_inst 
       (.I(R15[14]),
        .O(R15_IBUF[14]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[15]_inst 
       (.I(R15[15]),
        .O(R15_IBUF[15]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[16]_inst 
       (.I(R15[16]),
        .O(R15_IBUF[16]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[17]_inst 
       (.I(R15[17]),
        .O(R15_IBUF[17]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[18]_inst 
       (.I(R15[18]),
        .O(R15_IBUF[18]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[19]_inst 
       (.I(R15[19]),
        .O(R15_IBUF[19]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[1]_inst 
       (.I(R15[1]),
        .O(R15_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[20]_inst 
       (.I(R15[20]),
        .O(R15_IBUF[20]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[21]_inst 
       (.I(R15[21]),
        .O(R15_IBUF[21]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[22]_inst 
       (.I(R15[22]),
        .O(R15_IBUF[22]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[23]_inst 
       (.I(R15[23]),
        .O(R15_IBUF[23]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[24]_inst 
       (.I(R15[24]),
        .O(R15_IBUF[24]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[25]_inst 
       (.I(R15[25]),
        .O(R15_IBUF[25]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[26]_inst 
       (.I(R15[26]),
        .O(R15_IBUF[26]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[27]_inst 
       (.I(R15[27]),
        .O(R15_IBUF[27]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[28]_inst 
       (.I(R15[28]),
        .O(R15_IBUF[28]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[29]_inst 
       (.I(R15[29]),
        .O(R15_IBUF[29]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[2]_inst 
       (.I(R15[2]),
        .O(R15_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[30]_inst 
       (.I(R15[30]),
        .O(R15_IBUF[30]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[31]_inst 
       (.I(R15[31]),
        .O(R15_IBUF[31]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[3]_inst 
       (.I(R15[3]),
        .O(R15_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[4]_inst 
       (.I(R15[4]),
        .O(R15_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[5]_inst 
       (.I(R15[5]),
        .O(R15_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[6]_inst 
       (.I(R15[6]),
        .O(R15_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[7]_inst 
       (.I(R15[7]),
        .O(R15_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[8]_inst 
       (.I(R15[8]),
        .O(R15_IBUF[8]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \R15_IBUF[9]_inst 
       (.I(R15[9]),
        .O(R15_IBUF[9]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[0]_inst 
       (.I(RD1_OBUF[0]),
        .O(RD1[0]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[10]_inst 
       (.I(RD1_OBUF[10]),
        .O(RD1[10]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[11]_inst 
       (.I(RD1_OBUF[11]),
        .O(RD1[11]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[12]_inst 
       (.I(RD1_OBUF[12]),
        .O(RD1[12]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[13]_inst 
       (.I(RD1_OBUF[13]),
        .O(RD1[13]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[14]_inst 
       (.I(RD1_OBUF[14]),
        .O(RD1[14]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[15]_inst 
       (.I(RD1_OBUF[15]),
        .O(RD1[15]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[16]_inst 
       (.I(RD1_OBUF[16]),
        .O(RD1[16]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[17]_inst 
       (.I(RD1_OBUF[17]),
        .O(RD1[17]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[18]_inst 
       (.I(RD1_OBUF[18]),
        .O(RD1[18]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[19]_inst 
       (.I(RD1_OBUF[19]),
        .O(RD1[19]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[1]_inst 
       (.I(RD1_OBUF[1]),
        .O(RD1[1]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[20]_inst 
       (.I(RD1_OBUF[20]),
        .O(RD1[20]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[21]_inst 
       (.I(RD1_OBUF[21]),
        .O(RD1[21]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[22]_inst 
       (.I(RD1_OBUF[22]),
        .O(RD1[22]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[23]_inst 
       (.I(RD1_OBUF[23]),
        .O(RD1[23]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[24]_inst 
       (.I(RD1_OBUF[24]),
        .O(RD1[24]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[25]_inst 
       (.I(RD1_OBUF[25]),
        .O(RD1[25]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[26]_inst 
       (.I(RD1_OBUF[26]),
        .O(RD1[26]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[27]_inst 
       (.I(RD1_OBUF[27]),
        .O(RD1[27]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[28]_inst 
       (.I(RD1_OBUF[28]),
        .O(RD1[28]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[29]_inst 
       (.I(RD1_OBUF[29]),
        .O(RD1[29]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[2]_inst 
       (.I(RD1_OBUF[2]),
        .O(RD1[2]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[30]_inst 
       (.I(RD1_OBUF[30]),
        .O(RD1[30]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[31]_inst 
       (.I(RD1_OBUF[31]),
        .O(RD1[31]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[3]_inst 
       (.I(RD1_OBUF[3]),
        .O(RD1[3]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[4]_inst 
       (.I(RD1_OBUF[4]),
        .O(RD1[4]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[5]_inst 
       (.I(RD1_OBUF[5]),
        .O(RD1[5]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[6]_inst 
       (.I(RD1_OBUF[6]),
        .O(RD1[6]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[7]_inst 
       (.I(RD1_OBUF[7]),
        .O(RD1[7]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[8]_inst 
       (.I(RD1_OBUF[8]),
        .O(RD1[8]));
  (* IOB = "TRUE" *) 
  OBUF \RD1_OBUF[9]_inst 
       (.I(RD1_OBUF[9]),
        .O(RD1[9]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[0]_inst 
       (.I(RD2_OBUF[0]),
        .O(RD2[0]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[10]_inst 
       (.I(RD2_OBUF[10]),
        .O(RD2[10]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[11]_inst 
       (.I(RD2_OBUF[11]),
        .O(RD2[11]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[12]_inst 
       (.I(RD2_OBUF[12]),
        .O(RD2[12]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[13]_inst 
       (.I(RD2_OBUF[13]),
        .O(RD2[13]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[14]_inst 
       (.I(RD2_OBUF[14]),
        .O(RD2[14]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[15]_inst 
       (.I(RD2_OBUF[15]),
        .O(RD2[15]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[16]_inst 
       (.I(RD2_OBUF[16]),
        .O(RD2[16]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[17]_inst 
       (.I(RD2_OBUF[17]),
        .O(RD2[17]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[18]_inst 
       (.I(RD2_OBUF[18]),
        .O(RD2[18]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[19]_inst 
       (.I(RD2_OBUF[19]),
        .O(RD2[19]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[1]_inst 
       (.I(RD2_OBUF[1]),
        .O(RD2[1]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[20]_inst 
       (.I(RD2_OBUF[20]),
        .O(RD2[20]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[21]_inst 
       (.I(RD2_OBUF[21]),
        .O(RD2[21]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[22]_inst 
       (.I(RD2_OBUF[22]),
        .O(RD2[22]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[23]_inst 
       (.I(RD2_OBUF[23]),
        .O(RD2[23]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[24]_inst 
       (.I(RD2_OBUF[24]),
        .O(RD2[24]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[25]_inst 
       (.I(RD2_OBUF[25]),
        .O(RD2[25]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[26]_inst 
       (.I(RD2_OBUF[26]),
        .O(RD2[26]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[27]_inst 
       (.I(RD2_OBUF[27]),
        .O(RD2[27]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[28]_inst 
       (.I(RD2_OBUF[28]),
        .O(RD2[28]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[29]_inst 
       (.I(RD2_OBUF[29]),
        .O(RD2[29]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[2]_inst 
       (.I(RD2_OBUF[2]),
        .O(RD2[2]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[30]_inst 
       (.I(RD2_OBUF[30]),
        .O(RD2[30]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[31]_inst 
       (.I(RD2_OBUF[31]),
        .O(RD2[31]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[3]_inst 
       (.I(RD2_OBUF[3]),
        .O(RD2[3]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[4]_inst 
       (.I(RD2_OBUF[4]),
        .O(RD2[4]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[5]_inst 
       (.I(RD2_OBUF[5]),
        .O(RD2[5]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[6]_inst 
       (.I(RD2_OBUF[6]),
        .O(RD2[6]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[7]_inst 
       (.I(RD2_OBUF[7]),
        .O(RD2[7]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[8]_inst 
       (.I(RD2_OBUF[8]),
        .O(RD2[8]));
  (* IOB = "TRUE" *) 
  OBUF \RD2_OBUF[9]_inst 
       (.I(RD2_OBUF[9]),
        .O(RD2[9]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    RegWrite_IBUF_inst
       (.I(RegWrite),
        .O(RegWrite_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[0]_inst 
       (.I(WD3[0]),
        .O(WD3_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[10]_inst 
       (.I(WD3[10]),
        .O(WD3_IBUF[10]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[11]_inst 
       (.I(WD3[11]),
        .O(WD3_IBUF[11]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[12]_inst 
       (.I(WD3[12]),
        .O(WD3_IBUF[12]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[13]_inst 
       (.I(WD3[13]),
        .O(WD3_IBUF[13]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[14]_inst 
       (.I(WD3[14]),
        .O(WD3_IBUF[14]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[15]_inst 
       (.I(WD3[15]),
        .O(WD3_IBUF[15]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[16]_inst 
       (.I(WD3[16]),
        .O(WD3_IBUF[16]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[17]_inst 
       (.I(WD3[17]),
        .O(WD3_IBUF[17]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[18]_inst 
       (.I(WD3[18]),
        .O(WD3_IBUF[18]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[19]_inst 
       (.I(WD3[19]),
        .O(WD3_IBUF[19]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[1]_inst 
       (.I(WD3[1]),
        .O(WD3_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[20]_inst 
       (.I(WD3[20]),
        .O(WD3_IBUF[20]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[21]_inst 
       (.I(WD3[21]),
        .O(WD3_IBUF[21]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[22]_inst 
       (.I(WD3[22]),
        .O(WD3_IBUF[22]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[23]_inst 
       (.I(WD3[23]),
        .O(WD3_IBUF[23]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[24]_inst 
       (.I(WD3[24]),
        .O(WD3_IBUF[24]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[25]_inst 
       (.I(WD3[25]),
        .O(WD3_IBUF[25]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[26]_inst 
       (.I(WD3[26]),
        .O(WD3_IBUF[26]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[27]_inst 
       (.I(WD3[27]),
        .O(WD3_IBUF[27]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[28]_inst 
       (.I(WD3[28]),
        .O(WD3_IBUF[28]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[29]_inst 
       (.I(WD3[29]),
        .O(WD3_IBUF[29]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[2]_inst 
       (.I(WD3[2]),
        .O(WD3_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[30]_inst 
       (.I(WD3[30]),
        .O(WD3_IBUF[30]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[31]_inst 
       (.I(WD3[31]),
        .O(WD3_IBUF[31]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[3]_inst 
       (.I(WD3[3]),
        .O(WD3_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[4]_inst 
       (.I(WD3[4]),
        .O(WD3_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[5]_inst 
       (.I(WD3[5]),
        .O(WD3_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[6]_inst 
       (.I(WD3[6]),
        .O(WD3_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[7]_inst 
       (.I(WD3[7]),
        .O(WD3_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[8]_inst 
       (.I(WD3[8]),
        .O(WD3_IBUF[8]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \WD3_IBUF[9]_inst 
       (.I(WD3[9]),
        .O(WD3_IBUF[9]));
  regfile_core rf
       (.A1_IBUF(A1_IBUF),
        .A2_IBUF(A2_IBUF),
        .A3_IBUF(A3_IBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .R15_IBUF(R15_IBUF),
        .RD1_OBUF(RD1_OBUF),
        .RD2_OBUF(RD2_OBUF),
        .RegWrite_IBUF(RegWrite_IBUF),
        .WD3_IBUF(WD3_IBUF));
endmodule

module regfile_core
   (RD1_OBUF,
    RD2_OBUF,
    CLK_IBUF_BUFG,
    WD3_IBUF,
    RegWrite_IBUF,
    A3_IBUF,
    A1_IBUF,
    A2_IBUF,
    R15_IBUF);
  output [31:0]RD1_OBUF;
  output [31:0]RD2_OBUF;
  input CLK_IBUF_BUFG;
  input [31:0]WD3_IBUF;
  input RegWrite_IBUF;
  input [3:0]A3_IBUF;
  input [3:0]A1_IBUF;
  input [3:0]A2_IBUF;
  input [31:0]R15_IBUF;

  wire [3:0]A1_IBUF;
  wire [3:0]A2_IBUF;
  wire [3:0]A3_IBUF;
  wire CLK_IBUF_BUFG;
  wire [31:0]DATA_OUT1;
  wire [31:0]DATA_OUT2;
  wire [31:0]R15_IBUF;
  wire [31:0]RD1_OBUF;
  wire [31:0]RD2_OBUF;
  wire RegWrite_IBUF;
  wire [31:0]WD3_IBUF;
  wire [1:0]NLW_RF_reg_r1_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r1_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r1_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r1_0_15_24_29_DOD_UNCONNECTED;
  wire NLW_RF_reg_r1_0_15_30_31_SPO_UNCONNECTED;
  wire NLW_RF_reg_r1_0_15_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r1_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r2_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r2_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r2_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r2_0_15_24_29_DOD_UNCONNECTED;
  wire NLW_RF_reg_r2_0_15_30_31_SPO_UNCONNECTED;
  wire NLW_RF_reg_r2_0_15_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_RF_reg_r2_0_15_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[0]_inst_i_1 
       (.I0(R15_IBUF[0]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[0]),
        .O(RD1_OBUF[0]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[10]_inst_i_1 
       (.I0(R15_IBUF[10]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[10]),
        .O(RD1_OBUF[10]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[11]_inst_i_1 
       (.I0(R15_IBUF[11]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[11]),
        .O(RD1_OBUF[11]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[12]_inst_i_1 
       (.I0(R15_IBUF[12]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[12]),
        .O(RD1_OBUF[12]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[13]_inst_i_1 
       (.I0(R15_IBUF[13]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[13]),
        .O(RD1_OBUF[13]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[14]_inst_i_1 
       (.I0(R15_IBUF[14]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[14]),
        .O(RD1_OBUF[14]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[15]_inst_i_1 
       (.I0(R15_IBUF[15]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[15]),
        .O(RD1_OBUF[15]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[16]_inst_i_1 
       (.I0(R15_IBUF[16]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[16]),
        .O(RD1_OBUF[16]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[17]_inst_i_1 
       (.I0(R15_IBUF[17]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[17]),
        .O(RD1_OBUF[17]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[18]_inst_i_1 
       (.I0(R15_IBUF[18]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[18]),
        .O(RD1_OBUF[18]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[19]_inst_i_1 
       (.I0(R15_IBUF[19]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[19]),
        .O(RD1_OBUF[19]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[1]_inst_i_1 
       (.I0(R15_IBUF[1]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[1]),
        .O(RD1_OBUF[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[20]_inst_i_1 
       (.I0(R15_IBUF[20]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[20]),
        .O(RD1_OBUF[20]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[21]_inst_i_1 
       (.I0(R15_IBUF[21]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[21]),
        .O(RD1_OBUF[21]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[22]_inst_i_1 
       (.I0(R15_IBUF[22]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[22]),
        .O(RD1_OBUF[22]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[23]_inst_i_1 
       (.I0(R15_IBUF[23]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[23]),
        .O(RD1_OBUF[23]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[24]_inst_i_1 
       (.I0(R15_IBUF[24]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[24]),
        .O(RD1_OBUF[24]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[25]_inst_i_1 
       (.I0(R15_IBUF[25]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[25]),
        .O(RD1_OBUF[25]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[26]_inst_i_1 
       (.I0(R15_IBUF[26]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[26]),
        .O(RD1_OBUF[26]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[27]_inst_i_1 
       (.I0(R15_IBUF[27]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[27]),
        .O(RD1_OBUF[27]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[28]_inst_i_1 
       (.I0(R15_IBUF[28]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[28]),
        .O(RD1_OBUF[28]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[29]_inst_i_1 
       (.I0(R15_IBUF[29]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[29]),
        .O(RD1_OBUF[29]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[2]_inst_i_1 
       (.I0(R15_IBUF[2]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[2]),
        .O(RD1_OBUF[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[30]_inst_i_1 
       (.I0(R15_IBUF[30]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[30]),
        .O(RD1_OBUF[30]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[31]_inst_i_1 
       (.I0(R15_IBUF[31]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[31]),
        .O(RD1_OBUF[31]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[3]_inst_i_1 
       (.I0(R15_IBUF[3]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[3]),
        .O(RD1_OBUF[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[4]_inst_i_1 
       (.I0(R15_IBUF[4]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[4]),
        .O(RD1_OBUF[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[5]_inst_i_1 
       (.I0(R15_IBUF[5]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[5]),
        .O(RD1_OBUF[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[6]_inst_i_1 
       (.I0(R15_IBUF[6]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[6]),
        .O(RD1_OBUF[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[7]_inst_i_1 
       (.I0(R15_IBUF[7]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[7]),
        .O(RD1_OBUF[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[8]_inst_i_1 
       (.I0(R15_IBUF[8]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[8]),
        .O(RD1_OBUF[8]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD1_OBUF[9]_inst_i_1 
       (.I0(R15_IBUF[9]),
        .I1(A1_IBUF[1]),
        .I2(A1_IBUF[0]),
        .I3(A1_IBUF[3]),
        .I4(A1_IBUF[2]),
        .I5(DATA_OUT1[9]),
        .O(RD1_OBUF[9]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[0]_inst_i_1 
       (.I0(R15_IBUF[0]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[0]),
        .O(RD2_OBUF[0]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[10]_inst_i_1 
       (.I0(R15_IBUF[10]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[10]),
        .O(RD2_OBUF[10]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[11]_inst_i_1 
       (.I0(R15_IBUF[11]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[11]),
        .O(RD2_OBUF[11]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[12]_inst_i_1 
       (.I0(R15_IBUF[12]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[12]),
        .O(RD2_OBUF[12]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[13]_inst_i_1 
       (.I0(R15_IBUF[13]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[13]),
        .O(RD2_OBUF[13]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[14]_inst_i_1 
       (.I0(R15_IBUF[14]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[14]),
        .O(RD2_OBUF[14]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[15]_inst_i_1 
       (.I0(R15_IBUF[15]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[15]),
        .O(RD2_OBUF[15]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[16]_inst_i_1 
       (.I0(R15_IBUF[16]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[16]),
        .O(RD2_OBUF[16]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[17]_inst_i_1 
       (.I0(R15_IBUF[17]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[17]),
        .O(RD2_OBUF[17]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[18]_inst_i_1 
       (.I0(R15_IBUF[18]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[18]),
        .O(RD2_OBUF[18]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[19]_inst_i_1 
       (.I0(R15_IBUF[19]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[19]),
        .O(RD2_OBUF[19]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[1]_inst_i_1 
       (.I0(R15_IBUF[1]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[1]),
        .O(RD2_OBUF[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[20]_inst_i_1 
       (.I0(R15_IBUF[20]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[20]),
        .O(RD2_OBUF[20]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[21]_inst_i_1 
       (.I0(R15_IBUF[21]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[21]),
        .O(RD2_OBUF[21]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[22]_inst_i_1 
       (.I0(R15_IBUF[22]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[22]),
        .O(RD2_OBUF[22]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[23]_inst_i_1 
       (.I0(R15_IBUF[23]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[23]),
        .O(RD2_OBUF[23]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[24]_inst_i_1 
       (.I0(R15_IBUF[24]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[24]),
        .O(RD2_OBUF[24]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[25]_inst_i_1 
       (.I0(R15_IBUF[25]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[25]),
        .O(RD2_OBUF[25]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[26]_inst_i_1 
       (.I0(R15_IBUF[26]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[26]),
        .O(RD2_OBUF[26]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[27]_inst_i_1 
       (.I0(R15_IBUF[27]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[27]),
        .O(RD2_OBUF[27]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[28]_inst_i_1 
       (.I0(R15_IBUF[28]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[28]),
        .O(RD2_OBUF[28]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[29]_inst_i_1 
       (.I0(R15_IBUF[29]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[29]),
        .O(RD2_OBUF[29]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[2]_inst_i_1 
       (.I0(R15_IBUF[2]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[2]),
        .O(RD2_OBUF[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[30]_inst_i_1 
       (.I0(R15_IBUF[30]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[30]),
        .O(RD2_OBUF[30]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[31]_inst_i_1 
       (.I0(R15_IBUF[31]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[31]),
        .O(RD2_OBUF[31]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[3]_inst_i_1 
       (.I0(R15_IBUF[3]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[3]),
        .O(RD2_OBUF[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[4]_inst_i_1 
       (.I0(R15_IBUF[4]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[4]),
        .O(RD2_OBUF[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[5]_inst_i_1 
       (.I0(R15_IBUF[5]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[5]),
        .O(RD2_OBUF[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[6]_inst_i_1 
       (.I0(R15_IBUF[6]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[6]),
        .O(RD2_OBUF[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[7]_inst_i_1 
       (.I0(R15_IBUF[7]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[7]),
        .O(RD2_OBUF[7]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[8]_inst_i_1 
       (.I0(R15_IBUF[8]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[8]),
        .O(RD2_OBUF[8]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \RD2_OBUF[9]_inst_i_1 
       (.I0(R15_IBUF[9]),
        .I1(A2_IBUF[1]),
        .I2(A2_IBUF[0]),
        .I3(A2_IBUF[3]),
        .I4(A2_IBUF[2]),
        .I5(DATA_OUT2[9]),
        .O(RD2_OBUF[9]));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r1_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ RF_reg_r1_0_15_0_5
       (.ADDRA({1'b0,A1_IBUF}),
        .ADDRB({1'b0,A1_IBUF}),
        .ADDRC({1'b0,A1_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[1:0]),
        .DIB(WD3_IBUF[3:2]),
        .DIC(WD3_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[1:0]),
        .DOB(DATA_OUT1[3:2]),
        .DOC(DATA_OUT1[5:4]),
        .DOD(NLW_RF_reg_r1_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r1_0_15_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD278 RF_reg_r1_0_15_12_17
       (.ADDRA({1'b0,A1_IBUF}),
        .ADDRB({1'b0,A1_IBUF}),
        .ADDRC({1'b0,A1_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[13:12]),
        .DIB(WD3_IBUF[15:14]),
        .DIC(WD3_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[13:12]),
        .DOB(DATA_OUT1[15:14]),
        .DOC(DATA_OUT1[17:16]),
        .DOD(NLW_RF_reg_r1_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r1_0_15_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD279 RF_reg_r1_0_15_18_23
       (.ADDRA({1'b0,A1_IBUF}),
        .ADDRB({1'b0,A1_IBUF}),
        .ADDRC({1'b0,A1_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[19:18]),
        .DIB(WD3_IBUF[21:20]),
        .DIC(WD3_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[19:18]),
        .DOB(DATA_OUT1[21:20]),
        .DOC(DATA_OUT1[23:22]),
        .DOD(NLW_RF_reg_r1_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r1_0_15_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD280 RF_reg_r1_0_15_24_29
       (.ADDRA({1'b0,A1_IBUF}),
        .ADDRB({1'b0,A1_IBUF}),
        .ADDRC({1'b0,A1_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[25:24]),
        .DIB(WD3_IBUF[27:26]),
        .DIC(WD3_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[25:24]),
        .DOB(DATA_OUT1[27:26]),
        .DOC(DATA_OUT1[29:28]),
        .DOD(NLW_RF_reg_r1_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r1_0_15_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_UNIQ_BASE_ RF_reg_r1_0_15_30_31
       (.A0(A3_IBUF[0]),
        .A1(A3_IBUF[1]),
        .A2(A3_IBUF[2]),
        .A3(A3_IBUF[3]),
        .A4(1'b0),
        .D(WD3_IBUF[30]),
        .DPO(DATA_OUT1[30]),
        .DPRA0(A1_IBUF[0]),
        .DPRA1(A1_IBUF[1]),
        .DPRA2(A1_IBUF[2]),
        .DPRA3(A1_IBUF[3]),
        .DPRA4(1'b0),
        .SPO(NLW_RF_reg_r1_0_15_30_31_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r1_0_15_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD281 RF_reg_r1_0_15_30_31__0
       (.A0(A3_IBUF[0]),
        .A1(A3_IBUF[1]),
        .A2(A3_IBUF[2]),
        .A3(A3_IBUF[3]),
        .A4(1'b0),
        .D(WD3_IBUF[31]),
        .DPO(DATA_OUT1[31]),
        .DPRA0(A1_IBUF[0]),
        .DPRA1(A1_IBUF[1]),
        .DPRA2(A1_IBUF[2]),
        .DPRA3(A1_IBUF[3]),
        .DPRA4(1'b0),
        .SPO(NLW_RF_reg_r1_0_15_30_31__0_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r1_0_15_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD282 RF_reg_r1_0_15_6_11
       (.ADDRA({1'b0,A1_IBUF}),
        .ADDRB({1'b0,A1_IBUF}),
        .ADDRC({1'b0,A1_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[7:6]),
        .DIB(WD3_IBUF[9:8]),
        .DIC(WD3_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[7:6]),
        .DOB(DATA_OUT1[9:8]),
        .DOC(DATA_OUT1[11:10]),
        .DOD(NLW_RF_reg_r1_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r2_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD283 RF_reg_r2_0_15_0_5
       (.ADDRA({1'b0,A2_IBUF}),
        .ADDRB({1'b0,A2_IBUF}),
        .ADDRC({1'b0,A2_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[1:0]),
        .DIB(WD3_IBUF[3:2]),
        .DIC(WD3_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[1:0]),
        .DOB(DATA_OUT2[3:2]),
        .DOC(DATA_OUT2[5:4]),
        .DOD(NLW_RF_reg_r2_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r2_0_15_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD284 RF_reg_r2_0_15_12_17
       (.ADDRA({1'b0,A2_IBUF}),
        .ADDRB({1'b0,A2_IBUF}),
        .ADDRC({1'b0,A2_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[13:12]),
        .DIB(WD3_IBUF[15:14]),
        .DIC(WD3_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[13:12]),
        .DOB(DATA_OUT2[15:14]),
        .DOC(DATA_OUT2[17:16]),
        .DOD(NLW_RF_reg_r2_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r2_0_15_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD285 RF_reg_r2_0_15_18_23
       (.ADDRA({1'b0,A2_IBUF}),
        .ADDRB({1'b0,A2_IBUF}),
        .ADDRC({1'b0,A2_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[19:18]),
        .DIB(WD3_IBUF[21:20]),
        .DIC(WD3_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[19:18]),
        .DOB(DATA_OUT2[21:20]),
        .DOC(DATA_OUT2[23:22]),
        .DOD(NLW_RF_reg_r2_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r2_0_15_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD286 RF_reg_r2_0_15_24_29
       (.ADDRA({1'b0,A2_IBUF}),
        .ADDRB({1'b0,A2_IBUF}),
        .ADDRC({1'b0,A2_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[25:24]),
        .DIB(WD3_IBUF[27:26]),
        .DIC(WD3_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[25:24]),
        .DOB(DATA_OUT2[27:26]),
        .DOC(DATA_OUT2[29:28]),
        .DOD(NLW_RF_reg_r2_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r2_0_15_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD287 RF_reg_r2_0_15_30_31
       (.A0(A3_IBUF[0]),
        .A1(A3_IBUF[1]),
        .A2(A3_IBUF[2]),
        .A3(A3_IBUF[3]),
        .A4(1'b0),
        .D(WD3_IBUF[30]),
        .DPO(DATA_OUT2[30]),
        .DPRA0(A2_IBUF[0]),
        .DPRA1(A2_IBUF[1]),
        .DPRA2(A2_IBUF[2]),
        .DPRA3(A2_IBUF[3]),
        .DPRA4(1'b0),
        .SPO(NLW_RF_reg_r2_0_15_30_31_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r2_0_15_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD288 RF_reg_r2_0_15_30_31__0
       (.A0(A3_IBUF[0]),
        .A1(A3_IBUF[1]),
        .A2(A3_IBUF[2]),
        .A3(A3_IBUF[3]),
        .A4(1'b0),
        .D(WD3_IBUF[31]),
        .DPO(DATA_OUT2[31]),
        .DPRA0(A2_IBUF[0]),
        .DPRA1(A2_IBUF[1]),
        .DPRA2(A2_IBUF[2]),
        .DPRA3(A2_IBUF[3]),
        .DPRA4(1'b0),
        .SPO(NLW_RF_reg_r2_0_15_30_31__0_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "rf/RF_reg_r2_0_15_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD289 RF_reg_r2_0_15_6_11
       (.ADDRA({1'b0,A2_IBUF}),
        .ADDRB({1'b0,A2_IBUF}),
        .ADDRC({1'b0,A2_IBUF}),
        .ADDRD({1'b0,A3_IBUF}),
        .DIA(WD3_IBUF[7:6]),
        .DIB(WD3_IBUF[9:8]),
        .DIC(WD3_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[7:6]),
        .DOB(DATA_OUT2[9:8]),
        .DOC(DATA_OUT2[11:10]),
        .DOD(NLW_RF_reg_r2_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite_IBUF));
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
