// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sun Mar 24 11:44:35 2024
// Host        : yannos running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/Yannos/FILES/PROGRAMS/FPGA/VIVADO/MSc_Control_and_Computing-UoA/PROJECTS/Project_2/Processor_Multicycle/Processor_Multicycle.sim/sim_1/impl/timing/xsim/Processor_tb_time_impl.v
// Design      : Processor
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

module RAM32M_HD1
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

module RAM32M_HD12
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

module RAM32M_HD2
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

module RAM32M_HD3
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

module RAM32M_HD5
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

module RAM32M_HD6
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

module RAM32M_HD7
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

module RAM32M_HD8
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

module RAM32M_HD9
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

module RAM32X1D_HD10
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

module RAM32X1D_HD11
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

module RAM32X1D_HD4
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

module ADD_SUB
   (S_0,
    CO,
    d_out0_out,
    S,
    \ALUResult_OBUF[4]_inst_i_3 ,
    \ALUResult_OBUF[8]_inst_i_3 ,
    \ALUResult_OBUF[12]_inst_i_3 ,
    \ALUResult_OBUF[16]_inst_i_3 ,
    \ALUResult_OBUF[20]_inst_i_3 ,
    \ALUResult_OBUF[24]_inst_i_3 ,
    DI,
    \d_out_reg[0] );
  output [31:0]S_0;
  output [0:0]CO;
  input [30:0]d_out0_out;
  input [3:0]S;
  input [3:0]\ALUResult_OBUF[4]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_3 ;
  input [0:0]DI;
  input [3:0]\d_out_reg[0] ;

  wire [3:0]\ALUResult_OBUF[12]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[4]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_3 ;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [3:0]S;
  wire [31:0]S_0;
  wire [30:0]d_out0_out;
  wire [3:0]\d_out_reg[0] ;

  adder add
       (.\ALUResult_OBUF[12]_inst_i_3 (\ALUResult_OBUF[12]_inst_i_3 ),
        .\ALUResult_OBUF[16]_inst_i_3 (\ALUResult_OBUF[16]_inst_i_3 ),
        .\ALUResult_OBUF[20]_inst_i_3 (\ALUResult_OBUF[20]_inst_i_3 ),
        .\ALUResult_OBUF[24]_inst_i_3 (\ALUResult_OBUF[24]_inst_i_3 ),
        .\ALUResult_OBUF[4]_inst_i_3 (\ALUResult_OBUF[4]_inst_i_3 ),
        .\ALUResult_OBUF[8]_inst_i_3 (\ALUResult_OBUF[8]_inst_i_3 ),
        .CO(CO),
        .DI(DI),
        .S(S),
        .S_0(S_0),
        .d_out0_out(d_out0_out),
        .\d_out_reg[0] (\d_out_reg[0] ));
endmodule

module ALU
   (S_0,
    CO,
    d_out0_out,
    S,
    \ALUResult_OBUF[4]_inst_i_3 ,
    \ALUResult_OBUF[8]_inst_i_3 ,
    \ALUResult_OBUF[12]_inst_i_3 ,
    \ALUResult_OBUF[16]_inst_i_3 ,
    \ALUResult_OBUF[20]_inst_i_3 ,
    \ALUResult_OBUF[24]_inst_i_3 ,
    DI,
    \d_out_reg[0] );
  output [31:0]S_0;
  output [0:0]CO;
  input [30:0]d_out0_out;
  input [3:0]S;
  input [3:0]\ALUResult_OBUF[4]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_3 ;
  input [0:0]DI;
  input [3:0]\d_out_reg[0] ;

  wire [3:0]\ALUResult_OBUF[12]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[4]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_3 ;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [3:0]S;
  wire [31:0]S_0;
  wire [30:0]d_out0_out;
  wire [3:0]\d_out_reg[0] ;

  ADD_SUB AddSub
       (.\ALUResult_OBUF[12]_inst_i_3 (\ALUResult_OBUF[12]_inst_i_3 ),
        .\ALUResult_OBUF[16]_inst_i_3 (\ALUResult_OBUF[16]_inst_i_3 ),
        .\ALUResult_OBUF[20]_inst_i_3 (\ALUResult_OBUF[20]_inst_i_3 ),
        .\ALUResult_OBUF[24]_inst_i_3 (\ALUResult_OBUF[24]_inst_i_3 ),
        .\ALUResult_OBUF[4]_inst_i_3 (\ALUResult_OBUF[4]_inst_i_3 ),
        .\ALUResult_OBUF[8]_inst_i_3 (\ALUResult_OBUF[8]_inst_i_3 ),
        .CO(CO),
        .DI(DI),
        .S(S),
        .S_0(S_0),
        .d_out0_out(d_out0_out),
        .\d_out_reg[0] (\d_out_reg[0] ));
endmodule

module Control
   (Q,
    E,
    \FSM_sequential_current_state_reg[3] ,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[3]_0 ,
    \FSM_sequential_current_state_reg[1]_0 ,
    RegWrite,
    PCWrite,
    WEA,
    IRWrite,
    \FSM_sequential_current_state_reg[2] ,
    Instruction_OBUF,
    \FSM_sequential_current_state_reg[1]_1 ,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \FSM_sequential_current_state_reg[1]_2 ,
    \FSM_sequential_current_state_reg[2]_0 ,
    RESET_IBUF,
    CLK_IBUF_BUFG);
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\FSM_sequential_current_state_reg[3] ;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[3]_0 ;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output RegWrite;
  output PCWrite;
  output [0:0]WEA;
  output IRWrite;
  input \FSM_sequential_current_state_reg[2] ;
  input [3:0]Instruction_OBUF;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input \FSM_sequential_current_state_reg[0] ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \FSM_sequential_current_state_reg[1]_2 ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[1]_2 ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[3] ;
  wire \FSM_sequential_current_state_reg[3]_0 ;
  wire IRWrite;
  wire [3:0]Instruction_OBUF;
  wire PCWrite;
  wire [2:0]Q;
  wire RESET_IBUF;
  wire RegWrite;
  wire [0:0]WEA;

  FSM StateMachineWE
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(E),
        .\FSM_sequential_current_state_reg[0]_0 (\FSM_sequential_current_state_reg[0] ),
        .\FSM_sequential_current_state_reg[0]_1 (\FSM_sequential_current_state_reg[0]_0 ),
        .\FSM_sequential_current_state_reg[0]_2 (\FSM_sequential_current_state_reg[0]_1 ),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[1]_1 (\FSM_sequential_current_state_reg[1]_0 ),
        .\FSM_sequential_current_state_reg[1]_2 (\FSM_sequential_current_state_reg[1]_1 ),
        .\FSM_sequential_current_state_reg[1]_3 (\FSM_sequential_current_state_reg[1]_2 ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2] ),
        .\FSM_sequential_current_state_reg[2]_1 (\FSM_sequential_current_state_reg[2]_0 ),
        .\FSM_sequential_current_state_reg[3]_0 (\FSM_sequential_current_state_reg[3] ),
        .\FSM_sequential_current_state_reg[3]_1 (\FSM_sequential_current_state_reg[3]_0 ),
        .IRWrite(IRWrite),
        .Instruction_OBUF(Instruction_OBUF),
        .PCWrite(PCWrite),
        .Q(Q),
        .RESET_IBUF(RESET_IBUF),
        .RegWrite(RegWrite),
        .WEA(WEA));
endmodule

module Datapath
   (\d_out_reg[21]_rep ,
    \d_out_reg[27]_rep ,
    \d_out_reg[24]_rep ,
    ALUResult_OBUF,
    Result_OBUF,
    \d_out_reg[21]_rep_0 ,
    \d_out_reg[31]_rep ,
    \FSM_sequential_current_state_reg[3] ,
    \d_out_reg[14]_rep ,
    \d_out_reg[13]_rep ,
    \d_out_reg[31] ,
    \d_out_reg[11]_rep ,
    \d_out_reg[11]_rep_rep ,
    \d_out_reg[7]_rep ,
    \d_out_reg[7] ,
    d_out,
    CLK_IBUF_BUFG,
    RESET_IBUF,
    WEA,
    RegWrite,
    \d_out_reg[31]_0 ,
    \d_out_reg[31]_1 ,
    \d_out_reg[31]_2 ,
    Q,
    IRWrite,
    E,
    PCWrite,
    \d_out_reg[0] );
  output \d_out_reg[21]_rep ;
  output [3:0]\d_out_reg[27]_rep ;
  output \d_out_reg[24]_rep ;
  output [31:0]ALUResult_OBUF;
  output [31:0]Result_OBUF;
  output \d_out_reg[21]_rep_0 ;
  output \d_out_reg[31]_rep ;
  output \FSM_sequential_current_state_reg[3] ;
  output \d_out_reg[14]_rep ;
  output \d_out_reg[13]_rep ;
  output [28:0]\d_out_reg[31] ;
  output \d_out_reg[11]_rep ;
  output \d_out_reg[11]_rep_rep ;
  output \d_out_reg[7]_rep ;
  output [5:0]\d_out_reg[7] ;
  output [31:0]d_out;
  input CLK_IBUF_BUFG;
  input RESET_IBUF;
  input [0:0]WEA;
  input RegWrite;
  input \d_out_reg[31]_0 ;
  input \d_out_reg[31]_1 ;
  input \d_out_reg[31]_2 ;
  input [2:0]Q;
  input IRWrite;
  input [0:0]E;
  input PCWrite;
  input [0:0]\d_out_reg[0] ;

  wire [31:0]ALUResult_OBUF;
  wire ALUblock_n_32;
  wire Arg_n_0;
  wire Arg_n_33;
  wire Brg_n_0;
  wire C;
  wire CLK_IBUF_BUFG;
  wire [3:0]CPSR__0;
  wire CPSR_n_0;
  wire [31:0]DATA_IN;
  wire [31:0]DATA_OUT1;
  wire [31:0]DATA_OUT2;
  wire DataMemory_n_0;
  wire DataMemory_n_1;
  wire DataMemory_n_10;
  wire DataMemory_n_11;
  wire DataMemory_n_12;
  wire DataMemory_n_13;
  wire DataMemory_n_14;
  wire DataMemory_n_15;
  wire DataMemory_n_16;
  wire DataMemory_n_17;
  wire DataMemory_n_18;
  wire DataMemory_n_19;
  wire DataMemory_n_2;
  wire DataMemory_n_20;
  wire DataMemory_n_21;
  wire DataMemory_n_22;
  wire DataMemory_n_23;
  wire DataMemory_n_24;
  wire DataMemory_n_25;
  wire DataMemory_n_26;
  wire DataMemory_n_27;
  wire DataMemory_n_28;
  wire DataMemory_n_29;
  wire DataMemory_n_3;
  wire DataMemory_n_30;
  wire DataMemory_n_31;
  wire DataMemory_n_4;
  wire DataMemory_n_5;
  wire DataMemory_n_6;
  wire DataMemory_n_7;
  wire DataMemory_n_8;
  wire DataMemory_n_9;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[3] ;
  wire IMrg_n_0;
  wire IMrg_n_1;
  wire IMrg_n_10;
  wire IMrg_n_11;
  wire IMrg_n_12;
  wire IMrg_n_13;
  wire IMrg_n_14;
  wire IMrg_n_15;
  wire IMrg_n_16;
  wire IMrg_n_17;
  wire IMrg_n_18;
  wire IMrg_n_19;
  wire IMrg_n_2;
  wire IMrg_n_20;
  wire IMrg_n_21;
  wire IMrg_n_22;
  wire IMrg_n_23;
  wire IMrg_n_24;
  wire IMrg_n_25;
  wire IMrg_n_3;
  wire IMrg_n_4;
  wire IMrg_n_5;
  wire IMrg_n_6;
  wire IMrg_n_7;
  wire IMrg_n_8;
  wire IMrg_n_9;
  wire IRWrite;
  wire IRrg_n_145;
  wire IRrg_n_157;
  wire IRrg_n_158;
  wire IRrg_n_159;
  wire IRrg_n_160;
  wire IRrg_n_161;
  wire IRrg_n_162;
  wire IRrg_n_163;
  wire IRrg_n_164;
  wire IRrg_n_165;
  wire IRrg_n_166;
  wire IRrg_n_167;
  wire IRrg_n_168;
  wire IRrg_n_169;
  wire IRrg_n_170;
  wire IRrg_n_171;
  wire IRrg_n_172;
  wire IRrg_n_173;
  wire IRrg_n_174;
  wire IRrg_n_175;
  wire IRrg_n_176;
  wire IRrg_n_177;
  wire IRrg_n_178;
  wire IRrg_n_179;
  wire IRrg_n_180;
  wire IRrg_n_183;
  wire IRrg_n_184;
  wire IRrg_n_185;
  wire IRrg_n_186;
  wire IRrg_n_187;
  wire IRrg_n_188;
  wire IRrg_n_189;
  wire IRrg_n_190;
  wire IRrg_n_191;
  wire IRrg_n_192;
  wire IRrg_n_193;
  wire IRrg_n_194;
  wire IRrg_n_195;
  wire IRrg_n_196;
  wire IRrg_n_197;
  wire IRrg_n_198;
  wire IRrg_n_199;
  wire IRrg_n_200;
  wire IRrg_n_201;
  wire IRrg_n_202;
  wire IRrg_n_203;
  wire IRrg_n_204;
  wire IRrg_n_205;
  wire IRrg_n_206;
  wire IRrg_n_207;
  wire IRrg_n_208;
  wire IRrg_n_209;
  wire IRrg_n_210;
  wire IRrg_n_211;
  wire IRrg_n_212;
  wire IRrg_n_213;
  wire IRrg_n_214;
  wire IRrg_n_215;
  wire IRrg_n_216;
  wire IRrg_n_217;
  wire IRrg_n_218;
  wire IRrg_n_219;
  wire IRrg_n_220;
  wire IRrg_n_221;
  wire IRrg_n_222;
  wire IRrg_n_223;
  wire IRrg_n_224;
  wire IRrg_n_225;
  wire IRrg_n_226;
  wire IRrg_n_227;
  wire IRrg_n_228;
  wire IRrg_n_229;
  wire IRrg_n_230;
  wire IRrg_n_231;
  wire IRrg_n_232;
  wire IRrg_n_233;
  wire IRrg_n_234;
  wire IRrg_n_235;
  wire IRrg_n_236;
  wire IRrg_n_237;
  wire IRrg_n_238;
  wire IRrg_n_239;
  wire IRrg_n_240;
  wire IRrg_n_241;
  wire IRrg_n_242;
  wire IRrg_n_243;
  wire IRrg_n_244;
  wire IRrg_n_245;
  wire IRrg_n_246;
  wire IRrg_n_247;
  wire IRrg_n_42;
  wire IRrg_n_43;
  wire IRrg_n_44;
  wire IRrg_n_45;
  wire IRrg_n_46;
  wire IRrg_n_47;
  wire IRrg_n_48;
  wire IRrg_n_49;
  wire IRrg_n_50;
  wire IRrg_n_51;
  wire IRrg_n_52;
  wire IRrg_n_53;
  wire IRrg_n_54;
  wire IRrg_n_55;
  wire IRrg_n_56;
  wire IRrg_n_57;
  wire IRrg_n_58;
  wire IRrg_n_59;
  wire IRrg_n_60;
  wire IRrg_n_61;
  wire IRrg_n_62;
  wire IRrg_n_63;
  wire IRrg_n_64;
  wire IRrg_n_65;
  wire IRrg_n_66;
  wire IRrg_n_67;
  wire IRrg_n_68;
  wire IRrg_n_69;
  wire IRrg_n_70;
  wire IRrg_n_71;
  wire IRrg_n_72;
  wire IRrg_n_73;
  wire [30:9]Instruction_OBUF;
  wire MArg_n_0;
  wire MArg_n_1;
  wire MArg_n_2;
  wire MArg_n_3;
  wire MArg_n_4;
  wire PCWrite;
  wire [5:0]PC_OBUF;
  wire [0:0]PC__0;
  wire PC_n_0;
  wire PC_n_1;
  wire PC_n_14;
  wire PC_n_15;
  wire PC_n_16;
  wire PC_n_17;
  wire PC_n_18;
  wire PC_n_19;
  wire PC_n_2;
  wire PC_n_20;
  wire PC_n_21;
  wire PC_n_22;
  wire PC_n_23;
  wire PC_n_24;
  wire PC_n_25;
  wire PC_n_26;
  wire PC_n_27;
  wire PC_n_28;
  wire PC_n_29;
  wire PC_n_3;
  wire PC_n_30;
  wire PC_n_31;
  wire PC_n_32;
  wire PC_n_33;
  wire PC_n_34;
  wire PC_n_35;
  wire PC_n_36;
  wire PC_n_37;
  wire PC_n_38;
  wire PC_n_39;
  wire PC_n_4;
  wire PC_n_40;
  wire PC_n_41;
  wire PC_n_42;
  wire PC_n_43;
  wire PC_n_44;
  wire PC_n_5;
  wire PC_n_6;
  wire PC_n_7;
  wire PCp4rg_n_0;
  wire PCp4rg_n_1;
  wire PCp4rg_n_10;
  wire PCp4rg_n_11;
  wire PCp4rg_n_12;
  wire PCp4rg_n_13;
  wire PCp4rg_n_14;
  wire PCp4rg_n_15;
  wire PCp4rg_n_16;
  wire PCp4rg_n_17;
  wire PCp4rg_n_18;
  wire PCp4rg_n_19;
  wire PCp4rg_n_2;
  wire PCp4rg_n_20;
  wire PCp4rg_n_21;
  wire PCp4rg_n_22;
  wire PCp4rg_n_23;
  wire PCp4rg_n_24;
  wire PCp4rg_n_25;
  wire PCp4rg_n_26;
  wire PCp4rg_n_27;
  wire PCp4rg_n_28;
  wire PCp4rg_n_29;
  wire PCp4rg_n_3;
  wire PCp4rg_n_30;
  wire PCp4rg_n_31;
  wire PCp4rg_n_32;
  wire PCp4rg_n_4;
  wire PCp4rg_n_5;
  wire PCp4rg_n_6;
  wire PCp4rg_n_7;
  wire PCp4rg_n_8;
  wire PCp4rg_n_9;
  wire [2:0]Q;
  wire [31:1]R15;
  wire [3:0]RA1;
  wire [3:0]RA2;
  wire RESET_IBUF;
  wire [31:0]\ROM[0]_0 ;
  wire RegWrite;
  wire [31:0]Result_OBUF;
  wire [31:0]S;
  wire [31:0]SrcA;
  wire Srg_n_0;
  wire Srg_n_1;
  wire Srg_n_10;
  wire Srg_n_11;
  wire Srg_n_12;
  wire Srg_n_13;
  wire Srg_n_14;
  wire Srg_n_15;
  wire Srg_n_16;
  wire Srg_n_17;
  wire Srg_n_18;
  wire Srg_n_19;
  wire Srg_n_2;
  wire Srg_n_20;
  wire Srg_n_21;
  wire Srg_n_22;
  wire Srg_n_23;
  wire Srg_n_24;
  wire Srg_n_25;
  wire Srg_n_26;
  wire Srg_n_27;
  wire Srg_n_28;
  wire Srg_n_29;
  wire Srg_n_3;
  wire Srg_n_30;
  wire Srg_n_31;
  wire Srg_n_4;
  wire Srg_n_5;
  wire Srg_n_6;
  wire Srg_n_7;
  wire Srg_n_8;
  wire Srg_n_9;
  wire V;
  wire [3:0]WA;
  wire WDrg_n_0;
  wire WDrg_n_1;
  wire WDrg_n_10;
  wire WDrg_n_11;
  wire WDrg_n_12;
  wire WDrg_n_13;
  wire WDrg_n_14;
  wire WDrg_n_15;
  wire WDrg_n_16;
  wire WDrg_n_17;
  wire WDrg_n_18;
  wire WDrg_n_19;
  wire WDrg_n_2;
  wire WDrg_n_20;
  wire WDrg_n_21;
  wire WDrg_n_22;
  wire WDrg_n_23;
  wire WDrg_n_24;
  wire WDrg_n_25;
  wire WDrg_n_26;
  wire WDrg_n_27;
  wire WDrg_n_28;
  wire WDrg_n_29;
  wire WDrg_n_3;
  wire WDrg_n_30;
  wire WDrg_n_31;
  wire WDrg_n_4;
  wire WDrg_n_5;
  wire WDrg_n_6;
  wire WDrg_n_7;
  wire WDrg_n_8;
  wire WDrg_n_9;
  wire [0:0]WEA;
  wire [31:0]WriteData_OBUF;
  wire Z;
  wire [31:0]d_in;
  wire [31:0]d_out;
  wire [0:0]\d_out_reg[0] ;
  wire \d_out_reg[11]_rep ;
  wire \d_out_reg[11]_rep_rep ;
  wire \d_out_reg[13]_rep ;
  wire \d_out_reg[14]_rep ;
  wire \d_out_reg[21]_rep ;
  wire \d_out_reg[21]_rep_0 ;
  wire \d_out_reg[24]_rep ;
  wire [3:0]\d_out_reg[27]_rep ;
  wire [28:0]\d_out_reg[31] ;
  wire \d_out_reg[31]_0 ;
  wire \d_out_reg[31]_1 ;
  wire \d_out_reg[31]_2 ;
  wire \d_out_reg[31]_rep ;
  wire [5:0]\d_out_reg[7] ;
  wire \d_out_reg[7]_rep ;

  ALU ALUblock
       (.\ALUResult_OBUF[12]_inst_i_3 ({IRrg_n_195,IRrg_n_196,IRrg_n_197,IRrg_n_198}),
        .\ALUResult_OBUF[16]_inst_i_3 ({IRrg_n_199,IRrg_n_200,IRrg_n_201,IRrg_n_202}),
        .\ALUResult_OBUF[20]_inst_i_3 ({IRrg_n_203,IRrg_n_204,IRrg_n_205,IRrg_n_206}),
        .\ALUResult_OBUF[24]_inst_i_3 ({IRrg_n_207,IRrg_n_208,IRrg_n_209,IRrg_n_210}),
        .\ALUResult_OBUF[4]_inst_i_3 ({IRrg_n_187,IRrg_n_188,IRrg_n_189,IRrg_n_190}),
        .\ALUResult_OBUF[8]_inst_i_3 ({IRrg_n_191,IRrg_n_192,IRrg_n_193,IRrg_n_194}),
        .CO(ALUblock_n_32),
        .DI(Arg_n_0),
        .S({IRrg_n_183,IRrg_n_184,IRrg_n_185,IRrg_n_186}),
        .S_0(S),
        .d_out0_out(SrcA[30:0]),
        .\d_out_reg[0] ({IRrg_n_211,IRrg_n_212,IRrg_n_213,IRrg_n_214}));
  Rg Arg
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CO(Arg_n_33),
        .D(d_in),
        .DI(Arg_n_0),
        .Q(SrcA),
        .RESET_IBUF(RESET_IBUF),
        .\d_out_reg[0]_0 (ALUblock_n_32));
  Rg_0 Brg
       (.\ALUResult_OBUF[0]_inst_i_4 (IRrg_n_145),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({IRrg_n_215,IRrg_n_216,IRrg_n_217,IRrg_n_218,IRrg_n_219,IRrg_n_220,IRrg_n_221,IRrg_n_222,IRrg_n_223,IRrg_n_224,IRrg_n_225,IRrg_n_226,IRrg_n_227,IRrg_n_228,IRrg_n_229,IRrg_n_230,IRrg_n_231,IRrg_n_232,IRrg_n_233,IRrg_n_234,IRrg_n_235,IRrg_n_236,IRrg_n_237,IRrg_n_238,IRrg_n_239,IRrg_n_240,IRrg_n_241,IRrg_n_242,IRrg_n_243,IRrg_n_244,IRrg_n_245,IRrg_n_246}),
        .Instruction_OBUF(Instruction_OBUF[9]),
        .Q({IMrg_n_1,IMrg_n_23}),
        .RESET_IBUF(RESET_IBUF),
        .WriteData_OBUF(WriteData_OBUF),
        .d_out(d_out),
        .\d_out_reg[30]_rep_0 (Brg_n_0));
  Rg__parameterized1 CPSR
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({ALUResult_OBUF[31],Z,C,V}),
        .Instruction_OBUF(Instruction_OBUF[30:28]),
        .Q(CPSR__0),
        .RESET_IBUF(RESET_IBUF),
        .\d_out_reg[0]_0 (\d_out_reg[0] ),
        .\d_out_reg[1]_0 (CPSR_n_0));
  RAM DataMemory
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .DOADO({DataMemory_n_0,DataMemory_n_1,DataMemory_n_2,DataMemory_n_3,DataMemory_n_4,DataMemory_n_5,DataMemory_n_6,DataMemory_n_7,DataMemory_n_8,DataMemory_n_9,DataMemory_n_10,DataMemory_n_11,DataMemory_n_12,DataMemory_n_13,DataMemory_n_14,DataMemory_n_15}),
        .DOBDO({DataMemory_n_16,DataMemory_n_17,DataMemory_n_18,DataMemory_n_19,DataMemory_n_20,DataMemory_n_21,DataMemory_n_22,DataMemory_n_23,DataMemory_n_24,DataMemory_n_25,DataMemory_n_26,DataMemory_n_27,DataMemory_n_28,DataMemory_n_29}),
        .DOPADOP({DataMemory_n_30,DataMemory_n_31}),
        .Q({MArg_n_0,MArg_n_1,MArg_n_2,MArg_n_3,MArg_n_4}),
        .RAM_reg_0({WDrg_n_0,WDrg_n_1,WDrg_n_2,WDrg_n_3,WDrg_n_4,WDrg_n_5,WDrg_n_6,WDrg_n_7,WDrg_n_8,WDrg_n_9,WDrg_n_10,WDrg_n_11,WDrg_n_12,WDrg_n_13,WDrg_n_14,WDrg_n_15,WDrg_n_16,WDrg_n_17,WDrg_n_18,WDrg_n_19,WDrg_n_20,WDrg_n_21,WDrg_n_22,WDrg_n_23,WDrg_n_24,WDrg_n_25,WDrg_n_26,WDrg_n_27,WDrg_n_28,WDrg_n_29,WDrg_n_30,WDrg_n_31}),
        .RESET_IBUF(RESET_IBUF),
        .WEA(WEA));
  Rg_1 IMrg
       (.\ALUResult_OBUF[30]_inst_i_5 (IRrg_n_145),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({IRrg_n_157,IRrg_n_158,IRrg_n_159,IRrg_n_160,IRrg_n_161,IRrg_n_162,IRrg_n_163,IRrg_n_164,IRrg_n_165,IRrg_n_166,IRrg_n_167,IRrg_n_168,IRrg_n_169,IRrg_n_170,IRrg_n_171,IRrg_n_172,IRrg_n_173,IRrg_n_174,IRrg_n_175,IRrg_n_176,IRrg_n_177,IRrg_n_178,IRrg_n_179,IRrg_n_180}),
        .Instruction_OBUF(Instruction_OBUF[9]),
        .Q({IMrg_n_1,IMrg_n_2,IMrg_n_3,IMrg_n_4,IMrg_n_5,IMrg_n_6,IMrg_n_7,IMrg_n_8,IMrg_n_9,IMrg_n_10,IMrg_n_11,IMrg_n_12,IMrg_n_13,IMrg_n_14,IMrg_n_15,IMrg_n_16,IMrg_n_17,IMrg_n_18,IMrg_n_19,IMrg_n_20,IMrg_n_21,IMrg_n_22,IMrg_n_23,IMrg_n_24,IMrg_n_25}),
        .RESET_IBUF(RESET_IBUF),
        .WriteData_OBUF({WriteData_OBUF[29],WriteData_OBUF[1]}),
        .\d_out_reg[1]_0 (IMrg_n_0));
  Rg_2 IRrg
       (.ADDRC(RA1),
        .\ALUResult_OBUF[30]_inst_i_2_0 (IMrg_n_0),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .CO(Arg_n_33),
        .D({IRrg_n_42,IRrg_n_43,IRrg_n_44,IRrg_n_45,IRrg_n_46,IRrg_n_47,IRrg_n_48,IRrg_n_49,IRrg_n_50,IRrg_n_51,IRrg_n_52,IRrg_n_53,IRrg_n_54,IRrg_n_55,IRrg_n_56,IRrg_n_57,IRrg_n_58,IRrg_n_59,IRrg_n_60,IRrg_n_61,IRrg_n_62,IRrg_n_63,IRrg_n_64,IRrg_n_65,IRrg_n_66,IRrg_n_67,IRrg_n_68,IRrg_n_69,IRrg_n_70,IRrg_n_71,IRrg_n_72,IRrg_n_73}),
        .DATA_IN(DATA_IN),
        .DATA_OUT2(DATA_OUT2),
        .DOADO({DataMemory_n_0,DataMemory_n_1,DataMemory_n_2,DataMemory_n_3,DataMemory_n_4,DataMemory_n_5,DataMemory_n_6,DataMemory_n_7,DataMemory_n_8,DataMemory_n_9,DataMemory_n_10,DataMemory_n_11,DataMemory_n_12,DataMemory_n_13,DataMemory_n_14,DataMemory_n_15}),
        .DOBDO({DataMemory_n_16,DataMemory_n_17,DataMemory_n_18,DataMemory_n_19,DataMemory_n_20,DataMemory_n_21,DataMemory_n_22,DataMemory_n_23,DataMemory_n_24,DataMemory_n_25,DataMemory_n_26,DataMemory_n_27,DataMemory_n_28,DataMemory_n_29}),
        .DOPADOP({DataMemory_n_30,DataMemory_n_31}),
        .\FSM_sequential_current_state[0]_i_3 (CPSR_n_0),
        .\FSM_sequential_current_state[2]_i_4_0 (CPSR__0),
        .\FSM_sequential_current_state_reg[2] (Q),
        .\FSM_sequential_current_state_reg[3] (\FSM_sequential_current_state_reg[3] ),
        .IRWrite(IRWrite),
        .Q({PCp4rg_n_4,PCp4rg_n_5,PCp4rg_n_6,PCp4rg_n_7,PCp4rg_n_8,PCp4rg_n_9,PCp4rg_n_10,PCp4rg_n_11,PCp4rg_n_12,PCp4rg_n_13,PCp4rg_n_14,PCp4rg_n_15,PCp4rg_n_16,PCp4rg_n_17,PCp4rg_n_18,PCp4rg_n_19,PCp4rg_n_20,PCp4rg_n_21,PCp4rg_n_22,PCp4rg_n_23,PCp4rg_n_24,PCp4rg_n_25,PCp4rg_n_26,PCp4rg_n_27,PCp4rg_n_28,PCp4rg_n_29,PCp4rg_n_30,PCp4rg_n_0,PCp4rg_n_1,PCp4rg_n_31,PCp4rg_n_3,PCp4rg_n_32}),
        .R15(R15),
        .RA2(RA2),
        .RESET_IBUF(RESET_IBUF),
        .Result_OBUF(Result_OBUF),
        .S({IRrg_n_183,IRrg_n_184,IRrg_n_185,IRrg_n_186}),
        .S_0(S),
        .WA(WA),
        .WriteData_OBUF(WriteData_OBUF),
        .\d_out[2]_i_3_0 ({Z,C,V}),
        .\d_out_reg[0]_0 (Brg_n_0),
        .\d_out_reg[11]_0 ({IRrg_n_191,IRrg_n_192,IRrg_n_193,IRrg_n_194}),
        .\d_out_reg[11]_rep_0 (\d_out_reg[11]_rep ),
        .\d_out_reg[11]_rep_rep_0 (\d_out_reg[11]_rep_rep ),
        .\d_out_reg[13]_rep_0 (\d_out_reg[13]_rep ),
        .\d_out_reg[13]_rep_1 ({IRrg_n_215,IRrg_n_216,IRrg_n_217,IRrg_n_218,IRrg_n_219,IRrg_n_220,IRrg_n_221,IRrg_n_222,IRrg_n_223,IRrg_n_224,IRrg_n_225,IRrg_n_226,IRrg_n_227,IRrg_n_228,IRrg_n_229,IRrg_n_230,IRrg_n_231,IRrg_n_232,IRrg_n_233,IRrg_n_234,IRrg_n_235,IRrg_n_236,IRrg_n_237,IRrg_n_238,IRrg_n_239,IRrg_n_240,IRrg_n_241,IRrg_n_242,IRrg_n_243,IRrg_n_244,IRrg_n_245,IRrg_n_246}),
        .\d_out_reg[14]_rep_0 (\d_out_reg[14]_rep ),
        .\d_out_reg[15]_0 ({IRrg_n_195,IRrg_n_196,IRrg_n_197,IRrg_n_198}),
        .\d_out_reg[17]_rep_0 (IRrg_n_247),
        .\d_out_reg[19]_0 ({IRrg_n_199,IRrg_n_200,IRrg_n_201,IRrg_n_202}),
        .\d_out_reg[20]_rep_0 (\d_out_reg[27]_rep [0]),
        .\d_out_reg[21]_rep_0 (\d_out_reg[21]_rep ),
        .\d_out_reg[21]_rep_1 (\d_out_reg[21]_rep_0 ),
        .\d_out_reg[23]_0 ({IRrg_n_203,IRrg_n_204,IRrg_n_205,IRrg_n_206}),
        .\d_out_reg[23]_rep_0 ({IRrg_n_157,IRrg_n_158,IRrg_n_159,IRrg_n_160,IRrg_n_161,IRrg_n_162,IRrg_n_163,IRrg_n_164,IRrg_n_165,IRrg_n_166,IRrg_n_167,IRrg_n_168,IRrg_n_169,IRrg_n_170,IRrg_n_171,IRrg_n_172,IRrg_n_173,IRrg_n_174,IRrg_n_175,IRrg_n_176,IRrg_n_177,IRrg_n_178,IRrg_n_179,IRrg_n_180}),
        .\d_out_reg[24]_rep_0 (\d_out_reg[27]_rep [1]),
        .\d_out_reg[24]_rep_1 (\d_out_reg[24]_rep ),
        .\d_out_reg[26]_rep_0 (\d_out_reg[27]_rep [2]),
        .\d_out_reg[26]_rep_1 (IRrg_n_145),
        .\d_out_reg[27]_0 ({IRrg_n_207,IRrg_n_208,IRrg_n_209,IRrg_n_210}),
        .\d_out_reg[27]_rep_0 (\d_out_reg[27]_rep [3]),
        .\d_out_reg[28]_0 ({IMrg_n_1,IMrg_n_2,IMrg_n_3,IMrg_n_4,IMrg_n_5,IMrg_n_6,IMrg_n_7,IMrg_n_8,IMrg_n_9,IMrg_n_10,IMrg_n_11,IMrg_n_12,IMrg_n_13,IMrg_n_14,IMrg_n_15,IMrg_n_16,IMrg_n_17,IMrg_n_18,IMrg_n_19,IMrg_n_20,IMrg_n_21,IMrg_n_22,IMrg_n_23,IMrg_n_24,IMrg_n_25}),
        .\d_out_reg[30]_rep_0 ({Instruction_OBUF[30:28],Instruction_OBUF[9]}),
        .\d_out_reg[31]_0 ({IRrg_n_211,IRrg_n_212,IRrg_n_213,IRrg_n_214}),
        .\d_out_reg[31]_1 (\d_out_reg[31] ),
        .\d_out_reg[31]_2 ({Srg_n_0,Srg_n_1,Srg_n_2,Srg_n_3,Srg_n_4,Srg_n_5,Srg_n_6,Srg_n_7,Srg_n_8,Srg_n_9,Srg_n_10,Srg_n_11,Srg_n_12,Srg_n_13,Srg_n_14,Srg_n_15,Srg_n_16,Srg_n_17,Srg_n_18,Srg_n_19,Srg_n_20,Srg_n_21,Srg_n_22,Srg_n_23,Srg_n_24,Srg_n_25,Srg_n_26,Srg_n_27,Srg_n_28,Srg_n_29,Srg_n_30,Srg_n_31}),
        .\d_out_reg[31]_3 (\d_out_reg[31]_0 ),
        .\d_out_reg[31]_4 (\d_out_reg[31]_1 ),
        .\d_out_reg[31]_5 (\d_out_reg[31]_2 ),
        .\d_out_reg[31]_6 (SrcA),
        .\d_out_reg[31]_7 ({\ROM[0]_0 [31:28],PC_n_0,\ROM[0]_0 [26:23],PC_n_1,\ROM[0]_0 [21:20],PC_n_2,PC_n_3,PC_n_4,\ROM[0]_0 [16:12],PC_n_5,\ROM[0]_0 [8:7],PC_n_6,PC_n_7,\ROM[0]_0 [3:0]}),
        .\d_out_reg[31]_rep_0 (\d_out_reg[31]_rep ),
        .\d_out_reg[7]_0 ({IRrg_n_187,IRrg_n_188,IRrg_n_189,IRrg_n_190}),
        .\d_out_reg[7]_rep_0 (\d_out_reg[7]_rep ),
        .\d_out_reg[7]_rep_rep_0 (ALUResult_OBUF));
  ROM InstructionMemory
       (.PC_OBUF(PC_OBUF),
        .\d_out_reg[7]_rep ({\ROM[0]_0 [31:28],\ROM[0]_0 [26:23],\ROM[0]_0 [21:20],\ROM[0]_0 [16:12],\ROM[0]_0 [8:7],\ROM[0]_0 [3:0]}));
  Rg__parameterized4 MArg
       (.ALUResult_OBUF(ALUResult_OBUF[6:2]),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(E),
        .Q({MArg_n_0,MArg_n_1,MArg_n_2,MArg_n_3,MArg_n_4}),
        .RESET_IBUF(RESET_IBUF));
  Rg_3 PC
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({PC_n_14,PC_n_15,PC_n_16,PC_n_17,PC_n_18,PC_n_19,PC_n_20,PC_n_21,PC_n_22,PC_n_23,PC_n_24,PC_n_25,PC_n_26,PC_n_27,PC_n_28,PC_n_29,PC_n_30,PC_n_31,PC_n_32,PC_n_33,PC_n_34,PC_n_35,PC_n_36,PC_n_37,PC_n_38,PC_n_39,PC_n_40,PC_n_41,PC_n_42,PC_n_43,PC_n_44,PC__0}),
        .PCWrite(PCWrite),
        .PC_OBUF(PC_OBUF),
        .RESET_IBUF(RESET_IBUF),
        .\d_out_reg[31]_0 ({IRrg_n_42,IRrg_n_43,IRrg_n_44,IRrg_n_45,IRrg_n_46,IRrg_n_47,IRrg_n_48,IRrg_n_49,IRrg_n_50,IRrg_n_51,IRrg_n_52,IRrg_n_53,IRrg_n_54,IRrg_n_55,IRrg_n_56,IRrg_n_57,IRrg_n_58,IRrg_n_59,IRrg_n_60,IRrg_n_61,IRrg_n_62,IRrg_n_63,IRrg_n_64,IRrg_n_65,IRrg_n_66,IRrg_n_67,IRrg_n_68,IRrg_n_69,IRrg_n_70,IRrg_n_71,IRrg_n_72,IRrg_n_73}),
        .\d_out_reg[5]_rep_0 ({PC_n_0,PC_n_1,PC_n_2,PC_n_3,PC_n_4,PC_n_5,PC_n_6,PC_n_7}),
        .\d_out_reg[7]_0 (\d_out_reg[7] ));
  Rg_4 PCp4rg
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D({d_in[31:29],d_in[0]}),
        .DATA_OUT1({DATA_OUT1[31:29],DATA_OUT1[0]}),
        .IRWrite(IRWrite),
        .Q({PCp4rg_n_4,PCp4rg_n_5,PCp4rg_n_6,PCp4rg_n_7,PCp4rg_n_8,PCp4rg_n_9,PCp4rg_n_10,PCp4rg_n_11,PCp4rg_n_12,PCp4rg_n_13,PCp4rg_n_14,PCp4rg_n_15,PCp4rg_n_16,PCp4rg_n_17,PCp4rg_n_18,PCp4rg_n_19,PCp4rg_n_20,PCp4rg_n_21,PCp4rg_n_22,PCp4rg_n_23,PCp4rg_n_24,PCp4rg_n_25,PCp4rg_n_26,PCp4rg_n_27,PCp4rg_n_28,PCp4rg_n_29,PCp4rg_n_30,PCp4rg_n_31,PCp4rg_n_32}),
        .R15(R15[31:29]),
        .RESET_IBUF(RESET_IBUF),
        .S({PCp4rg_n_0,PCp4rg_n_1,PCp4rg_n_2,PCp4rg_n_3}),
        .\d_out_reg[31]_0 (IRrg_n_247),
        .\d_out_reg[31]_1 ({PC_n_14,PC_n_15,PC_n_16,PC_n_17,PC_n_18,PC_n_19,PC_n_20,PC_n_21,PC_n_22,PC_n_23,PC_n_24,PC_n_25,PC_n_26,PC_n_27,PC_n_28,PC_n_29,PC_n_30,PC_n_31,PC_n_32,PC_n_33,PC_n_34,PC_n_35,PC_n_36,PC_n_37,PC_n_38,PC_n_39,PC_n_40,PC_n_41,PC_n_42,PC_n_43,PC_n_44,PC__0}));
  adder_p4 PCplus8
       (.D(d_in[28:1]),
        .DATA_OUT1(DATA_OUT1[28:1]),
        .Q({PCp4rg_n_4,PCp4rg_n_5,PCp4rg_n_6,PCp4rg_n_7,PCp4rg_n_8,PCp4rg_n_9,PCp4rg_n_10,PCp4rg_n_11,PCp4rg_n_12,PCp4rg_n_13,PCp4rg_n_14,PCp4rg_n_15,PCp4rg_n_16,PCp4rg_n_17,PCp4rg_n_18,PCp4rg_n_19,PCp4rg_n_20,PCp4rg_n_21,PCp4rg_n_22,PCp4rg_n_23,PCp4rg_n_24,PCp4rg_n_25,PCp4rg_n_26,PCp4rg_n_27,PCp4rg_n_28,PCp4rg_n_29,PCp4rg_n_30,PCp4rg_n_0,PCp4rg_n_1,PCp4rg_n_31,PCp4rg_n_3}),
        .R15(R15),
        .S(PCp4rg_n_2),
        .\d_out_reg[28] (IRrg_n_247));
  regfile RegisterFile
       (.ADDRC(RA1),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .DATA_IN(DATA_IN),
        .DATA_OUT1(DATA_OUT1),
        .DATA_OUT2(DATA_OUT2),
        .RA2(RA2),
        .RegWrite(RegWrite),
        .WA(WA));
  Rg_5 Srg
       (.ALUResult_OBUF(ALUResult_OBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .Q({Srg_n_0,Srg_n_1,Srg_n_2,Srg_n_3,Srg_n_4,Srg_n_5,Srg_n_6,Srg_n_7,Srg_n_8,Srg_n_9,Srg_n_10,Srg_n_11,Srg_n_12,Srg_n_13,Srg_n_14,Srg_n_15,Srg_n_16,Srg_n_17,Srg_n_18,Srg_n_19,Srg_n_20,Srg_n_21,Srg_n_22,Srg_n_23,Srg_n_24,Srg_n_25,Srg_n_26,Srg_n_27,Srg_n_28,Srg_n_29,Srg_n_30,Srg_n_31}),
        .RESET_IBUF(RESET_IBUF));
  Rg_6 WDrg
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .D(WriteData_OBUF),
        .Q({WDrg_n_0,WDrg_n_1,WDrg_n_2,WDrg_n_3,WDrg_n_4,WDrg_n_5,WDrg_n_6,WDrg_n_7,WDrg_n_8,WDrg_n_9,WDrg_n_10,WDrg_n_11,WDrg_n_12,WDrg_n_13,WDrg_n_14,WDrg_n_15,WDrg_n_16,WDrg_n_17,WDrg_n_18,WDrg_n_19,WDrg_n_20,WDrg_n_21,WDrg_n_22,WDrg_n_23,WDrg_n_24,WDrg_n_25,WDrg_n_26,WDrg_n_27,WDrg_n_28,WDrg_n_29,WDrg_n_30,WDrg_n_31}),
        .RESET_IBUF(RESET_IBUF));
endmodule

module FSM
   (Q,
    E,
    \FSM_sequential_current_state_reg[3]_0 ,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[3]_1 ,
    \FSM_sequential_current_state_reg[1]_1 ,
    RegWrite,
    PCWrite,
    WEA,
    IRWrite,
    \FSM_sequential_current_state_reg[2]_0 ,
    Instruction_OBUF,
    \FSM_sequential_current_state_reg[1]_2 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \FSM_sequential_current_state_reg[0]_2 ,
    \FSM_sequential_current_state_reg[1]_3 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    RESET_IBUF,
    CLK_IBUF_BUFG);
  output [2:0]Q;
  output [0:0]E;
  output [0:0]\FSM_sequential_current_state_reg[3]_0 ;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output \FSM_sequential_current_state_reg[3]_1 ;
  output \FSM_sequential_current_state_reg[1]_1 ;
  output RegWrite;
  output PCWrite;
  output [0:0]WEA;
  output IRWrite;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input [3:0]Instruction_OBUF;
  input \FSM_sequential_current_state_reg[1]_2 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \FSM_sequential_current_state_reg[0]_2 ;
  input \FSM_sequential_current_state_reg[1]_3 ;
  input \FSM_sequential_current_state_reg[2]_1 ;
  input RESET_IBUF;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[0]_i_5_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_5_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[3]_i_1_n_0 ;
  wire \FSM_sequential_current_state[3]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[1]_2 ;
  wire \FSM_sequential_current_state_reg[1]_3 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire [0:0]\FSM_sequential_current_state_reg[3]_0 ;
  wire \FSM_sequential_current_state_reg[3]_1 ;
  wire IRWrite;
  wire [3:0]Instruction_OBUF;
  wire PCWrite;
  wire [2:0]Q;
  wire RESET_IBUF;
  wire RegWrite;
  wire [0:0]WEA;
  wire [0:0]current_state;

  LUT6 #(
    .INIT(64'hFFFFFFFF00810201)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(current_state),
        .I3(Q[0]),
        .I4(\FSM_sequential_current_state_reg[0]_0 ),
        .I5(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888F88888888)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(E),
        .I1(Instruction_OBUF[0]),
        .I2(\FSM_sequential_current_state_reg[0]_1 ),
        .I3(\FSM_sequential_current_state[0]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(\FSM_sequential_current_state_reg[0]_2 ),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_current_state[0]_i_5 
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\FSM_sequential_current_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAAAAAFBAAAA)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state_reg[1]_2 ),
        .I2(\FSM_sequential_current_state_reg[1]_3 ),
        .I3(Q[2]),
        .I4(\FSM_sequential_current_state[1]_i_5_n_0 ),
        .I5(Q[1]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0009000000000000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(Instruction_OBUF[0]),
        .I2(Q[2]),
        .I3(current_state),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_current_state[1]_i_5 
       (.I0(current_state),
        .I1(Q[0]),
        .O(\FSM_sequential_current_state[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0555100000000000)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state_reg[2]_0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(current_state),
        .I5(\FSM_sequential_current_state_reg[2]_1 ),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0400040004040400)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(Q[1]),
        .I1(current_state),
        .I2(Q[0]),
        .I3(Instruction_OBUF[2]),
        .I4(Instruction_OBUF[3]),
        .I5(Instruction_OBUF[1]),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF42804080)) 
    \FSM_sequential_current_state[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(current_state),
        .I3(Q[0]),
        .I4(\FSM_sequential_current_state_reg[2]_0 ),
        .I5(\FSM_sequential_current_state[3]_i_3_n_0 ),
        .O(\FSM_sequential_current_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \FSM_sequential_current_state[3]_i_3 
       (.I0(\FSM_sequential_current_state[1]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Instruction_OBUF[2]),
        .I4(Instruction_OBUF[3]),
        .I5(\FSM_sequential_current_state_reg[1]_2 ),
        .O(\FSM_sequential_current_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "s2_cmp:0101,s2_bl:0100,s2_b:0011,s4_sdppc:1010,s4_sdp:1001,s4_dppc:1000,s4_dp:0111,s1:0001,s0:0000,s3_ldr:1101,s4_condexnegtv:0010,s3_str:1100,s2_mem:1011,s4_ldrpc:1111,s4_ldr:1110,s2_dp:0110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state),
        .R(RESET_IBUF));
  (* FSM_ENCODED_STATES = "s2_cmp:0101,s2_bl:0100,s2_b:0011,s4_sdppc:1010,s4_sdp:1001,s4_dppc:1000,s4_dp:0111,s1:0001,s0:0000,s3_ldr:1101,s4_condexnegtv:0010,s3_str:1100,s2_mem:1011,s4_ldrpc:1111,s4_ldr:1110,s2_dp:0110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(Q[0]),
        .R(RESET_IBUF));
  (* FSM_ENCODED_STATES = "s2_cmp:0101,s2_bl:0100,s2_b:0011,s4_sdppc:1010,s4_sdp:1001,s4_dppc:1000,s4_dp:0111,s1:0001,s0:0000,s3_ldr:1101,s4_condexnegtv:0010,s3_str:1100,s2_mem:1011,s4_ldrpc:1111,s4_ldr:1110,s2_dp:0110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .Q(Q[1]),
        .R(RESET_IBUF));
  (* FSM_ENCODED_STATES = "s2_cmp:0101,s2_bl:0100,s2_b:0011,s4_sdppc:1010,s4_sdp:1001,s4_dppc:1000,s4_dp:0111,s1:0001,s0:0000,s3_ldr:1101,s4_condexnegtv:0010,s3_str:1100,s2_mem:1011,s4_ldrpc:1111,s4_ldr:1110,s2_dp:0110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[3]_i_1_n_0 ),
        .Q(Q[2]),
        .R(RESET_IBUF));
  LUT4 #(
    .INIT(16'h1000)) 
    RAM_reg_i_1
       (.I0(Q[0]),
        .I1(current_state),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(WEA));
  LUT4 #(
    .INIT(16'h2490)) 
    RF_reg_r1_0_15_0_5_i_1
       (.I0(Q[0]),
        .I1(current_state),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(RegWrite));
  LUT4 #(
    .INIT(16'hBD6E)) 
    \d_out[31]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(current_state),
        .I3(Q[0]),
        .O(PCWrite));
  LUT4 #(
    .INIT(16'h0001)) 
    \d_out[31]_i_1__2 
       (.I0(Q[0]),
        .I1(current_state),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(IRWrite));
  LUT4 #(
    .INIT(16'hFBEB)) 
    \d_out[31]_i_3 
       (.I0(Q[2]),
        .I1(current_state),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\FSM_sequential_current_state_reg[3]_1 ));
  LUT4 #(
    .INIT(16'hC33D)) 
    \d_out[31]_i_4 
       (.I0(Q[0]),
        .I1(current_state),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h3DCE)) 
    \d_out[31]_i_5 
       (.I0(Q[0]),
        .I1(current_state),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\FSM_sequential_current_state_reg[1]_1 ));
  LUT4 #(
    .INIT(16'h0260)) 
    \d_out[3]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(current_state),
        .I3(Q[0]),
        .O(\FSM_sequential_current_state_reg[3]_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \d_out[4]_i_1__2 
       (.I0(Q[0]),
        .I1(current_state),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(E));
endmodule

(* ECO_CHECKSUM = "3099634b" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Processor
   (CLK,
    RESET,
    PC,
    Instruction,
    ALUResult,
    WriteData,
    Result);
  input CLK;
  input RESET;
  output [5:0]PC;
  output [31:0]Instruction;
  output [31:0]ALUResult;
  output [31:0]WriteData;
  output [31:0]Result;

  wire [31:0]ALUResult;
  wire [31:0]ALUResult_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire ControlUnit_MultiCycle_n_5;
  wire ControlUnit_MultiCycle_n_6;
  wire ControlUnit_MultiCycle_n_7;
  wire DataPath_MultiCycle_n_0;
  wire DataPath_MultiCycle_n_100;
  wire DataPath_MultiCycle_n_101;
  wire DataPath_MultiCycle_n_102;
  wire DataPath_MultiCycle_n_103;
  wire DataPath_MultiCycle_n_104;
  wire DataPath_MultiCycle_n_105;
  wire DataPath_MultiCycle_n_106;
  wire DataPath_MultiCycle_n_107;
  wire DataPath_MultiCycle_n_108;
  wire DataPath_MultiCycle_n_109;
  wire DataPath_MultiCycle_n_110;
  wire DataPath_MultiCycle_n_111;
  wire DataPath_MultiCycle_n_112;
  wire DataPath_MultiCycle_n_113;
  wire DataPath_MultiCycle_n_114;
  wire DataPath_MultiCycle_n_115;
  wire DataPath_MultiCycle_n_116;
  wire DataPath_MultiCycle_n_117;
  wire DataPath_MultiCycle_n_118;
  wire DataPath_MultiCycle_n_119;
  wire DataPath_MultiCycle_n_120;
  wire DataPath_MultiCycle_n_121;
  wire DataPath_MultiCycle_n_122;
  wire DataPath_MultiCycle_n_123;
  wire DataPath_MultiCycle_n_124;
  wire DataPath_MultiCycle_n_125;
  wire DataPath_MultiCycle_n_126;
  wire DataPath_MultiCycle_n_127;
  wire DataPath_MultiCycle_n_128;
  wire DataPath_MultiCycle_n_129;
  wire DataPath_MultiCycle_n_130;
  wire DataPath_MultiCycle_n_131;
  wire DataPath_MultiCycle_n_132;
  wire DataPath_MultiCycle_n_133;
  wire DataPath_MultiCycle_n_134;
  wire DataPath_MultiCycle_n_135;
  wire DataPath_MultiCycle_n_136;
  wire DataPath_MultiCycle_n_137;
  wire DataPath_MultiCycle_n_138;
  wire DataPath_MultiCycle_n_139;
  wire DataPath_MultiCycle_n_140;
  wire DataPath_MultiCycle_n_141;
  wire DataPath_MultiCycle_n_142;
  wire DataPath_MultiCycle_n_143;
  wire DataPath_MultiCycle_n_144;
  wire DataPath_MultiCycle_n_5;
  wire DataPath_MultiCycle_n_70;
  wire DataPath_MultiCycle_n_71;
  wire DataPath_MultiCycle_n_72;
  wire DataPath_MultiCycle_n_73;
  wire DataPath_MultiCycle_n_74;
  wire DataPath_MultiCycle_n_75;
  wire DataPath_MultiCycle_n_76;
  wire DataPath_MultiCycle_n_77;
  wire DataPath_MultiCycle_n_78;
  wire DataPath_MultiCycle_n_79;
  wire DataPath_MultiCycle_n_80;
  wire DataPath_MultiCycle_n_81;
  wire DataPath_MultiCycle_n_82;
  wire DataPath_MultiCycle_n_83;
  wire DataPath_MultiCycle_n_84;
  wire DataPath_MultiCycle_n_85;
  wire DataPath_MultiCycle_n_86;
  wire DataPath_MultiCycle_n_87;
  wire DataPath_MultiCycle_n_88;
  wire DataPath_MultiCycle_n_89;
  wire DataPath_MultiCycle_n_90;
  wire DataPath_MultiCycle_n_91;
  wire DataPath_MultiCycle_n_92;
  wire DataPath_MultiCycle_n_93;
  wire DataPath_MultiCycle_n_94;
  wire DataPath_MultiCycle_n_95;
  wire DataPath_MultiCycle_n_96;
  wire DataPath_MultiCycle_n_97;
  wire DataPath_MultiCycle_n_98;
  wire DataPath_MultiCycle_n_99;
  wire FlagsWrite;
  wire IRWrite;
  wire [31:0]Instruction;
  wire [27:20]Instruction_OBUF;
  wire MAWrite;
  wire MemWrite;
  wire [5:0]PC;
  wire PCWrite;
  wire RESET;
  wire RESET_IBUF;
  wire RegWrite;
  wire [31:0]Result;
  wire [31:0]Result_OBUF;
  wire [3:1]\StateMachineWE/current_state ;
  wire [31:0]WriteData;

initial begin
 $sdf_annotate("Processor_tb_time_impl.sdf",,,,"tool_control");
end
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[0]_inst 
       (.I(ALUResult_OBUF[0]),
        .O(ALUResult[0]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[10]_inst 
       (.I(ALUResult_OBUF[10]),
        .O(ALUResult[10]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[11]_inst 
       (.I(ALUResult_OBUF[11]),
        .O(ALUResult[11]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[12]_inst 
       (.I(ALUResult_OBUF[12]),
        .O(ALUResult[12]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[13]_inst 
       (.I(ALUResult_OBUF[13]),
        .O(ALUResult[13]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[14]_inst 
       (.I(ALUResult_OBUF[14]),
        .O(ALUResult[14]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[15]_inst 
       (.I(ALUResult_OBUF[15]),
        .O(ALUResult[15]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[16]_inst 
       (.I(ALUResult_OBUF[16]),
        .O(ALUResult[16]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[17]_inst 
       (.I(ALUResult_OBUF[17]),
        .O(ALUResult[17]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[18]_inst 
       (.I(ALUResult_OBUF[18]),
        .O(ALUResult[18]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[19]_inst 
       (.I(ALUResult_OBUF[19]),
        .O(ALUResult[19]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[1]_inst 
       (.I(ALUResult_OBUF[1]),
        .O(ALUResult[1]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[20]_inst 
       (.I(ALUResult_OBUF[20]),
        .O(ALUResult[20]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[21]_inst 
       (.I(ALUResult_OBUF[21]),
        .O(ALUResult[21]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[22]_inst 
       (.I(ALUResult_OBUF[22]),
        .O(ALUResult[22]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[23]_inst 
       (.I(ALUResult_OBUF[23]),
        .O(ALUResult[23]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[24]_inst 
       (.I(ALUResult_OBUF[24]),
        .O(ALUResult[24]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[25]_inst 
       (.I(ALUResult_OBUF[25]),
        .O(ALUResult[25]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[26]_inst 
       (.I(ALUResult_OBUF[26]),
        .O(ALUResult[26]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[27]_inst 
       (.I(ALUResult_OBUF[27]),
        .O(ALUResult[27]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[28]_inst 
       (.I(ALUResult_OBUF[28]),
        .O(ALUResult[28]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[29]_inst 
       (.I(ALUResult_OBUF[29]),
        .O(ALUResult[29]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[2]_inst 
       (.I(ALUResult_OBUF[2]),
        .O(ALUResult[2]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[30]_inst 
       (.I(ALUResult_OBUF[30]),
        .O(ALUResult[30]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[31]_inst 
       (.I(ALUResult_OBUF[31]),
        .O(ALUResult[31]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[3]_inst 
       (.I(ALUResult_OBUF[3]),
        .O(ALUResult[3]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[4]_inst 
       (.I(ALUResult_OBUF[4]),
        .O(ALUResult[4]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[5]_inst 
       (.I(ALUResult_OBUF[5]),
        .O(ALUResult[5]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[6]_inst 
       (.I(ALUResult_OBUF[6]),
        .O(ALUResult[6]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[7]_inst 
       (.I(ALUResult_OBUF[7]),
        .O(ALUResult[7]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[8]_inst 
       (.I(ALUResult_OBUF[8]),
        .O(ALUResult[8]));
  (* IOB = "TRUE" *) 
  OBUF \ALUResult_OBUF[9]_inst 
       (.I(ALUResult_OBUF[9]),
        .O(ALUResult[9]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  Control ControlUnit_MultiCycle
       (.CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(MAWrite),
        .\FSM_sequential_current_state_reg[0] (DataPath_MultiCycle_n_74),
        .\FSM_sequential_current_state_reg[0]_0 (DataPath_MultiCycle_n_0),
        .\FSM_sequential_current_state_reg[0]_1 (DataPath_MultiCycle_n_71),
        .\FSM_sequential_current_state_reg[1] (ControlUnit_MultiCycle_n_5),
        .\FSM_sequential_current_state_reg[1]_0 (ControlUnit_MultiCycle_n_7),
        .\FSM_sequential_current_state_reg[1]_1 (DataPath_MultiCycle_n_70),
        .\FSM_sequential_current_state_reg[1]_2 (DataPath_MultiCycle_n_5),
        .\FSM_sequential_current_state_reg[2] (DataPath_MultiCycle_n_73),
        .\FSM_sequential_current_state_reg[2]_0 (DataPath_MultiCycle_n_72),
        .\FSM_sequential_current_state_reg[3] (FlagsWrite),
        .\FSM_sequential_current_state_reg[3]_0 (ControlUnit_MultiCycle_n_6),
        .IRWrite(IRWrite),
        .Instruction_OBUF({Instruction_OBUF[27:26],Instruction_OBUF[24],Instruction_OBUF[20]}),
        .PCWrite(PCWrite),
        .Q(\StateMachineWE/current_state ),
        .RESET_IBUF(RESET_IBUF),
        .RegWrite(RegWrite),
        .WEA(MemWrite));
  Datapath DataPath_MultiCycle
       (.ALUResult_OBUF(ALUResult_OBUF),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .E(MAWrite),
        .\FSM_sequential_current_state_reg[3] (DataPath_MultiCycle_n_72),
        .IRWrite(IRWrite),
        .PCWrite(PCWrite),
        .Q(\StateMachineWE/current_state ),
        .RESET_IBUF(RESET_IBUF),
        .RegWrite(RegWrite),
        .Result_OBUF(Result_OBUF),
        .WEA(MemWrite),
        .d_out({DataPath_MultiCycle_n_113,DataPath_MultiCycle_n_114,DataPath_MultiCycle_n_115,DataPath_MultiCycle_n_116,DataPath_MultiCycle_n_117,DataPath_MultiCycle_n_118,DataPath_MultiCycle_n_119,DataPath_MultiCycle_n_120,DataPath_MultiCycle_n_121,DataPath_MultiCycle_n_122,DataPath_MultiCycle_n_123,DataPath_MultiCycle_n_124,DataPath_MultiCycle_n_125,DataPath_MultiCycle_n_126,DataPath_MultiCycle_n_127,DataPath_MultiCycle_n_128,DataPath_MultiCycle_n_129,DataPath_MultiCycle_n_130,DataPath_MultiCycle_n_131,DataPath_MultiCycle_n_132,DataPath_MultiCycle_n_133,DataPath_MultiCycle_n_134,DataPath_MultiCycle_n_135,DataPath_MultiCycle_n_136,DataPath_MultiCycle_n_137,DataPath_MultiCycle_n_138,DataPath_MultiCycle_n_139,DataPath_MultiCycle_n_140,DataPath_MultiCycle_n_141,DataPath_MultiCycle_n_142,DataPath_MultiCycle_n_143,DataPath_MultiCycle_n_144}),
        .\d_out_reg[0] (FlagsWrite),
        .\d_out_reg[11]_rep (DataPath_MultiCycle_n_104),
        .\d_out_reg[11]_rep_rep (DataPath_MultiCycle_n_105),
        .\d_out_reg[13]_rep (DataPath_MultiCycle_n_74),
        .\d_out_reg[14]_rep (DataPath_MultiCycle_n_73),
        .\d_out_reg[21]_rep (DataPath_MultiCycle_n_0),
        .\d_out_reg[21]_rep_0 (DataPath_MultiCycle_n_70),
        .\d_out_reg[24]_rep (DataPath_MultiCycle_n_5),
        .\d_out_reg[27]_rep ({Instruction_OBUF[27:26],Instruction_OBUF[24],Instruction_OBUF[20]}),
        .\d_out_reg[31] ({DataPath_MultiCycle_n_75,DataPath_MultiCycle_n_76,DataPath_MultiCycle_n_77,DataPath_MultiCycle_n_78,DataPath_MultiCycle_n_79,DataPath_MultiCycle_n_80,DataPath_MultiCycle_n_81,DataPath_MultiCycle_n_82,DataPath_MultiCycle_n_83,DataPath_MultiCycle_n_84,DataPath_MultiCycle_n_85,DataPath_MultiCycle_n_86,DataPath_MultiCycle_n_87,DataPath_MultiCycle_n_88,DataPath_MultiCycle_n_89,DataPath_MultiCycle_n_90,DataPath_MultiCycle_n_91,DataPath_MultiCycle_n_92,DataPath_MultiCycle_n_93,DataPath_MultiCycle_n_94,DataPath_MultiCycle_n_95,DataPath_MultiCycle_n_96,DataPath_MultiCycle_n_97,DataPath_MultiCycle_n_98,DataPath_MultiCycle_n_99,DataPath_MultiCycle_n_100,DataPath_MultiCycle_n_101,DataPath_MultiCycle_n_102,DataPath_MultiCycle_n_103}),
        .\d_out_reg[31]_0 (ControlUnit_MultiCycle_n_6),
        .\d_out_reg[31]_1 (ControlUnit_MultiCycle_n_5),
        .\d_out_reg[31]_2 (ControlUnit_MultiCycle_n_7),
        .\d_out_reg[31]_rep (DataPath_MultiCycle_n_71),
        .\d_out_reg[7] ({DataPath_MultiCycle_n_107,DataPath_MultiCycle_n_108,DataPath_MultiCycle_n_109,DataPath_MultiCycle_n_110,DataPath_MultiCycle_n_111,DataPath_MultiCycle_n_112}),
        .\d_out_reg[7]_rep (DataPath_MultiCycle_n_106));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[0]_inst 
       (.I(DataPath_MultiCycle_n_103),
        .O(Instruction[0]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[10]_inst 
       (.I(DataPath_MultiCycle_n_104),
        .O(Instruction[10]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[11]_inst 
       (.I(DataPath_MultiCycle_n_95),
        .O(Instruction[11]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[12]_inst 
       (.I(DataPath_MultiCycle_n_94),
        .O(Instruction[12]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[13]_inst 
       (.I(DataPath_MultiCycle_n_93),
        .O(Instruction[13]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[14]_inst 
       (.I(DataPath_MultiCycle_n_92),
        .O(Instruction[14]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[15]_inst 
       (.I(DataPath_MultiCycle_n_91),
        .O(Instruction[15]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[16]_inst 
       (.I(DataPath_MultiCycle_n_90),
        .O(Instruction[16]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[17]_inst 
       (.I(DataPath_MultiCycle_n_89),
        .O(Instruction[17]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[18]_inst 
       (.I(DataPath_MultiCycle_n_88),
        .O(Instruction[18]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[19]_inst 
       (.I(DataPath_MultiCycle_n_87),
        .O(Instruction[19]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[1]_inst 
       (.I(DataPath_MultiCycle_n_102),
        .O(Instruction[1]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[20]_inst 
       (.I(DataPath_MultiCycle_n_86),
        .O(Instruction[20]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[21]_inst 
       (.I(DataPath_MultiCycle_n_85),
        .O(Instruction[21]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[22]_inst 
       (.I(DataPath_MultiCycle_n_84),
        .O(Instruction[22]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[23]_inst 
       (.I(DataPath_MultiCycle_n_83),
        .O(Instruction[23]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[24]_inst 
       (.I(DataPath_MultiCycle_n_82),
        .O(Instruction[24]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[25]_inst 
       (.I(DataPath_MultiCycle_n_81),
        .O(Instruction[25]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[26]_inst 
       (.I(DataPath_MultiCycle_n_80),
        .O(Instruction[26]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[27]_inst 
       (.I(DataPath_MultiCycle_n_79),
        .O(Instruction[27]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[28]_inst 
       (.I(DataPath_MultiCycle_n_78),
        .O(Instruction[28]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[29]_inst 
       (.I(DataPath_MultiCycle_n_77),
        .O(Instruction[29]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[2]_inst 
       (.I(DataPath_MultiCycle_n_101),
        .O(Instruction[2]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[30]_inst 
       (.I(DataPath_MultiCycle_n_76),
        .O(Instruction[30]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[31]_inst 
       (.I(DataPath_MultiCycle_n_75),
        .O(Instruction[31]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[3]_inst 
       (.I(DataPath_MultiCycle_n_100),
        .O(Instruction[3]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[4]_inst 
       (.I(DataPath_MultiCycle_n_99),
        .O(Instruction[4]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[5]_inst 
       (.I(DataPath_MultiCycle_n_98),
        .O(Instruction[5]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[6]_inst 
       (.I(DataPath_MultiCycle_n_106),
        .O(Instruction[6]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[7]_inst 
       (.I(DataPath_MultiCycle_n_97),
        .O(Instruction[7]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[8]_inst 
       (.I(DataPath_MultiCycle_n_96),
        .O(Instruction[8]));
  (* IOB = "TRUE" *) 
  OBUF \Instruction_OBUF[9]_inst 
       (.I(DataPath_MultiCycle_n_105),
        .O(Instruction[9]));
  (* IOB = "TRUE" *) 
  OBUF \PC_OBUF[0]_inst 
       (.I(DataPath_MultiCycle_n_112),
        .O(PC[0]));
  (* IOB = "TRUE" *) 
  OBUF \PC_OBUF[1]_inst 
       (.I(DataPath_MultiCycle_n_111),
        .O(PC[1]));
  (* IOB = "TRUE" *) 
  OBUF \PC_OBUF[2]_inst 
       (.I(DataPath_MultiCycle_n_110),
        .O(PC[2]));
  (* IOB = "TRUE" *) 
  OBUF \PC_OBUF[3]_inst 
       (.I(DataPath_MultiCycle_n_109),
        .O(PC[3]));
  (* IOB = "TRUE" *) 
  OBUF \PC_OBUF[4]_inst 
       (.I(DataPath_MultiCycle_n_108),
        .O(PC[4]));
  (* IOB = "TRUE" *) 
  OBUF \PC_OBUF[5]_inst 
       (.I(DataPath_MultiCycle_n_107),
        .O(PC[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    RESET_IBUF_inst
       (.I(RESET),
        .O(RESET_IBUF));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[0]_inst 
       (.I(Result_OBUF[0]),
        .O(Result[0]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[10]_inst 
       (.I(Result_OBUF[10]),
        .O(Result[10]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[11]_inst 
       (.I(Result_OBUF[11]),
        .O(Result[11]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[12]_inst 
       (.I(Result_OBUF[12]),
        .O(Result[12]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[13]_inst 
       (.I(Result_OBUF[13]),
        .O(Result[13]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[14]_inst 
       (.I(Result_OBUF[14]),
        .O(Result[14]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[15]_inst 
       (.I(Result_OBUF[15]),
        .O(Result[15]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[16]_inst 
       (.I(Result_OBUF[16]),
        .O(Result[16]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[17]_inst 
       (.I(Result_OBUF[17]),
        .O(Result[17]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[18]_inst 
       (.I(Result_OBUF[18]),
        .O(Result[18]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[19]_inst 
       (.I(Result_OBUF[19]),
        .O(Result[19]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[1]_inst 
       (.I(Result_OBUF[1]),
        .O(Result[1]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[20]_inst 
       (.I(Result_OBUF[20]),
        .O(Result[20]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[21]_inst 
       (.I(Result_OBUF[21]),
        .O(Result[21]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[22]_inst 
       (.I(Result_OBUF[22]),
        .O(Result[22]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[23]_inst 
       (.I(Result_OBUF[23]),
        .O(Result[23]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[24]_inst 
       (.I(Result_OBUF[24]),
        .O(Result[24]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[25]_inst 
       (.I(Result_OBUF[25]),
        .O(Result[25]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[26]_inst 
       (.I(Result_OBUF[26]),
        .O(Result[26]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[27]_inst 
       (.I(Result_OBUF[27]),
        .O(Result[27]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[28]_inst 
       (.I(Result_OBUF[28]),
        .O(Result[28]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[29]_inst 
       (.I(Result_OBUF[29]),
        .O(Result[29]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[2]_inst 
       (.I(Result_OBUF[2]),
        .O(Result[2]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[30]_inst 
       (.I(Result_OBUF[30]),
        .O(Result[30]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[31]_inst 
       (.I(Result_OBUF[31]),
        .O(Result[31]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[3]_inst 
       (.I(Result_OBUF[3]),
        .O(Result[3]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[4]_inst 
       (.I(Result_OBUF[4]),
        .O(Result[4]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[5]_inst 
       (.I(Result_OBUF[5]),
        .O(Result[5]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[6]_inst 
       (.I(Result_OBUF[6]),
        .O(Result[6]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[7]_inst 
       (.I(Result_OBUF[7]),
        .O(Result[7]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[8]_inst 
       (.I(Result_OBUF[8]),
        .O(Result[8]));
  (* IOB = "TRUE" *) 
  OBUF \Result_OBUF[9]_inst 
       (.I(Result_OBUF[9]),
        .O(Result[9]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[0]_inst 
       (.I(DataPath_MultiCycle_n_144),
        .O(WriteData[0]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[10]_inst 
       (.I(DataPath_MultiCycle_n_134),
        .O(WriteData[10]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[11]_inst 
       (.I(DataPath_MultiCycle_n_133),
        .O(WriteData[11]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[12]_inst 
       (.I(DataPath_MultiCycle_n_132),
        .O(WriteData[12]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[13]_inst 
       (.I(DataPath_MultiCycle_n_131),
        .O(WriteData[13]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[14]_inst 
       (.I(DataPath_MultiCycle_n_130),
        .O(WriteData[14]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[15]_inst 
       (.I(DataPath_MultiCycle_n_129),
        .O(WriteData[15]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[16]_inst 
       (.I(DataPath_MultiCycle_n_128),
        .O(WriteData[16]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[17]_inst 
       (.I(DataPath_MultiCycle_n_127),
        .O(WriteData[17]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[18]_inst 
       (.I(DataPath_MultiCycle_n_126),
        .O(WriteData[18]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[19]_inst 
       (.I(DataPath_MultiCycle_n_125),
        .O(WriteData[19]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[1]_inst 
       (.I(DataPath_MultiCycle_n_143),
        .O(WriteData[1]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[20]_inst 
       (.I(DataPath_MultiCycle_n_124),
        .O(WriteData[20]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[21]_inst 
       (.I(DataPath_MultiCycle_n_123),
        .O(WriteData[21]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[22]_inst 
       (.I(DataPath_MultiCycle_n_122),
        .O(WriteData[22]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[23]_inst 
       (.I(DataPath_MultiCycle_n_121),
        .O(WriteData[23]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[24]_inst 
       (.I(DataPath_MultiCycle_n_120),
        .O(WriteData[24]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[25]_inst 
       (.I(DataPath_MultiCycle_n_119),
        .O(WriteData[25]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[26]_inst 
       (.I(DataPath_MultiCycle_n_118),
        .O(WriteData[26]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[27]_inst 
       (.I(DataPath_MultiCycle_n_117),
        .O(WriteData[27]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[28]_inst 
       (.I(DataPath_MultiCycle_n_116),
        .O(WriteData[28]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[29]_inst 
       (.I(DataPath_MultiCycle_n_115),
        .O(WriteData[29]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[2]_inst 
       (.I(DataPath_MultiCycle_n_142),
        .O(WriteData[2]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[30]_inst 
       (.I(DataPath_MultiCycle_n_114),
        .O(WriteData[30]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[31]_inst 
       (.I(DataPath_MultiCycle_n_113),
        .O(WriteData[31]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[3]_inst 
       (.I(DataPath_MultiCycle_n_141),
        .O(WriteData[3]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[4]_inst 
       (.I(DataPath_MultiCycle_n_140),
        .O(WriteData[4]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[5]_inst 
       (.I(DataPath_MultiCycle_n_139),
        .O(WriteData[5]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[6]_inst 
       (.I(DataPath_MultiCycle_n_138),
        .O(WriteData[6]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[7]_inst 
       (.I(DataPath_MultiCycle_n_137),
        .O(WriteData[7]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[8]_inst 
       (.I(DataPath_MultiCycle_n_136),
        .O(WriteData[8]));
  (* IOB = "TRUE" *) 
  OBUF \WriteData_OBUF[9]_inst 
       (.I(DataPath_MultiCycle_n_135),
        .O(WriteData[9]));
endmodule

module RAM
   (DOADO,
    DOBDO,
    DOPADOP,
    CLK_IBUF_BUFG,
    RESET_IBUF,
    Q,
    RAM_reg_0,
    WEA);
  output [15:0]DOADO;
  output [13:0]DOBDO;
  output [1:0]DOPADOP;
  input CLK_IBUF_BUFG;
  input RESET_IBUF;
  input [4:0]Q;
  input [31:0]RAM_reg_0;
  input [0:0]WEA;

  wire CLK_IBUF_BUFG;
  wire [15:0]DOADO;
  wire [13:0]DOBDO;
  wire [1:0]DOPADOP;
  wire [4:0]Q;
  wire [31:0]RAM_reg_0;
  wire RESET_IBUF;
  wire [0:0]WEA;
  wire [15:14]NLW_RAM_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_RAM_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p2_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d14" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/DataMemory/RAM_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_ext_slice_begin = "18" *) 
  (* ram_ext_slice_end = "31" *) 
  (* ram_offset = "480" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "17" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    RAM_reg
       (.ADDRARDADDR({1'b0,1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK_IBUF_BUFG),
        .CLKBWRCLK(CLK_IBUF_BUFG),
        .DIADI(RAM_reg_0[15:0]),
        .DIBDI({1'b1,1'b1,RAM_reg_0[31:18]}),
        .DIPADIP(RAM_reg_0[17:16]),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(DOADO),
        .DOBDO({NLW_RAM_reg_DOBDO_UNCONNECTED[15:14],DOBDO}),
        .DOPADOP(DOPADOP),
        .DOPBDOP(NLW_RAM_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(RESET_IBUF),
        .RSTRAMB(RESET_IBUF),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,WEA,WEA}));
endmodule

module ROM
   (\d_out_reg[7]_rep ,
    PC_OBUF);
  output [20:0]\d_out_reg[7]_rep ;
  input [5:0]PC_OBUF;

  wire [5:0]PC_OBUF;
  wire [20:0]\d_out_reg[7]_rep ;

  LUT6 #(
    .INIT(64'h5404101043010601)) 
    \d_out[0]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .I5(PC_OBUF[2]),
        .O(\d_out_reg[7]_rep [0]));
  LUT6 #(
    .INIT(64'h5151440215025420)) 
    \d_out[12]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[0]),
        .I5(PC_OBUF[1]),
        .O(\d_out_reg[7]_rep [6]));
  LUT6 #(
    .INIT(64'h1010005253415354)) 
    \d_out[13]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[2]),
        .O(\d_out_reg[7]_rep [7]));
  LUT6 #(
    .INIT(64'h0100011310564452)) 
    \d_out[14]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .I5(PC_OBUF[2]),
        .O(\d_out_reg[7]_rep [8]));
  LUT6 #(
    .INIT(64'h1010100200544246)) 
    \d_out[15]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[2]),
        .O(\d_out_reg[7]_rep [9]));
  LUT6 #(
    .INIT(64'h0040154240024155)) 
    \d_out[16]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[0]),
        .I5(PC_OBUF[1]),
        .O(\d_out_reg[7]_rep [10]));
  LUT6 #(
    .INIT(64'h0045451054141301)) 
    \d_out[1]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[0]),
        .O(\d_out_reg[7]_rep [1]));
  LUT6 #(
    .INIT(64'h4002545041164650)) 
    \d_out[20]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .I5(PC_OBUF[1]),
        .O(\d_out_reg[7]_rep [11]));
  LUT6 #(
    .INIT(64'h4143404410501300)) 
    \d_out[21]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[0]),
        .I5(PC_OBUF[1]),
        .O(\d_out_reg[7]_rep [12]));
  LUT6 #(
    .INIT(64'h4553105111471252)) 
    \d_out[23]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[0]),
        .O(\d_out_reg[7]_rep [13]));
  LUT6 #(
    .INIT(64'h4105530555165256)) 
    \d_out[24]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[1]),
        .O(\d_out_reg[7]_rep [14]));
  LUT6 #(
    .INIT(64'h1414050504454200)) 
    \d_out[25]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[0]),
        .O(\d_out_reg[7]_rep [15]));
  LUT6 #(
    .INIT(64'h0100000200110506)) 
    \d_out[26]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[0]),
        .O(\d_out_reg[7]_rep [16]));
  LUT6 #(
    .INIT(64'h5444400210020452)) 
    \d_out[28]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[2]),
        .O(\d_out_reg[7]_rep [17]));
  LUT6 #(
    .INIT(64'h5111105543150755)) 
    \d_out[29]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[0]),
        .I5(PC_OBUF[2]),
        .O(\d_out_reg[7]_rep [18]));
  LUT6 #(
    .INIT(64'h0054545400175705)) 
    \d_out[2]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[1]),
        .O(\d_out_reg[7]_rep [2]));
  LUT6 #(
    .INIT(64'h4104517355171175)) 
    \d_out[30]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[1]),
        .O(\d_out_reg[7]_rep [19]));
  LUT6 #(
    .INIT(64'h1540505F5517054D)) 
    \d_out[31]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[1]),
        .O(\d_out_reg[7]_rep [20]));
  LUT6 #(
    .INIT(64'h0004040004120041)) 
    \d_out[3]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[3]),
        .O(\d_out_reg[7]_rep [3]));
  LUT6 #(
    .INIT(64'h0000300000000800)) 
    \d_out[7]_i_1 
       (.I0(PC_OBUF[0]),
        .I1(PC_OBUF[5]),
        .I2(PC_OBUF[4]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[3]),
        .O(\d_out_reg[7]_rep [4]));
  LUT6 #(
    .INIT(64'h4000001002400000)) 
    \d_out[8]_i_1 
       (.I0(PC_OBUF[5]),
        .I1(PC_OBUF[4]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[1]),
        .I5(PC_OBUF[2]),
        .O(\d_out_reg[7]_rep [5]));
endmodule

module Rg
   (DI,
    Q,
    CO,
    \d_out_reg[0]_0 ,
    RESET_IBUF,
    D,
    CLK_IBUF_BUFG);
  output [0:0]DI;
  output [31:0]Q;
  output [0:0]CO;
  input [0:0]\d_out_reg[0]_0 ;
  input RESET_IBUF;
  input [31:0]D;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [0:0]CO;
  wire [31:0]D;
  wire [0:0]DI;
  wire [31:0]Q;
  wire RESET_IBUF;
  wire [0:0]\d_out_reg[0]_0 ;
  wire [3:1]\NLW_d_out_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_out_reg[0]_i_2_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  CARRY4 \d_out_reg[0]_i_2 
       (.CI(\d_out_reg[0]_0 ),
        .CO({\NLW_d_out_reg[0]_i_2_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_d_out_reg[0]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(RESET_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    sum0_carry__6_i_1
       (.I0(Q[31]),
        .O(DI));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg_0
   (\d_out_reg[30]_rep_0 ,
    WriteData_OBUF,
    d_out,
    Q,
    Instruction_OBUF,
    \ALUResult_OBUF[0]_inst_i_4 ,
    RESET_IBUF,
    D,
    CLK_IBUF_BUFG);
  output \d_out_reg[30]_rep_0 ;
  output [31:0]WriteData_OBUF;
  output [31:0]d_out;
  input [1:0]Q;
  input [0:0]Instruction_OBUF;
  input \ALUResult_OBUF[0]_inst_i_4 ;
  input RESET_IBUF;
  input [31:0]D;
  input CLK_IBUF_BUFG;

  wire \ALUResult_OBUF[0]_inst_i_4 ;
  wire CLK_IBUF_BUFG;
  wire [31:0]D;
  wire [0:0]Instruction_OBUF;
  wire [1:0]Q;
  wire RESET_IBUF;
  wire [31:0]WriteData_OBUF;
  wire [31:0]d_out;
  wire \d_out_reg[30]_rep_0 ;

  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \ALUResult_OBUF[0]_inst_i_6 
       (.I0(WriteData_OBUF[30]),
        .I1(Q[1]),
        .I2(Instruction_OBUF),
        .I3(WriteData_OBUF[2]),
        .I4(\ALUResult_OBUF[0]_inst_i_4 ),
        .I5(Q[0]),
        .O(\d_out_reg[30]_rep_0 ));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(d_out[0]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(WriteData_OBUF[0]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[10]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(d_out[10]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[10]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(WriteData_OBUF[10]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(d_out[11]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(WriteData_OBUF[11]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[12]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(d_out[12]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[12]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(WriteData_OBUF[12]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[13]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(d_out[13]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[13]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(WriteData_OBUF[13]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[14]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(d_out[14]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[14]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(WriteData_OBUF[14]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[15]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(d_out[15]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[15]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(WriteData_OBUF[15]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[16]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(d_out[16]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[16]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(WriteData_OBUF[16]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(d_out[17]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(WriteData_OBUF[17]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[18]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(d_out[18]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[18]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(WriteData_OBUF[18]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[19]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(d_out[19]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[19]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(WriteData_OBUF[19]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(d_out[1]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(WriteData_OBUF[1]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[20]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(d_out[20]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[20]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(WriteData_OBUF[20]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[21]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(d_out[21]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[21]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(WriteData_OBUF[21]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[22]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(d_out[22]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[22]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(WriteData_OBUF[22]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[23]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(d_out[23]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[23]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(WriteData_OBUF[23]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[24]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(d_out[24]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[24]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(WriteData_OBUF[24]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[25]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(d_out[25]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[25]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(WriteData_OBUF[25]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[26]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(d_out[26]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[26]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(WriteData_OBUF[26]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[27]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(d_out[27]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[27]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(WriteData_OBUF[27]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[28]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(d_out[28]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[28]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(WriteData_OBUF[28]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[29]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(d_out[29]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[29]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(WriteData_OBUF[29]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(d_out[2]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(WriteData_OBUF[2]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[30]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[30]),
        .Q(d_out[30]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[30]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[30]),
        .Q(WriteData_OBUF[30]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[31]),
        .Q(d_out[31]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[31]),
        .Q(WriteData_OBUF[31]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(d_out[3]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(WriteData_OBUF[3]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(d_out[4]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(WriteData_OBUF[4]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(d_out[5]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(WriteData_OBUF[5]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(d_out[6]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(WriteData_OBUF[6]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(d_out[7]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(WriteData_OBUF[7]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(d_out[8]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(WriteData_OBUF[8]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[9]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(d_out[9]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[9]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(WriteData_OBUF[9]),
        .R(RESET_IBUF));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg_1
   (\d_out_reg[1]_0 ,
    Q,
    WriteData_OBUF,
    Instruction_OBUF,
    \ALUResult_OBUF[30]_inst_i_5 ,
    RESET_IBUF,
    D,
    CLK_IBUF_BUFG);
  output \d_out_reg[1]_0 ;
  output [24:0]Q;
  input [1:0]WriteData_OBUF;
  input [0:0]Instruction_OBUF;
  input \ALUResult_OBUF[30]_inst_i_5 ;
  input RESET_IBUF;
  input [23:0]D;
  input CLK_IBUF_BUFG;

  wire \ALUResult_OBUF[30]_inst_i_5 ;
  wire CLK_IBUF_BUFG;
  wire [23:0]D;
  wire [0:0]Instruction_OBUF;
  wire [24:0]Q;
  wire RESET_IBUF;
  wire [1:0]WriteData_OBUF;
  wire \d_out_reg[1]_0 ;

  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \ALUResult_OBUF[30]_inst_i_13 
       (.I0(Q[1]),
        .I1(WriteData_OBUF[0]),
        .I2(Instruction_OBUF),
        .I3(WriteData_OBUF[1]),
        .I4(\ALUResult_OBUF[30]_inst_i_5 ),
        .I5(Q[24]),
        .O(\d_out_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Instruction_OBUF),
        .Q(Q[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[12]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[16]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[17]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[18]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[19]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[20]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[21]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[22]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[23]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[24]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(RESET_IBUF));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg_2
   (\d_out_reg[21]_rep_0 ,
    \d_out_reg[30]_rep_0 ,
    \d_out_reg[24]_rep_0 ,
    \d_out_reg[26]_rep_0 ,
    \d_out_reg[27]_rep_0 ,
    \d_out_reg[24]_rep_1 ,
    DATA_IN,
    \d_out_reg[20]_rep_0 ,
    D,
    \d_out_reg[7]_rep_rep_0 ,
    Result_OBUF,
    WA,
    \d_out[2]_i_3_0 ,
    \d_out_reg[26]_rep_1 ,
    \d_out_reg[21]_rep_1 ,
    \d_out_reg[31]_rep_0 ,
    RA2,
    ADDRC,
    \FSM_sequential_current_state_reg[3] ,
    \d_out_reg[23]_rep_0 ,
    \d_out_reg[14]_rep_0 ,
    \d_out_reg[13]_rep_0 ,
    S,
    \d_out_reg[7]_0 ,
    \d_out_reg[11]_0 ,
    \d_out_reg[15]_0 ,
    \d_out_reg[19]_0 ,
    \d_out_reg[23]_0 ,
    \d_out_reg[27]_0 ,
    \d_out_reg[31]_0 ,
    \d_out_reg[13]_rep_1 ,
    \d_out_reg[17]_rep_0 ,
    \d_out_reg[31]_1 ,
    \d_out_reg[11]_rep_0 ,
    \d_out_reg[11]_rep_rep_0 ,
    \d_out_reg[7]_rep_0 ,
    Q,
    DOADO,
    \d_out_reg[31]_2 ,
    \d_out_reg[31]_3 ,
    \d_out_reg[31]_4 ,
    \d_out_reg[31]_5 ,
    DOPADOP,
    DOBDO,
    \d_out_reg[28]_0 ,
    WriteData_OBUF,
    \d_out_reg[31]_6 ,
    S_0,
    CO,
    \d_out_reg[0]_0 ,
    \ALUResult_OBUF[30]_inst_i_2_0 ,
    \FSM_sequential_current_state_reg[2] ,
    \FSM_sequential_current_state[0]_i_3 ,
    \FSM_sequential_current_state[2]_i_4_0 ,
    DATA_OUT2,
    R15,
    RESET_IBUF,
    IRWrite,
    \d_out_reg[31]_7 ,
    CLK_IBUF_BUFG);
  output \d_out_reg[21]_rep_0 ;
  output [3:0]\d_out_reg[30]_rep_0 ;
  output \d_out_reg[24]_rep_0 ;
  output \d_out_reg[26]_rep_0 ;
  output \d_out_reg[27]_rep_0 ;
  output \d_out_reg[24]_rep_1 ;
  output [31:0]DATA_IN;
  output \d_out_reg[20]_rep_0 ;
  output [31:0]D;
  output [31:0]\d_out_reg[7]_rep_rep_0 ;
  output [31:0]Result_OBUF;
  output [3:0]WA;
  output [2:0]\d_out[2]_i_3_0 ;
  output \d_out_reg[26]_rep_1 ;
  output \d_out_reg[21]_rep_1 ;
  output \d_out_reg[31]_rep_0 ;
  output [3:0]RA2;
  output [3:0]ADDRC;
  output \FSM_sequential_current_state_reg[3] ;
  output [23:0]\d_out_reg[23]_rep_0 ;
  output \d_out_reg[14]_rep_0 ;
  output \d_out_reg[13]_rep_0 ;
  output [3:0]S;
  output [3:0]\d_out_reg[7]_0 ;
  output [3:0]\d_out_reg[11]_0 ;
  output [3:0]\d_out_reg[15]_0 ;
  output [3:0]\d_out_reg[19]_0 ;
  output [3:0]\d_out_reg[23]_0 ;
  output [3:0]\d_out_reg[27]_0 ;
  output [3:0]\d_out_reg[31]_0 ;
  output [31:0]\d_out_reg[13]_rep_1 ;
  output \d_out_reg[17]_rep_0 ;
  output [28:0]\d_out_reg[31]_1 ;
  output \d_out_reg[11]_rep_0 ;
  output \d_out_reg[11]_rep_rep_0 ;
  output \d_out_reg[7]_rep_0 ;
  input [31:0]Q;
  input [15:0]DOADO;
  input [31:0]\d_out_reg[31]_2 ;
  input \d_out_reg[31]_3 ;
  input \d_out_reg[31]_4 ;
  input \d_out_reg[31]_5 ;
  input [1:0]DOPADOP;
  input [13:0]DOBDO;
  input [24:0]\d_out_reg[28]_0 ;
  input [31:0]WriteData_OBUF;
  input [31:0]\d_out_reg[31]_6 ;
  input [31:0]S_0;
  input [0:0]CO;
  input \d_out_reg[0]_0 ;
  input \ALUResult_OBUF[30]_inst_i_2_0 ;
  input [2:0]\FSM_sequential_current_state_reg[2] ;
  input \FSM_sequential_current_state[0]_i_3 ;
  input [3:0]\FSM_sequential_current_state[2]_i_4_0 ;
  input [31:0]DATA_OUT2;
  input [30:0]R15;
  input RESET_IBUF;
  input IRWrite;
  input [28:0]\d_out_reg[31]_7 ;
  input CLK_IBUF_BUFG;

  wire [3:0]ADDRC;
  wire \ALUResult_OBUF[0]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[0]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[10]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[11]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[12]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[13]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[14]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[15]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[16]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[17]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[18]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[19]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[1]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[20]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[21]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[22]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[23]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[24]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[25]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[26]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[27]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[28]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[29]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[2]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_12_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_2_0 ;
  wire \ALUResult_OBUF[30]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[30]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_10_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_8_n_0 ;
  wire \ALUResult_OBUF[31]_inst_i_9_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[3]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[4]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[5]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[6]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[7]_inst_i_6_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_5_n_0 ;
  wire \ALUResult_OBUF[8]_inst_i_7_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_2_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_3_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_4_n_0 ;
  wire \ALUResult_OBUF[9]_inst_i_5_n_0 ;
  wire \ALUblock/Carry ;
  wire CLK_IBUF_BUFG;
  wire [0:0]CO;
  wire [31:0]D;
  wire [31:0]DATA_IN;
  wire [31:0]DATA_OUT2;
  wire [15:0]DOADO;
  wire [13:0]DOBDO;
  wire [1:0]DOPADOP;
  wire \FSM_sequential_current_state[0]_i_3 ;
  wire [3:0]\FSM_sequential_current_state[2]_i_4_0 ;
  wire \FSM_sequential_current_state[2]_i_5_n_0 ;
  wire \FSM_sequential_current_state[2]_i_6_n_0 ;
  wire \FSM_sequential_current_state[2]_i_7_n_0 ;
  wire [2:0]\FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[3] ;
  wire IRWrite;
  wire [31:0]Instruction_OBUF;
  wire [31:0]Q;
  wire [30:0]R15;
  wire [3:0]RA2;
  wire RESET_IBUF;
  wire [31:0]Result_OBUF;
  wire [3:0]S;
  wire [31:0]S_0;
  wire [0:0]SrcB_integer;
  wire [31:1]SrcB_integer0;
  wire [3:0]WA;
  wire [31:0]WriteData_OBUF;
  wire \d_out[1]_i_3_n_0 ;
  wire \d_out[2]_i_2_n_0 ;
  wire [2:0]\d_out[2]_i_3_0 ;
  wire \d_out[2]_i_3_n_0 ;
  wire \d_out[2]_i_4_n_0 ;
  wire \d_out[2]_i_5_n_0 ;
  wire \d_out[2]_i_6_n_0 ;
  wire \d_out[2]_i_7_n_0 ;
  wire \d_out[2]_i_8_n_0 ;
  wire \d_out_reg[0]_0 ;
  wire [3:0]\d_out_reg[11]_0 ;
  wire \d_out_reg[11]_rep_0 ;
  wire \d_out_reg[11]_rep_rep_0 ;
  wire \d_out_reg[13]_rep_0 ;
  wire [31:0]\d_out_reg[13]_rep_1 ;
  wire \d_out_reg[14]_rep_0 ;
  wire [3:0]\d_out_reg[15]_0 ;
  wire \d_out_reg[17]_rep_0 ;
  wire [3:0]\d_out_reg[19]_0 ;
  wire \d_out_reg[20]_rep_0 ;
  wire \d_out_reg[21]_rep_0 ;
  wire \d_out_reg[21]_rep_1 ;
  wire [3:0]\d_out_reg[23]_0 ;
  wire [23:0]\d_out_reg[23]_rep_0 ;
  wire \d_out_reg[24]_rep_0 ;
  wire \d_out_reg[24]_rep_1 ;
  wire \d_out_reg[26]_rep_0 ;
  wire \d_out_reg[26]_rep_1 ;
  wire [3:0]\d_out_reg[27]_0 ;
  wire \d_out_reg[27]_rep_0 ;
  wire [24:0]\d_out_reg[28]_0 ;
  wire [3:0]\d_out_reg[30]_rep_0 ;
  wire [3:0]\d_out_reg[31]_0 ;
  wire [28:0]\d_out_reg[31]_1 ;
  wire [31:0]\d_out_reg[31]_2 ;
  wire \d_out_reg[31]_3 ;
  wire \d_out_reg[31]_4 ;
  wire \d_out_reg[31]_5 ;
  wire [31:0]\d_out_reg[31]_6 ;
  wire [28:0]\d_out_reg[31]_7 ;
  wire \d_out_reg[31]_rep_0 ;
  wire [3:0]\d_out_reg[7]_0 ;
  wire \d_out_reg[7]_rep_0 ;
  wire [31:0]\d_out_reg[7]_rep_rep_0 ;
  wire [31:0]p_0_in;
  wire sum0_carry__0_i_5_n_0;
  wire sum0_carry__0_i_6_n_0;
  wire sum0_carry__0_i_7_n_0;
  wire sum0_carry__0_i_8_n_0;
  wire sum0_carry__0_i_9_n_0;
  wire sum0_carry__1_i_5_n_0;
  wire sum0_carry__1_i_6_n_0;
  wire sum0_carry__1_i_7_n_0;
  wire sum0_carry__1_i_8_n_0;
  wire sum0_carry__1_i_9_n_0;
  wire sum0_carry__2_i_5_n_0;
  wire sum0_carry__2_i_6_n_0;
  wire sum0_carry__2_i_7_n_0;
  wire sum0_carry__2_i_8_n_0;
  wire sum0_carry__2_i_9_n_0;
  wire sum0_carry__3_i_5_n_0;
  wire sum0_carry__3_i_6_n_0;
  wire sum0_carry__3_i_7_n_0;
  wire sum0_carry__3_i_8_n_0;
  wire sum0_carry__3_i_9_n_0;
  wire sum0_carry__4_i_5_n_0;
  wire sum0_carry__4_i_6_n_0;
  wire sum0_carry__4_i_7_n_0;
  wire sum0_carry__4_i_8_n_0;
  wire sum0_carry__4_i_9_n_0;
  wire sum0_carry__5_i_5_n_0;
  wire sum0_carry__5_i_6_n_0;
  wire sum0_carry__5_i_7_n_0;
  wire sum0_carry__5_i_8_n_0;
  wire sum0_carry__5_i_9_n_0;
  wire sum0_carry__6_i_8_n_0;
  wire sum0_carry__6_i_9_n_0;
  wire sum0_carry_i_10_n_0;
  wire sum0_carry_i_11_n_0;
  wire sum0_carry_i_12_n_0;
  wire sum0_carry_i_6_n_0;
  wire sum0_carry_i_7_n_0;
  wire sum0_carry_i_9_n_0;
  wire [3:0]\NLW_d_out_reg[1]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_out_reg[1]_i_2_O_UNCONNECTED ;
  wire [2:0]NLW_sum0_carry__0_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__1_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__2_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__3_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__4_i_5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__5_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_sum0_carry__6_i_6_CO_UNCONNECTED;
  wire [3:3]NLW_sum0_carry__6_i_6_O_UNCONNECTED;
  wire [2:0]NLW_sum0_carry_i_7_CO_UNCONNECTED;

  LUT4 #(
    .INIT(16'hF100)) 
    \ALUResult_OBUF[0]_inst_i_1 
       (.I0(\ALUResult_OBUF[0]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[0]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[0]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [0]));
  LUT6 #(
    .INIT(64'hDCDCDC232323DC23)) 
    \ALUResult_OBUF[0]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I1(sum0_carry_i_6_n_0),
        .I2(\d_out_reg[31]_6 [0]),
        .I3(\d_out_reg[28]_0 [0]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[0]),
        .O(\ALUResult_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAAAEAAAEAAA)) 
    \ALUResult_OBUF[0]_inst_i_3 
       (.I0(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I1(S_0[0]),
        .I2(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(SrcB_integer),
        .I5(\d_out_reg[31]_6 [0]),
        .O(\ALUResult_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0FFF0F2F2)) 
    \ALUResult_OBUF[0]_inst_i_4 
       (.I0(Instruction_OBUF[8]),
        .I1(\d_out_reg[0]_0 ),
        .I2(\ALUResult_OBUF[0]_inst_i_7_n_0 ),
        .I3(\ALUResult_OBUF[1]_inst_i_3_n_0 ),
        .I4(Instruction_OBUF[6]),
        .I5(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[0]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFBE8082)) 
    \ALUResult_OBUF[0]_inst_i_5 
       (.I0(WriteData_OBUF[0]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [0]),
        .O(SrcB_integer));
  LUT6 #(
    .INIT(64'h00000020FFFFFFFF)) 
    \ALUResult_OBUF[0]_inst_i_7 
       (.I0(\ALUResult_OBUF[28]_inst_i_10_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(Instruction_OBUF[8]),
        .I4(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I5(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[0]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF22F222F222F222)) 
    \ALUResult_OBUF[10]_inst_i_1 
       (.I0(\ALUResult_OBUF[10]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[10]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[10]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[10]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[20]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[10]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [10]));
  LUT5 #(
    .INIT(32'hFFFFA5A9)) 
    \ALUResult_OBUF[10]_inst_i_2 
       (.I0(p_0_in[10]),
        .I1(\d_out_reg[31]_6 [10]),
        .I2(sum0_carry_i_6_n_0),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[10]_inst_i_3 
       (.I0(p_0_in[10]),
        .I1(\d_out_reg[31]_6 [10]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[10]),
        .O(\ALUResult_OBUF[10]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5700)) 
    \ALUResult_OBUF[10]_inst_i_4 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[10]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hAFEE)) 
    \ALUResult_OBUF[10]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[10]_inst_i_7_n_0 ),
        .I2(\ALUResult_OBUF[11]_inst_i_7_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[10]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555CFC0)) 
    \ALUResult_OBUF[10]_inst_i_6 
       (.I0(p_0_in[7]),
        .I1(WriteData_OBUF[9]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [9]),
        .I4(Instruction_OBUF[8]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[10]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    \ALUResult_OBUF[10]_inst_i_7 
       (.I0(p_0_in[12]),
        .I1(Instruction_OBUF[8]),
        .I2(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I3(p_0_in[10]),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[10]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[10]_inst_i_8 
       (.I0(WriteData_OBUF[7]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[11]_inst_i_1 
       (.I0(\ALUResult_OBUF[11]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[11]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[11]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [11]));
  LUT4 #(
    .INIT(16'h5030)) 
    \ALUResult_OBUF[11]_inst_i_2 
       (.I0(\ALUResult_OBUF[11]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[12]_inst_i_8_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[11]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[11]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[11]),
        .I2(\d_out_reg[31]_6 [11]),
        .I3(S_0[11]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[11]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8B)) 
    \ALUResult_OBUF[11]_inst_i_4 
       (.I0(\ALUResult_OBUF[12]_inst_i_9_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[11]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[11]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8FBFBFBF8FB)) 
    \ALUResult_OBUF[11]_inst_i_5 
       (.I0(p_0_in[8]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [10]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[10]),
        .O(\ALUResult_OBUF[11]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[11]_inst_i_6 
       (.I0(WriteData_OBUF[11]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [11]),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'hC8C8CCC0)) 
    \ALUResult_OBUF[11]_inst_i_7 
       (.I0(p_0_in[13]),
        .I1(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[11]),
        .I4(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[11]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF22F222F222F222)) 
    \ALUResult_OBUF[12]_inst_i_1 
       (.I0(\ALUResult_OBUF[12]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[12]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[12]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[12]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[12]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [12]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[12]_inst_i_10 
       (.I0(WriteData_OBUF[10]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [10]),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'hFFFFA5A9)) 
    \ALUResult_OBUF[12]_inst_i_2 
       (.I0(p_0_in[12]),
        .I1(\d_out_reg[31]_6 [12]),
        .I2(sum0_carry_i_6_n_0),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[12]_inst_i_3 
       (.I0(p_0_in[12]),
        .I1(\d_out_reg[31]_6 [12]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[12]),
        .O(\ALUResult_OBUF[12]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5D00)) 
    \ALUResult_OBUF[12]_inst_i_4 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[12]_inst_i_8_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ALUResult_OBUF[12]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[12]_inst_i_9_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[13]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077744474)) 
    \ALUResult_OBUF[12]_inst_i_6 
       (.I0(p_0_in[10]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[28]_0 [12]),
        .I3(\d_out_reg[26]_rep_1 ),
        .I4(WriteData_OBUF[12]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[12]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[12]_inst_i_7 
       (.I0(WriteData_OBUF[12]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'hAFAAAFFFEEEEEEEE)) 
    \ALUResult_OBUF[12]_inst_i_8 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(p_0_in[11]),
        .I2(WriteData_OBUF[9]),
        .I3(\d_out_reg[26]_rep_1 ),
        .I4(\d_out_reg[28]_0 [9]),
        .I5(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[12]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[12]_inst_i_9 
       (.I0(p_0_in[14]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[12]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[12]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[13]_inst_i_1 
       (.I0(\ALUResult_OBUF[13]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[13]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[13]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [13]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \ALUResult_OBUF[13]_inst_i_2 
       (.I0(\ALUResult_OBUF[12]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00A5A544449999)) 
    \ALUResult_OBUF[13]_inst_i_3 
       (.I0(p_0_in[13]),
        .I1(\d_out_reg[31]_6 [13]),
        .I2(sum0_carry_i_6_n_0),
        .I3(S_0[13]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[13]_inst_i_4 
       (.I0(\ALUResult_OBUF[14]_inst_i_9_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[13]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[13]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[13]_inst_i_5 
       (.I0(WriteData_OBUF[13]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [12]),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hFF001D1D)) 
    \ALUResult_OBUF[13]_inst_i_6 
       (.I0(p_0_in[13]),
        .I1(Instruction_OBUF[8]),
        .I2(p_0_in[15]),
        .I3(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[13]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[14]_inst_i_1 
       (.I0(\ALUResult_OBUF[14]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[14]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[14]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [14]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \ALUResult_OBUF[14]_inst_i_2 
       (.I0(\ALUResult_OBUF[14]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[15]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00A5A544449999)) 
    \ALUResult_OBUF[14]_inst_i_3 
       (.I0(p_0_in[14]),
        .I1(\d_out_reg[31]_6 [14]),
        .I2(sum0_carry_i_6_n_0),
        .I3(S_0[14]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h47FFFFFF47FF0000)) 
    \ALUResult_OBUF[14]_inst_i_4 
       (.I0(\ALUResult_OBUF[14]_inst_i_6_n_0 ),
        .I1(Instruction_OBUF[8]),
        .I2(\ALUResult_OBUF[14]_inst_i_7_n_0 ),
        .I3(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I4(Instruction_OBUF[6]),
        .I5(\ALUResult_OBUF[14]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E200FF)) 
    \ALUResult_OBUF[14]_inst_i_5 
       (.I0(\d_out_reg[28]_0 [11]),
        .I1(\d_out_reg[26]_rep_1 ),
        .I2(WriteData_OBUF[11]),
        .I3(p_0_in[13]),
        .I4(Instruction_OBUF[8]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[14]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABBBBBAFFBBBBBF)) 
    \ALUResult_OBUF[14]_inst_i_6 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(\d_out_reg[28]_0 [16]),
        .I2(Instruction_OBUF[25]),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[26]_rep_0 ),
        .I5(WriteData_OBUF[17]),
        .O(\ALUResult_OBUF[14]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAABBBBBAFFBBBBBF)) 
    \ALUResult_OBUF[14]_inst_i_7 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(\d_out_reg[28]_0 [14]),
        .I2(Instruction_OBUF[25]),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[26]_rep_0 ),
        .I5(WriteData_OBUF[15]),
        .O(\ALUResult_OBUF[14]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h55777775FF77777F)) 
    \ALUResult_OBUF[14]_inst_i_8 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(\d_out_reg[28]_0 [24]),
        .I2(Instruction_OBUF[25]),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[26]_rep_0 ),
        .I5(WriteData_OBUF[31]),
        .O(\ALUResult_OBUF[14]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[14]_inst_i_9 
       (.I0(p_0_in[16]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[14]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[14]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF22F222F222F222)) 
    \ALUResult_OBUF[15]_inst_i_1 
       (.I0(\ALUResult_OBUF[15]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[15]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[15]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[15]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[15]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[20]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [15]));
  LUT5 #(
    .INIT(32'hFFFFCE31)) 
    \ALUResult_OBUF[15]_inst_i_2 
       (.I0(\d_out_reg[31]_6 [15]),
        .I1(sum0_carry_i_6_n_0),
        .I2(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I3(p_0_in[15]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[15]_inst_i_3 
       (.I0(p_0_in[15]),
        .I1(\d_out_reg[31]_6 [15]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[15]),
        .O(\ALUResult_OBUF[15]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5700)) 
    \ALUResult_OBUF[15]_inst_i_4 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[16]_inst_i_8_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[15]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ALUResult_OBUF[15]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[15]_inst_i_8_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[16]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[15]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E200FF)) 
    \ALUResult_OBUF[15]_inst_i_6 
       (.I0(\d_out_reg[28]_0 [12]),
        .I1(\d_out_reg[26]_rep_1 ),
        .I2(WriteData_OBUF[12]),
        .I3(p_0_in[14]),
        .I4(Instruction_OBUF[8]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[15]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[15]_inst_i_7 
       (.I0(WriteData_OBUF[15]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [14]),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[15]_inst_i_8 
       (.I0(p_0_in[17]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[15]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[15]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hF222F222FF22F222)) 
    \ALUResult_OBUF[16]_inst_i_1 
       (.I0(\ALUResult_OBUF[16]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[16]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[16]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[16]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[16]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [16]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[16]_inst_i_10 
       (.I0(WriteData_OBUF[14]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [13]),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'hFFFFCE31)) 
    \ALUResult_OBUF[16]_inst_i_2 
       (.I0(\d_out_reg[31]_6 [16]),
        .I1(sum0_carry_i_6_n_0),
        .I2(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I3(p_0_in[16]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[16]_inst_i_3 
       (.I0(p_0_in[16]),
        .I1(\d_out_reg[31]_6 [16]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[16]),
        .O(\ALUResult_OBUF[16]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5D00)) 
    \ALUResult_OBUF[16]_inst_i_4 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[16]_inst_i_8_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ALUResult_OBUF[16]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[16]_inst_i_9_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[17]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8FBFBFBF8FB)) 
    \ALUResult_OBUF[16]_inst_i_6 
       (.I0(p_0_in[14]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [15]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[16]),
        .O(\ALUResult_OBUF[16]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[16]_inst_i_7 
       (.I0(WriteData_OBUF[16]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [15]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'hF8F8F8FBFBFBF8FB)) 
    \ALUResult_OBUF[16]_inst_i_8 
       (.I0(p_0_in[13]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [14]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[15]),
        .O(\ALUResult_OBUF[16]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[16]_inst_i_9 
       (.I0(p_0_in[18]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[16]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[16]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF222F222FF22F222)) 
    \ALUResult_OBUF[17]_inst_i_1 
       (.I0(\ALUResult_OBUF[17]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[17]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[17]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[17]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[18]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [17]));
  LUT5 #(
    .INIT(32'hFFFFA5A9)) 
    \ALUResult_OBUF[17]_inst_i_2 
       (.I0(p_0_in[17]),
        .I1(\d_out_reg[31]_6 [17]),
        .I2(sum0_carry_i_6_n_0),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[17]_inst_i_3 
       (.I0(p_0_in[17]),
        .I1(\d_out_reg[31]_6 [17]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[17]),
        .O(\ALUResult_OBUF[17]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5D00)) 
    \ALUResult_OBUF[17]_inst_i_4 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[16]_inst_i_6_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ALUResult_OBUF[17]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[17]_inst_i_6_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[18]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[17]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    \ALUResult_OBUF[17]_inst_i_6 
       (.I0(p_0_in[19]),
        .I1(Instruction_OBUF[8]),
        .I2(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I3(p_0_in[17]),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[17]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF222F222FF22F222)) 
    \ALUResult_OBUF[18]_inst_i_1 
       (.I0(\ALUResult_OBUF[18]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[18]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[18]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[18]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[20]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[18]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [18]));
  LUT5 #(
    .INIT(32'hFFFFA5A9)) 
    \ALUResult_OBUF[18]_inst_i_2 
       (.I0(p_0_in[18]),
        .I1(\d_out_reg[31]_6 [18]),
        .I2(sum0_carry_i_6_n_0),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[18]_inst_i_3 
       (.I0(p_0_in[18]),
        .I1(\d_out_reg[31]_6 [18]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[18]),
        .O(\ALUResult_OBUF[18]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5700)) 
    \ALUResult_OBUF[18]_inst_i_4 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[19]_inst_i_7_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ALUResult_OBUF[18]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[18]_inst_i_8_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[19]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1DFFFFFF1D00)) 
    \ALUResult_OBUF[18]_inst_i_6 
       (.I0(\d_out_reg[28]_0 [14]),
        .I1(\d_out_reg[26]_rep_1 ),
        .I2(WriteData_OBUF[15]),
        .I3(Instruction_OBUF[8]),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .I5(p_0_in[17]),
        .O(\ALUResult_OBUF[18]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[18]_inst_i_7 
       (.I0(WriteData_OBUF[18]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [17]),
        .O(p_0_in[18]));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[18]_inst_i_8 
       (.I0(p_0_in[20]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[18]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[18]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[18]_inst_i_9 
       (.I0(WriteData_OBUF[17]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [16]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hF222F222FF22F222)) 
    \ALUResult_OBUF[19]_inst_i_1 
       (.I0(\ALUResult_OBUF[19]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[19]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[19]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[19]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[19]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[20]_inst_i_7_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [19]));
  LUT5 #(
    .INIT(32'hFFFFA5A9)) 
    \ALUResult_OBUF[19]_inst_i_2 
       (.I0(p_0_in[19]),
        .I1(\d_out_reg[31]_6 [19]),
        .I2(sum0_carry_i_6_n_0),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[19]_inst_i_3 
       (.I0(p_0_in[19]),
        .I1(\d_out_reg[31]_6 [19]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[19]),
        .O(\ALUResult_OBUF[19]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5D00)) 
    \ALUResult_OBUF[19]_inst_i_4 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[19]_inst_i_7_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ALUResult_OBUF[19]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[19]_inst_i_8_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[20]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000007EE4)) 
    \ALUResult_OBUF[19]_inst_i_6 
       (.I0(Instruction_OBUF[22]),
        .I1(\d_out_reg[24]_rep_0 ),
        .I2(Instruction_OBUF[23]),
        .I3(Instruction_OBUF[21]),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I5(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[19]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2FEFEFEF2FE)) 
    \ALUResult_OBUF[19]_inst_i_7 
       (.I0(p_0_in[18]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [15]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[16]),
        .O(\ALUResult_OBUF[19]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[19]_inst_i_8 
       (.I0(p_0_in[21]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[19]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[19]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFF00B8B8FF000000)) 
    \ALUResult_OBUF[1]_inst_i_1 
       (.I0(\ALUResult_OBUF[1]_inst_i_2_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[1]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[1]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I5(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [1]));
  LUT6 #(
    .INIT(64'h505F7070505F7F7F)) 
    \ALUResult_OBUF[1]_inst_i_2 
       (.I0(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I1(p_0_in[4]),
        .I2(Instruction_OBUF[8]),
        .I3(p_0_in[30]),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .I5(p_0_in[2]),
        .O(\ALUResult_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C050CF5FCF5FCF5)) 
    \ALUResult_OBUF[1]_inst_i_3 
       (.I0(p_0_in[1]),
        .I1(\ALUResult_OBUF[1]_inst_i_5_n_0 ),
        .I2(Instruction_OBUF[8]),
        .I3(\d_out_reg[30]_rep_0 [0]),
        .I4(p_0_in[3]),
        .I5(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00A5A544449999)) 
    \ALUResult_OBUF[1]_inst_i_4 
       (.I0(p_0_in[1]),
        .I1(\d_out_reg[31]_6 [1]),
        .I2(sum0_carry_i_6_n_0),
        .I3(S_0[1]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[1]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hBFBE8082)) 
    \ALUResult_OBUF[1]_inst_i_5 
       (.I0(WriteData_OBUF[29]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(\ALUResult_OBUF[1]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF222F222FF22F222)) 
    \ALUResult_OBUF[20]_inst_i_1 
       (.I0(\ALUResult_OBUF[20]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[20]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[20]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[20]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[20]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[20]_inst_i_7_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [20]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[20]_inst_i_10 
       (.I0(WriteData_OBUF[19]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [18]),
        .O(p_0_in[19]));
  LUT5 #(
    .INIT(32'hFFFFA5A9)) 
    \ALUResult_OBUF[20]_inst_i_2 
       (.I0(p_0_in[20]),
        .I1(\d_out_reg[31]_6 [20]),
        .I2(sum0_carry_i_6_n_0),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[20]_inst_i_3 
       (.I0(p_0_in[20]),
        .I1(\d_out_reg[31]_6 [20]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[20]),
        .O(\ALUResult_OBUF[20]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5D00)) 
    \ALUResult_OBUF[20]_inst_i_4 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ALUResult_OBUF[20]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[20]_inst_i_9_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[21]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00007EE400000000)) 
    \ALUResult_OBUF[20]_inst_i_6 
       (.I0(Instruction_OBUF[22]),
        .I1(\d_out_reg[24]_rep_0 ),
        .I2(Instruction_OBUF[23]),
        .I3(Instruction_OBUF[21]),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I5(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[20]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2FEFEFEF2FE)) 
    \ALUResult_OBUF[20]_inst_i_7 
       (.I0(p_0_in[19]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [16]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[17]),
        .O(\ALUResult_OBUF[20]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[20]_inst_i_8 
       (.I0(WriteData_OBUF[20]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [19]),
        .O(p_0_in[20]));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[20]_inst_i_9 
       (.I0(p_0_in[22]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[20]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[20]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF0EEF0CC)) 
    \ALUResult_OBUF[21]_inst_i_1 
       (.I0(\ALUResult_OBUF[21]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[21]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[21]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[21]_inst_i_2 
       (.I0(\ALUResult_OBUF[22]_inst_i_6_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[21]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[21]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \ALUResult_OBUF[21]_inst_i_3 
       (.I0(\ALUResult_OBUF[21]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[22]_inst_i_7_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[21]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[21]_inst_i_4 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[21]),
        .I2(\d_out_reg[31]_6 [21]),
        .I3(S_0[21]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[21]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[21]_inst_i_5 
       (.I0(p_0_in[23]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[21]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[21]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077744474)) 
    \ALUResult_OBUF[21]_inst_i_6 
       (.I0(p_0_in[18]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[28]_0 [19]),
        .I3(\d_out_reg[26]_rep_1 ),
        .I4(WriteData_OBUF[20]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[21]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[21]_inst_i_7 
       (.I0(WriteData_OBUF[21]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [20]),
        .O(p_0_in[21]));
  LUT5 #(
    .INIT(32'hF0EEF0CC)) 
    \ALUResult_OBUF[22]_inst_i_1 
       (.I0(\ALUResult_OBUF[22]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[22]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[22]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[22]_inst_i_2 
       (.I0(\ALUResult_OBUF[22]_inst_i_5_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[22]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \ALUResult_OBUF[22]_inst_i_3 
       (.I0(\ALUResult_OBUF[22]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[22]_inst_i_8_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[22]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[22]_inst_i_4 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[22]),
        .I2(\d_out_reg[31]_6 [22]),
        .I3(S_0[22]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h05FF11FF)) 
    \ALUResult_OBUF[22]_inst_i_5 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(p_0_in[23]),
        .I2(p_0_in[25]),
        .I3(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I4(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[22]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[22]_inst_i_6 
       (.I0(p_0_in[24]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[22]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[22]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8B800FF)) 
    \ALUResult_OBUF[22]_inst_i_7 
       (.I0(WriteData_OBUF[19]),
        .I1(\d_out_reg[26]_rep_1 ),
        .I2(\d_out_reg[28]_0 [18]),
        .I3(p_0_in[21]),
        .I4(Instruction_OBUF[8]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[22]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2E200FF)) 
    \ALUResult_OBUF[22]_inst_i_8 
       (.I0(\d_out_reg[28]_0 [19]),
        .I1(\d_out_reg[26]_rep_1 ),
        .I2(WriteData_OBUF[20]),
        .I3(p_0_in[22]),
        .I4(Instruction_OBUF[8]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[22]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h1514D5D7)) 
    \ALUResult_OBUF[22]_inst_i_9 
       (.I0(\d_out_reg[28]_0 [21]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(WriteData_OBUF[22]),
        .O(p_0_in[22]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT5 #(
    .INIT(32'h33330555)) 
    \ALUResult_OBUF[23]_inst_i_2 
       (.I0(\ALUResult_OBUF[23]_inst_i_3_n_0 ),
        .I1(\ALUResult_OBUF[23]_inst_i_4_n_0 ),
        .I2(\ALUResult_OBUF[23]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [23]));
  LUT4 #(
    .INIT(16'h7400)) 
    \ALUResult_OBUF[23]_inst_i_3 
       (.I0(\ALUResult_OBUF[22]_inst_i_8_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[24]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[23]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00CF663CFFCF663C)) 
    \ALUResult_OBUF[23]_inst_i_4 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[23]),
        .I2(\d_out_reg[31]_6 [23]),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[23]),
        .O(\ALUResult_OBUF[23]_inst_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    \ALUResult_OBUF[23]_inst_i_5 
       (.I0(\ALUResult_OBUF[24]_inst_i_7_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[23]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[23]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAFAFAFABAEAAA)) 
    \ALUResult_OBUF[23]_inst_i_6 
       (.I0(Instruction_OBUF[6]),
        .I1(Instruction_OBUF[8]),
        .I2(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I3(p_0_in[25]),
        .I4(p_0_in[23]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[23]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[24]_inst_i_1 
       (.I0(\ALUResult_OBUF[24]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[24]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[24]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [24]));
  LUT4 #(
    .INIT(16'h5030)) 
    \ALUResult_OBUF[24]_inst_i_2 
       (.I0(\ALUResult_OBUF[24]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[24]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[24]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[24]),
        .I2(\d_out_reg[31]_6 [24]),
        .I3(S_0[24]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[24]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h74)) 
    \ALUResult_OBUF[24]_inst_i_4 
       (.I0(\ALUResult_OBUF[25]_inst_i_4_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[24]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[24]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8FBFBFBF8FB)) 
    \ALUResult_OBUF[24]_inst_i_5 
       (.I0(p_0_in[21]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [22]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[23]),
        .O(\ALUResult_OBUF[24]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[24]_inst_i_6 
       (.I0(WriteData_OBUF[24]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [23]),
        .O(p_0_in[24]));
  LUT5 #(
    .INIT(32'h05FF11FF)) 
    \ALUResult_OBUF[24]_inst_i_7 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(p_0_in[24]),
        .I2(p_0_in[26]),
        .I3(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I4(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[24]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hF1)) 
    \ALUResult_OBUF[25]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_2_n_0 ),
        .I2(\ALUResult_OBUF[25]_inst_i_3_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [25]));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \ALUResult_OBUF[25]_inst_i_2 
       (.I0(\ALUResult_OBUF[25]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[25]_inst_i_5_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I4(\ALUResult_OBUF[26]_inst_i_4_n_0 ),
        .I5(\ALUResult_OBUF[25]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3333221100303201)) 
    \ALUResult_OBUF[25]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(\ALUResult_OBUF[25]_inst_i_7_n_0 ),
        .I2(\d_out_reg[31]_6 [25]),
        .I3(p_0_in[25]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[25]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hC8C8CCC0)) 
    \ALUResult_OBUF[25]_inst_i_4 
       (.I0(p_0_in[27]),
        .I1(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[25]),
        .I4(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[25]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hC8C8CCC0)) 
    \ALUResult_OBUF[25]_inst_i_5 
       (.I0(p_0_in[28]),
        .I1(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[26]),
        .I4(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[25]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAABABFBABF)) 
    \ALUResult_OBUF[25]_inst_i_6 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(WriteData_OBUF[24]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [23]),
        .I4(p_0_in[22]),
        .I5(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[25]_inst_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \ALUResult_OBUF[25]_inst_i_7 
       (.I0(S_0[25]),
        .I1(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\ALUResult_OBUF[25]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[25]_inst_i_8 
       (.I0(WriteData_OBUF[25]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(p_0_in[25]));
  LUT3 #(
    .INIT(8'hEC)) 
    \ALUResult_OBUF[26]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[26]_inst_i_2_n_0 ),
        .I2(\ALUResult_OBUF[26]_inst_i_3_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [26]));
  LUT6 #(
    .INIT(64'h5555105400001054)) 
    \ALUResult_OBUF[26]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[27]_inst_i_8_n_0 ),
        .I3(\ALUResult_OBUF[26]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[26]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[26]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[26]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[26]),
        .I2(\d_out_reg[31]_6 [26]),
        .I3(S_0[26]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[26]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAEFEAEAEAEFEFEF)) 
    \ALUResult_OBUF[26]_inst_i_4 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(p_0_in[23]),
        .I2(Instruction_OBUF[8]),
        .I3(WriteData_OBUF[25]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(\d_out_reg[28]_0 [24]),
        .O(\ALUResult_OBUF[26]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBBBBB8BBBB)) 
    \ALUResult_OBUF[26]_inst_i_5 
       (.I0(\ALUResult_OBUF[27]_inst_i_7_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(Instruction_OBUF[8]),
        .I3(\ALUResult_OBUF[26]_inst_i_8_n_0 ),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I5(\ALUResult_OBUF[26]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[26]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[26]_inst_i_6 
       (.I0(WriteData_OBUF[26]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(p_0_in[26]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[26]_inst_i_7 
       (.I0(WriteData_OBUF[23]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [22]),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'h00000000FAAB0AA8)) 
    \ALUResult_OBUF[26]_inst_i_8 
       (.I0(\d_out_reg[28]_0 [24]),
        .I1(Instruction_OBUF[25]),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(\d_out_reg[26]_rep_0 ),
        .I4(WriteData_OBUF[26]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[26]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAABBBBBAFFBBBBBF)) 
    \ALUResult_OBUF[26]_inst_i_9 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(\d_out_reg[28]_0 [24]),
        .I2(Instruction_OBUF[25]),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[26]_rep_0 ),
        .I5(WriteData_OBUF[28]),
        .O(\ALUResult_OBUF[26]_inst_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0EEEEFFF0CCCC)) 
    \ALUResult_OBUF[27]_inst_i_1 
       (.I0(\ALUResult_OBUF[27]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[27]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[27]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I5(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [27]));
  LUT5 #(
    .INIT(32'hBFBE8082)) 
    \ALUResult_OBUF[27]_inst_i_10 
       (.I0(WriteData_OBUF[27]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(\ALUResult_OBUF[27]_inst_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[27]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_6_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[27]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[27]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \ALUResult_OBUF[27]_inst_i_3 
       (.I0(\ALUResult_OBUF[27]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_8_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[27]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h410A4155415F4100)) 
    \ALUResult_OBUF[27]_inst_i_4 
       (.I0(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I1(sum0_carry_i_6_n_0),
        .I2(p_0_in[27]),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\d_out_reg[31]_6 [27]),
        .I5(\ALUResult_OBUF[27]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[27]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ALUResult_OBUF[27]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I1(S_0[27]),
        .O(\ALUResult_OBUF[27]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CC00FDF0)) 
    \ALUResult_OBUF[27]_inst_i_6 
       (.I0(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_8_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[30]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I5(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[27]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \ALUResult_OBUF[27]_inst_i_7 
       (.I0(\ALUResult_OBUF[27]_inst_i_10_n_0 ),
        .I1(Instruction_OBUF[8]),
        .I2(\ALUResult_OBUF[1]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[27]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000077744474)) 
    \ALUResult_OBUF[27]_inst_i_8 
       (.I0(p_0_in[24]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[28]_0 [24]),
        .I3(\d_out_reg[26]_rep_1 ),
        .I4(WriteData_OBUF[26]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[27]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[27]_inst_i_9 
       (.I0(WriteData_OBUF[27]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(p_0_in[27]));
  LUT5 #(
    .INIT(32'h4F4F4F44)) 
    \ALUResult_OBUF[28]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_2_n_0 ),
        .I2(\ALUResult_OBUF[28]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[28]_inst_i_4_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [28]));
  LUT5 #(
    .INIT(32'hBFBE8082)) 
    \ALUResult_OBUF[28]_inst_i_10 
       (.I0(WriteData_OBUF[28]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(\ALUResult_OBUF[28]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \ALUResult_OBUF[28]_inst_i_2 
       (.I0(\ALUResult_OBUF[28]_inst_i_6_n_0 ),
        .I1(\ALUResult_OBUF[28]_inst_i_7_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I4(\ALUResult_OBUF[29]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[28]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[28]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0FBF0F0FFFBF0F0)) 
    \ALUResult_OBUF[28]_inst_i_3 
       (.I0(p_0_in[28]),
        .I1(\d_out_reg[31]_6 [28]),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(S_0[28]),
        .O(\ALUResult_OBUF[28]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1D1DE21D1D1DE2E2)) 
    \ALUResult_OBUF[28]_inst_i_4 
       (.I0(\d_out_reg[28]_0 [24]),
        .I1(\d_out_reg[26]_rep_1 ),
        .I2(WriteData_OBUF[28]),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(sum0_carry_i_6_n_0),
        .I5(\d_out_reg[31]_6 [28]),
        .O(\ALUResult_OBUF[28]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBBBBBA)) 
    \ALUResult_OBUF[28]_inst_i_5 
       (.I0(\ALUResult_OBUF[30]_inst_i_8_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(Instruction_OBUF[8]),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .I5(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[28]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    \ALUResult_OBUF[28]_inst_i_6 
       (.I0(\ALUResult_OBUF[28]_inst_i_10_n_0 ),
        .I1(Instruction_OBUF[8]),
        .I2(\ALUResult_OBUF[30]_inst_i_12_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[28]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF000E4FFE400)) 
    \ALUResult_OBUF[28]_inst_i_7 
       (.I0(Instruction_OBUF[8]),
        .I1(WriteData_OBUF[29]),
        .I2(WriteData_OBUF[31]),
        .I3(\d_out_reg[26]_rep_1 ),
        .I4(\d_out_reg[28]_0 [24]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[28]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBF088F0)) 
    \ALUResult_OBUF[28]_inst_i_8 
       (.I0(WriteData_OBUF[25]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[28]_0 [24]),
        .I3(\d_out_reg[26]_rep_1 ),
        .I4(WriteData_OBUF[27]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[28]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[28]_inst_i_9 
       (.I0(WriteData_OBUF[28]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(p_0_in[28]));
  LUT3 #(
    .INIT(8'hBA)) 
    \ALUResult_OBUF[29]_inst_i_1 
       (.I0(\ALUResult_OBUF[29]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[29]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [29]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[29]_inst_i_10 
       (.I0(WriteData_OBUF[29]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'h00000000FDEC3120)) 
    \ALUResult_OBUF[29]_inst_i_2 
       (.I0(Instruction_OBUF[6]),
        .I1(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[29]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[30]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[29]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\ALUResult_OBUF[29]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000F00000008)) 
    \ALUResult_OBUF[29]_inst_i_3 
       (.I0(\ALUResult_OBUF[29]_inst_i_7_n_0 ),
        .I1(Instruction_OBUF[22]),
        .I2(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_8_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I5(\ALUResult_OBUF[29]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[29]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB88333088BBC0C3)) 
    \ALUResult_OBUF[29]_inst_i_4 
       (.I0(S_0[29]),
        .I1(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I2(\d_out_reg[31]_6 [29]),
        .I3(sum0_carry_i_6_n_0),
        .I4(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I5(p_0_in[29]),
        .O(\ALUResult_OBUF[29]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h33470047)) 
    \ALUResult_OBUF[29]_inst_i_5 
       (.I0(p_0_in[26]),
        .I1(Instruction_OBUF[8]),
        .I2(p_0_in[28]),
        .I3(\d_out_reg[30]_rep_0 [0]),
        .I4(SrcB_integer),
        .O(\ALUResult_OBUF[29]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FA50EE44)) 
    \ALUResult_OBUF[29]_inst_i_6 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(\ALUResult_OBUF[1]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[30]_inst_i_12_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I4(Instruction_OBUF[6]),
        .I5(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[29]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUResult_OBUF[29]_inst_i_7 
       (.I0(Instruction_OBUF[23]),
        .I1(Instruction_OBUF[21]),
        .O(\ALUResult_OBUF[29]_inst_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ALUResult_OBUF[29]_inst_i_8 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(Instruction_OBUF[8]),
        .I2(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[29]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h08F8)) 
    \ALUResult_OBUF[29]_inst_i_9 
       (.I0(Instruction_OBUF[21]),
        .I1(Instruction_OBUF[23]),
        .I2(\d_out_reg[24]_rep_0 ),
        .I3(Instruction_OBUF[22]),
        .O(\ALUResult_OBUF[29]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[2]_inst_i_1 
       (.I0(\ALUResult_OBUF[2]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[2]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[2]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [2]));
  LUT6 #(
    .INIT(64'h0101000000FF0000)) 
    \ALUResult_OBUF[2]_inst_i_2 
       (.I0(p_0_in[1]),
        .I1(\d_out_reg[30]_rep_0 [0]),
        .I2(Instruction_OBUF[8]),
        .I3(\ALUResult_OBUF[3]_inst_i_5_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I5(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[2]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[2]),
        .I2(\d_out_reg[31]_6 [2]),
        .I3(S_0[2]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[2]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[2]_inst_i_4 
       (.I0(\ALUResult_OBUF[3]_inst_i_7_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[1]_inst_i_2_n_0 ),
        .O(\ALUResult_OBUF[2]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[2]_inst_i_5 
       (.I0(WriteData_OBUF[1]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[2]_inst_i_6 
       (.I0(WriteData_OBUF[2]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hEEEEECCC)) 
    \ALUResult_OBUF[30]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_2_n_0 ),
        .I2(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I3(S_0[30]),
        .I4(\ALUResult_OBUF[30]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [30]));
  LUT2 #(
    .INIT(4'hE)) 
    \ALUResult_OBUF[30]_inst_i_10 
       (.I0(\d_out_reg[26]_rep_0 ),
        .I1(\d_out_reg[27]_rep_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[30]_inst_i_11 
       (.I0(WriteData_OBUF[30]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(p_0_in[30]));
  LUT5 #(
    .INIT(32'hBFBE8082)) 
    \ALUResult_OBUF[30]_inst_i_12 
       (.I0(WriteData_OBUF[30]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(\ALUResult_OBUF[30]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0A03)) 
    \ALUResult_OBUF[30]_inst_i_2 
       (.I0(\ALUResult_OBUF[30]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_7_n_0 ),
        .I2(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I3(Instruction_OBUF[6]),
        .I4(\ALUResult_OBUF[30]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00CC000D)) 
    \ALUResult_OBUF[30]_inst_i_3 
       (.I0(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I1(\ALUResult_OBUF[30]_inst_i_8_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[30]_inst_i_9_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I5(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h410A4155415F4100)) 
    \ALUResult_OBUF[30]_inst_i_4 
       (.I0(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I1(sum0_carry_i_6_n_0),
        .I2(p_0_in[30]),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(\d_out_reg[31]_6 [30]),
        .I5(\ALUResult_OBUF[30]_inst_i_12_n_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \ALUResult_OBUF[30]_inst_i_5 
       (.I0(\d_out_reg[28]_0 [24]),
        .I1(\d_out_reg[26]_rep_1 ),
        .I2(WriteData_OBUF[27]),
        .I3(\d_out_reg[30]_rep_0 [0]),
        .I4(Instruction_OBUF[8]),
        .I5(\ALUResult_OBUF[30]_inst_i_2_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h3030303030303022)) 
    \ALUResult_OBUF[30]_inst_i_6 
       (.I0(\ALUResult_OBUF[30]_inst_i_12_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I3(Instruction_OBUF[6]),
        .I4(Instruction_OBUF[8]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[30]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \ALUResult_OBUF[30]_inst_i_7 
       (.I0(Instruction_OBUF[8]),
        .I1(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[30]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1013)) 
    \ALUResult_OBUF[30]_inst_i_8 
       (.I0(Instruction_OBUF[23]),
        .I1(Instruction_OBUF[21]),
        .I2(Instruction_OBUF[22]),
        .I3(\d_out_reg[24]_rep_0 ),
        .O(\ALUResult_OBUF[30]_inst_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \ALUResult_OBUF[30]_inst_i_9 
       (.I0(\d_out_reg[24]_rep_0 ),
        .I1(Instruction_OBUF[23]),
        .I2(Instruction_OBUF[22]),
        .O(\ALUResult_OBUF[30]_inst_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hCA)) 
    \ALUResult_OBUF[31]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBFFFFF)) 
    \ALUResult_OBUF[31]_inst_i_10 
       (.I0(Instruction_OBUF[25]),
        .I1(Instruction_OBUF[21]),
        .I2(\d_out_reg[24]_rep_0 ),
        .I3(Instruction_OBUF[22]),
        .I4(Instruction_OBUF[23]),
        .I5(Instruction_OBUF[5]),
        .O(\ALUResult_OBUF[31]_inst_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0FCCAACC)) 
    \ALUResult_OBUF[31]_inst_i_2 
       (.I0(\ALUResult_OBUF[31]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_7_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I4(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[31]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF006666C0C03C3C)) 
    \ALUResult_OBUF[31]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I2(\d_out_reg[31]_6 [31]),
        .I3(S_0[31]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[31]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEEF)) 
    \ALUResult_OBUF[31]_inst_i_4 
       (.I0(\d_out_reg[27]_rep_0 ),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(Instruction_OBUF[8]),
        .I4(Instruction_OBUF[6]),
        .I5(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h03F3FAFA03F30A0A)) 
    \ALUResult_OBUF[31]_inst_i_5 
       (.I0(\ALUResult_OBUF[31]_inst_i_6_n_0 ),
        .I1(p_0_in[3]),
        .I2(Instruction_OBUF[8]),
        .I3(p_0_in[1]),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .I5(\ALUResult_OBUF[1]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[31]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFBE8082)) 
    \ALUResult_OBUF[31]_inst_i_6 
       (.I0(WriteData_OBUF[31]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(\ALUResult_OBUF[31]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0CFCFAFA0CFC0A0A)) 
    \ALUResult_OBUF[31]_inst_i_7 
       (.I0(p_0_in[30]),
        .I1(p_0_in[2]),
        .I2(Instruction_OBUF[8]),
        .I3(SrcB_integer),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .I5(p_0_in[28]),
        .O(\ALUResult_OBUF[31]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \ALUResult_OBUF[31]_inst_i_8 
       (.I0(\ALUResult_OBUF[30]_inst_i_9_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[30]_inst_i_7_n_0 ),
        .I4(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .O(\ALUResult_OBUF[31]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEAFFFFFFFA)) 
    \ALUResult_OBUF[31]_inst_i_9 
       (.I0(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .I1(\ALUResult_OBUF[31]_inst_i_10_n_0 ),
        .I2(Instruction_OBUF[22]),
        .I3(Instruction_OBUF[23]),
        .I4(\d_out_reg[24]_rep_0 ),
        .I5(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[31]_inst_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[3]_inst_i_1 
       (.I0(\ALUResult_OBUF[3]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[3]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[3]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [3]));
  LUT4 #(
    .INIT(16'h5030)) 
    \ALUResult_OBUF[3]_inst_i_2 
       (.I0(\ALUResult_OBUF[3]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[4]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00A5A544449999)) 
    \ALUResult_OBUF[3]_inst_i_3 
       (.I0(p_0_in[3]),
        .I1(\d_out_reg[31]_6 [3]),
        .I2(sum0_carry_i_6_n_0),
        .I3(S_0[3]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[3]_inst_i_4 
       (.I0(\ALUResult_OBUF[4]_inst_i_7_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[3]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF1DFFFFFF1D00)) 
    \ALUResult_OBUF[3]_inst_i_5 
       (.I0(\d_out_reg[28]_0 [0]),
        .I1(\d_out_reg[26]_rep_1 ),
        .I2(WriteData_OBUF[0]),
        .I3(Instruction_OBUF[8]),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .I5(p_0_in[2]),
        .O(\ALUResult_OBUF[3]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[3]_inst_i_6 
       (.I0(WriteData_OBUF[3]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[3]_inst_i_7 
       (.I0(p_0_in[5]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[3]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[3]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[4]_inst_i_1 
       (.I0(\ALUResult_OBUF[4]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[4]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[4]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [4]));
  LUT4 #(
    .INIT(16'h5030)) 
    \ALUResult_OBUF[4]_inst_i_2 
       (.I0(\ALUResult_OBUF[4]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[5]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[4]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[4]),
        .I2(\d_out_reg[31]_6 [4]),
        .I3(S_0[4]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[4]_inst_i_4 
       (.I0(\ALUResult_OBUF[5]_inst_i_7_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[4]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2FEFEFEF2FE)) 
    \ALUResult_OBUF[4]_inst_i_5 
       (.I0(p_0_in[3]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [1]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[1]),
        .O(\ALUResult_OBUF[4]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[4]_inst_i_6 
       (.I0(WriteData_OBUF[4]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [4]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h010DFFFF)) 
    \ALUResult_OBUF[4]_inst_i_7 
       (.I0(p_0_in[4]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[6]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[4]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[5]_inst_i_1 
       (.I0(\ALUResult_OBUF[5]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[5]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[5]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [5]));
  LUT4 #(
    .INIT(16'h7400)) 
    \ALUResult_OBUF[5]_inst_i_2 
       (.I0(\ALUResult_OBUF[5]_inst_i_5_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[6]_inst_i_5_n_0 ),
        .I3(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[5]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[5]),
        .I2(\d_out_reg[31]_6 [5]),
        .I3(S_0[5]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[5]_inst_i_4 
       (.I0(\ALUResult_OBUF[6]_inst_i_7_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[5]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F8FBFBFBF8FB)) 
    \ALUResult_OBUF[5]_inst_i_5 
       (.I0(p_0_in[2]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [4]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[4]),
        .O(\ALUResult_OBUF[5]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[5]_inst_i_6 
       (.I0(WriteData_OBUF[5]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[5]_inst_i_7 
       (.I0(p_0_in[7]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[5]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[5]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[6]_inst_i_1 
       (.I0(\ALUResult_OBUF[6]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[6]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[6]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [6]));
  LUT4 #(
    .INIT(16'hA030)) 
    \ALUResult_OBUF[6]_inst_i_2 
       (.I0(\ALUResult_OBUF[6]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[7]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[6]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[6]),
        .I2(\d_out_reg[31]_6 [6]),
        .I3(S_0[6]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[6]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[6]_inst_i_4 
       (.I0(\ALUResult_OBUF[7]_inst_i_6_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[6]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555CFC0)) 
    \ALUResult_OBUF[6]_inst_i_5 
       (.I0(p_0_in[3]),
        .I1(WriteData_OBUF[5]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [5]),
        .I4(Instruction_OBUF[8]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[6]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[6]_inst_i_6 
       (.I0(WriteData_OBUF[6]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [6]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[6]_inst_i_7 
       (.I0(p_0_in[8]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[6]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[6]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[7]_inst_i_1 
       (.I0(\ALUResult_OBUF[7]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[7]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[7]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [7]));
  LUT4 #(
    .INIT(16'h5030)) 
    \ALUResult_OBUF[7]_inst_i_2 
       (.I0(\ALUResult_OBUF[7]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[8]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[7]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[7]),
        .I2(\d_out_reg[31]_6 [7]),
        .I3(S_0[7]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[7]_inst_i_4 
       (.I0(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[7]_inst_i_6_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2FEFEFEF2FE)) 
    \ALUResult_OBUF[7]_inst_i_5 
       (.I0(p_0_in[6]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(\d_out_reg[28]_0 [4]),
        .I4(\d_out_reg[26]_rep_1 ),
        .I5(WriteData_OBUF[4]),
        .O(\ALUResult_OBUF[7]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0407FFFF)) 
    \ALUResult_OBUF[7]_inst_i_6 
       (.I0(p_0_in[9]),
        .I1(Instruction_OBUF[8]),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .I3(p_0_in[7]),
        .I4(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .O(\ALUResult_OBUF[7]_inst_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCFAAA)) 
    \ALUResult_OBUF[8]_inst_i_1 
       (.I0(\ALUResult_OBUF[8]_inst_i_2_n_0 ),
        .I1(\ALUResult_OBUF[8]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[8]_inst_i_4_n_0 ),
        .I3(\ALUResult_OBUF[27]_inst_i_6_n_0 ),
        .I4(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [8]));
  LUT4 #(
    .INIT(16'h50C0)) 
    \ALUResult_OBUF[8]_inst_i_2 
       (.I0(\ALUResult_OBUF[8]_inst_i_5_n_0 ),
        .I1(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .I2(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\ALUResult_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0099993030C3C3)) 
    \ALUResult_OBUF[8]_inst_i_3 
       (.I0(sum0_carry_i_6_n_0),
        .I1(p_0_in[8]),
        .I2(\d_out_reg[31]_6 [8]),
        .I3(S_0[8]),
        .I4(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I5(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .O(\ALUResult_OBUF[8]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \ALUResult_OBUF[8]_inst_i_4 
       (.I0(\ALUResult_OBUF[9]_inst_i_4_n_0 ),
        .I1(Instruction_OBUF[6]),
        .I2(\ALUResult_OBUF[8]_inst_i_7_n_0 ),
        .O(\ALUResult_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAABFBABFB)) 
    \ALUResult_OBUF[8]_inst_i_5 
       (.I0(\d_out_reg[30]_rep_0 [0]),
        .I1(\d_out_reg[28]_0 [7]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(WriteData_OBUF[7]),
        .I4(p_0_in[5]),
        .I5(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[8]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[8]_inst_i_6 
       (.I0(WriteData_OBUF[8]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [8]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h0F0F4F7F)) 
    \ALUResult_OBUF[8]_inst_i_7 
       (.I0(p_0_in[10]),
        .I1(Instruction_OBUF[8]),
        .I2(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I3(p_0_in[8]),
        .I4(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[8]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \ALUResult_OBUF[9]_inst_i_1 
       (.I0(\ALUResult_OBUF[31]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[9]_inst_i_2_n_0 ),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[9]_inst_i_3_n_0 ),
        .O(\d_out_reg[7]_rep_rep_0 [9]));
  LUT6 #(
    .INIT(64'hFFCAF0CA0FCA00CA)) 
    \ALUResult_OBUF[9]_inst_i_2 
       (.I0(\ALUResult_OBUF[9]_inst_i_4_n_0 ),
        .I1(\ALUResult_OBUF[10]_inst_i_7_n_0 ),
        .I2(Instruction_OBUF[6]),
        .I3(\ALUResult_OBUF[31]_inst_i_8_n_0 ),
        .I4(\ALUResult_OBUF[10]_inst_i_6_n_0 ),
        .I5(\ALUResult_OBUF[9]_inst_i_5_n_0 ),
        .O(\ALUResult_OBUF[9]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB83C8B3CB8308B03)) 
    \ALUResult_OBUF[9]_inst_i_3 
       (.I0(S_0[9]),
        .I1(\ALUResult_OBUF[28]_inst_i_5_n_0 ),
        .I2(p_0_in[9]),
        .I3(\ALUResult_OBUF[31]_inst_i_9_n_0 ),
        .I4(sum0_carry_i_6_n_0),
        .I5(\d_out_reg[31]_6 [9]),
        .O(\ALUResult_OBUF[9]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h03FF11FF)) 
    \ALUResult_OBUF[9]_inst_i_4 
       (.I0(p_0_in[9]),
        .I1(\d_out_reg[30]_rep_0 [0]),
        .I2(p_0_in[11]),
        .I3(\ALUResult_OBUF[14]_inst_i_8_n_0 ),
        .I4(Instruction_OBUF[8]),
        .O(\ALUResult_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000005555CFC0)) 
    \ALUResult_OBUF[9]_inst_i_5 
       (.I0(p_0_in[6]),
        .I1(WriteData_OBUF[8]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [8]),
        .I4(Instruction_OBUF[8]),
        .I5(\d_out_reg[30]_rep_0 [0]),
        .O(\ALUResult_OBUF[9]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    \ALUResult_OBUF[9]_inst_i_6 
       (.I0(WriteData_OBUF[9]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [9]),
        .O(p_0_in[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(Instruction_OBUF[13]),
        .I1(Instruction_OBUF[12]),
        .I2(Instruction_OBUF[15]),
        .I3(Instruction_OBUF[14]),
        .O(\d_out_reg[13]_rep_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF000000FBFF)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(Instruction_OBUF[21]),
        .I1(Instruction_OBUF[22]),
        .I2(Instruction_OBUF[23]),
        .I3(\d_out_reg[24]_rep_0 ),
        .I4(\d_out_reg[26]_rep_0 ),
        .I5(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[21]_rep_0 ));
  LUT6 #(
    .INIT(64'hFFFF040000000000)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(Instruction_OBUF[21]),
        .I1(Instruction_OBUF[22]),
        .I2(Instruction_OBUF[23]),
        .I3(\d_out_reg[24]_rep_0 ),
        .I4(\ALUResult_OBUF[30]_inst_i_10_n_0 ),
        .I5(\d_out_reg[31]_rep_0 ),
        .O(\d_out_reg[21]_rep_1 ));
  LUT3 #(
    .INIT(8'h1C)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(\d_out_reg[24]_rep_0 ),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[24]_rep_1 ));
  LUT6 #(
    .INIT(64'h3C3C3C3CC2C2C0C2)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(\d_out_reg[31]_rep_0 ),
        .I1(\FSM_sequential_current_state_reg[2] [2]),
        .I2(\FSM_sequential_current_state_reg[2] [1]),
        .I3(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I4(\d_out_reg[24]_rep_0 ),
        .I5(\FSM_sequential_current_state_reg[2] [0]),
        .O(\FSM_sequential_current_state_reg[3] ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(\FSM_sequential_current_state[2]_i_6_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I2(Instruction_OBUF[31]),
        .I3(\FSM_sequential_current_state[0]_i_3 ),
        .O(\d_out_reg[31]_rep_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(\d_out_reg[27]_rep_0 ),
        .I1(\d_out_reg[26]_rep_0 ),
        .O(\FSM_sequential_current_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0110010101101010)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(\d_out_reg[30]_rep_0 [3]),
        .I1(Instruction_OBUF[31]),
        .I2(\d_out_reg[30]_rep_0 [1]),
        .I3(\FSM_sequential_current_state[2]_i_4_0 [1]),
        .I4(\d_out_reg[30]_rep_0 [2]),
        .I5(\FSM_sequential_current_state[2]_i_4_0 [2]),
        .O(\FSM_sequential_current_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0440040404404040)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(Instruction_OBUF[31]),
        .I1(\d_out_reg[30]_rep_0 [3]),
        .I2(\d_out_reg[30]_rep_0 [1]),
        .I3(\FSM_sequential_current_state[2]_i_4_0 [0]),
        .I4(\d_out_reg[30]_rep_0 [2]),
        .I5(\FSM_sequential_current_state[2]_i_4_0 [3]),
        .O(\FSM_sequential_current_state[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \FSM_sequential_current_state[3]_i_2 
       (.I0(Instruction_OBUF[14]),
        .I1(Instruction_OBUF[15]),
        .I2(Instruction_OBUF[12]),
        .I3(Instruction_OBUF[13]),
        .I4(\d_out_reg[20]_rep_0 ),
        .O(\d_out_reg[14]_rep_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    RF_reg_r1_0_15_0_5_i_10
       (.I0(\d_out_reg[27]_rep_0 ),
        .I1(Instruction_OBUF[17]),
        .O(ADDRC[1]));
  LUT2 #(
    .INIT(4'hE)) 
    RF_reg_r1_0_15_0_5_i_11
       (.I0(\d_out_reg[27]_rep_0 ),
        .I1(Instruction_OBUF[16]),
        .O(ADDRC[0]));
  LUT4 #(
    .INIT(16'hFFBA)) 
    RF_reg_r1_0_15_0_5_i_12
       (.I0(Instruction_OBUF[15]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .O(WA[3]));
  LUT4 #(
    .INIT(16'hFFBA)) 
    RF_reg_r1_0_15_0_5_i_13
       (.I0(Instruction_OBUF[14]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .O(WA[2]));
  LUT4 #(
    .INIT(16'hFFBA)) 
    RF_reg_r1_0_15_0_5_i_14
       (.I0(Instruction_OBUF[13]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .O(WA[1]));
  LUT4 #(
    .INIT(16'h008A)) 
    RF_reg_r1_0_15_0_5_i_15
       (.I0(Instruction_OBUF[12]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .O(WA[0]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_0_5_i_2
       (.I0(Q[1]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[1]),
        .I5(\d_out_reg[31]_2 [1]),
        .O(DATA_IN[1]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_0_5_i_3
       (.I0(Q[0]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[0]),
        .I5(\d_out_reg[31]_2 [0]),
        .O(DATA_IN[0]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_0_5_i_4
       (.I0(Q[3]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[3]),
        .I5(\d_out_reg[31]_2 [3]),
        .O(DATA_IN[3]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_0_5_i_5
       (.I0(Q[2]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[2]),
        .I5(\d_out_reg[31]_2 [2]),
        .O(DATA_IN[2]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_0_5_i_6
       (.I0(Q[5]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[5]),
        .I5(\d_out_reg[31]_2 [5]),
        .O(DATA_IN[5]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_0_5_i_7
       (.I0(Q[4]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[4]),
        .I5(\d_out_reg[31]_2 [4]),
        .O(DATA_IN[4]));
  LUT2 #(
    .INIT(4'hE)) 
    RF_reg_r1_0_15_0_5_i_8
       (.I0(\d_out_reg[27]_rep_0 ),
        .I1(Instruction_OBUF[19]),
        .O(ADDRC[3]));
  LUT2 #(
    .INIT(4'hE)) 
    RF_reg_r1_0_15_0_5_i_9
       (.I0(\d_out_reg[27]_rep_0 ),
        .I1(Instruction_OBUF[18]),
        .O(ADDRC[2]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_12_17_i_1
       (.I0(Q[13]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[13]),
        .I5(\d_out_reg[31]_2 [13]),
        .O(DATA_IN[13]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_12_17_i_2
       (.I0(Q[12]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[12]),
        .I5(\d_out_reg[31]_2 [12]),
        .O(DATA_IN[12]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_12_17_i_3
       (.I0(Q[15]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[15]),
        .I5(\d_out_reg[31]_2 [15]),
        .O(DATA_IN[15]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_12_17_i_4
       (.I0(Q[14]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[14]),
        .I5(\d_out_reg[31]_2 [14]),
        .O(DATA_IN[14]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_12_17_i_5
       (.I0(Q[17]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOPADOP[1]),
        .I5(\d_out_reg[31]_2 [17]),
        .O(DATA_IN[17]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_12_17_i_6
       (.I0(Q[16]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOPADOP[0]),
        .I5(\d_out_reg[31]_2 [16]),
        .O(DATA_IN[16]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_18_23_i_1
       (.I0(Q[19]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[1]),
        .I5(\d_out_reg[31]_2 [19]),
        .O(DATA_IN[19]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_18_23_i_2
       (.I0(Q[18]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[0]),
        .I5(\d_out_reg[31]_2 [18]),
        .O(DATA_IN[18]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_18_23_i_3
       (.I0(Q[21]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[3]),
        .I5(\d_out_reg[31]_2 [21]),
        .O(DATA_IN[21]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_18_23_i_4
       (.I0(Q[20]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[2]),
        .I5(\d_out_reg[31]_2 [20]),
        .O(DATA_IN[20]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_18_23_i_5
       (.I0(Q[23]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[5]),
        .I5(\d_out_reg[31]_2 [23]),
        .O(DATA_IN[23]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_18_23_i_6
       (.I0(Q[22]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[4]),
        .I5(\d_out_reg[31]_2 [22]),
        .O(DATA_IN[22]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_24_29_i_1
       (.I0(Q[25]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[7]),
        .I5(\d_out_reg[31]_2 [25]),
        .O(DATA_IN[25]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_24_29_i_2
       (.I0(Q[24]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[6]),
        .I5(\d_out_reg[31]_2 [24]),
        .O(DATA_IN[24]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_24_29_i_3
       (.I0(Q[27]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[9]),
        .I5(\d_out_reg[31]_2 [27]),
        .O(DATA_IN[27]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_24_29_i_4
       (.I0(Q[26]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[8]),
        .I5(\d_out_reg[31]_2 [26]),
        .O(DATA_IN[26]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_24_29_i_5
       (.I0(Q[29]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[11]),
        .I5(\d_out_reg[31]_2 [29]),
        .O(DATA_IN[29]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_24_29_i_6
       (.I0(Q[28]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[10]),
        .I5(\d_out_reg[31]_2 [28]),
        .O(DATA_IN[28]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_30_31__0_i_1
       (.I0(Q[31]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[13]),
        .I5(\d_out_reg[31]_2 [31]),
        .O(DATA_IN[31]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_30_31_i_1
       (.I0(Q[30]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOBDO[12]),
        .I5(\d_out_reg[31]_2 [30]),
        .O(DATA_IN[30]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_6_11_i_1
       (.I0(Q[7]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[7]),
        .I5(\d_out_reg[31]_2 [7]),
        .O(DATA_IN[7]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_6_11_i_2
       (.I0(Q[6]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[6]),
        .I5(\d_out_reg[31]_2 [6]),
        .O(DATA_IN[6]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_6_11_i_3
       (.I0(Q[9]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[9]),
        .I5(\d_out_reg[31]_2 [9]),
        .O(DATA_IN[9]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_6_11_i_4
       (.I0(Q[8]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[8]),
        .I5(\d_out_reg[31]_2 [8]),
        .O(DATA_IN[8]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_6_11_i_5
       (.I0(Q[11]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[11]),
        .I5(\d_out_reg[31]_2 [11]),
        .O(DATA_IN[11]));
  LUT6 #(
    .INIT(64'hBBAB8BABB8A888A8)) 
    RF_reg_r1_0_15_6_11_i_6
       (.I0(Q[10]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[20]_rep_0 ),
        .I4(DOADO[10]),
        .I5(\d_out_reg[31]_2 [10]),
        .O(DATA_IN[10]));
  LUT4 #(
    .INIT(16'hABA8)) 
    RF_reg_r2_0_15_0_5_i_1
       (.I0(Instruction_OBUF[15]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[3]),
        .O(RA2[3]));
  LUT4 #(
    .INIT(16'hABA8)) 
    RF_reg_r2_0_15_0_5_i_2
       (.I0(Instruction_OBUF[14]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[2]),
        .O(RA2[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    RF_reg_r2_0_15_0_5_i_3
       (.I0(Instruction_OBUF[13]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[1]),
        .O(RA2[1]));
  LUT4 #(
    .INIT(16'hABA8)) 
    RF_reg_r2_0_15_0_5_i_4
       (.I0(Instruction_OBUF[12]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[0]),
        .O(RA2[0]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[0]_inst_i_1 
       (.I0(DOADO[0]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [0]),
        .O(Result_OBUF[0]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[10]_inst_i_1 
       (.I0(DOADO[10]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [10]),
        .O(Result_OBUF[10]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[11]_inst_i_1 
       (.I0(DOADO[11]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [11]),
        .O(Result_OBUF[11]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[12]_inst_i_1 
       (.I0(DOADO[12]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [12]),
        .O(Result_OBUF[12]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[13]_inst_i_1 
       (.I0(DOADO[13]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [13]),
        .O(Result_OBUF[13]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[14]_inst_i_1 
       (.I0(DOADO[14]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [14]),
        .O(Result_OBUF[14]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[15]_inst_i_1 
       (.I0(DOADO[15]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [15]),
        .O(Result_OBUF[15]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[16]_inst_i_1 
       (.I0(DOPADOP[0]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [16]),
        .O(Result_OBUF[16]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[17]_inst_i_1 
       (.I0(DOPADOP[1]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [17]),
        .O(Result_OBUF[17]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[18]_inst_i_1 
       (.I0(DOBDO[0]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [18]),
        .O(Result_OBUF[18]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[19]_inst_i_1 
       (.I0(DOBDO[1]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [19]),
        .O(Result_OBUF[19]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[1]_inst_i_1 
       (.I0(DOADO[1]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [1]),
        .O(Result_OBUF[1]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[20]_inst_i_1 
       (.I0(DOBDO[2]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [20]),
        .O(Result_OBUF[20]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[21]_inst_i_1 
       (.I0(DOBDO[3]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [21]),
        .O(Result_OBUF[21]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[22]_inst_i_1 
       (.I0(DOBDO[4]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [22]),
        .O(Result_OBUF[22]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[23]_inst_i_1 
       (.I0(DOBDO[5]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [23]),
        .O(Result_OBUF[23]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[24]_inst_i_1 
       (.I0(DOBDO[6]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [24]),
        .O(Result_OBUF[24]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[25]_inst_i_1 
       (.I0(DOBDO[7]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [25]),
        .O(Result_OBUF[25]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[26]_inst_i_1 
       (.I0(DOBDO[8]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [26]),
        .O(Result_OBUF[26]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[27]_inst_i_1 
       (.I0(DOBDO[9]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [27]),
        .O(Result_OBUF[27]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[28]_inst_i_1 
       (.I0(DOBDO[10]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [28]),
        .O(Result_OBUF[28]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[29]_inst_i_1 
       (.I0(DOBDO[11]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [29]),
        .O(Result_OBUF[29]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[2]_inst_i_1 
       (.I0(DOADO[2]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [2]),
        .O(Result_OBUF[2]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[30]_inst_i_1 
       (.I0(DOBDO[12]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [30]),
        .O(Result_OBUF[30]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[31]_inst_i_1 
       (.I0(DOBDO[13]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [31]),
        .O(Result_OBUF[31]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[3]_inst_i_1 
       (.I0(DOADO[3]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [3]),
        .O(Result_OBUF[3]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[4]_inst_i_1 
       (.I0(DOADO[4]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [4]),
        .O(Result_OBUF[4]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[5]_inst_i_1 
       (.I0(DOADO[5]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [5]),
        .O(Result_OBUF[5]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[6]_inst_i_1 
       (.I0(DOADO[6]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [6]),
        .O(Result_OBUF[6]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[7]_inst_i_1 
       (.I0(DOADO[7]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [7]),
        .O(Result_OBUF[7]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[8]_inst_i_1 
       (.I0(DOADO[8]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [8]),
        .O(Result_OBUF[8]));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \Result_OBUF[9]_inst_i_1 
       (.I0(DOADO[9]),
        .I1(\d_out_reg[20]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[31]_2 [9]),
        .O(Result_OBUF[9]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[0]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [0]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[0]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0090)) 
    \d_out[0]_i_1__1 
       (.I0(S_0[31]),
        .I1(CO),
        .I2(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I3(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\d_out[2]_i_3_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \d_out[0]_i_1__2 
       (.I0(Instruction_OBUF[0]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [0]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[0]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(Q[0]),
        .I5(DATA_OUT2[0]),
        .O(\d_out_reg[13]_rep_1 [0]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[10]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [10]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[10]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[10]_i_1__1 
       (.I0(Instruction_OBUF[8]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[30]_rep_0 [0]),
        .O(\d_out_reg[23]_rep_0 [10]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[10]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[9]),
        .I5(DATA_OUT2[10]),
        .O(\d_out_reg[13]_rep_1 [10]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[11]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [11]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[11]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[11]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[10]),
        .I5(DATA_OUT2[11]),
        .O(\d_out_reg[13]_rep_1 [11]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[12]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [12]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[12]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[12]_i_1__1 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[11]),
        .I5(DATA_OUT2[12]),
        .O(\d_out_reg[13]_rep_1 [12]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[13]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [13]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[13]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \d_out[13]_i_1__1 
       (.I0(\d_out_reg[26]_rep_0 ),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[30]_rep_0 [0]),
        .O(\d_out_reg[23]_rep_0 [11]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[13]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[12]),
        .I5(DATA_OUT2[13]),
        .O(\d_out_reg[13]_rep_1 [13]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[14]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [14]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[14]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[14]_i_1__1 
       (.I0(Instruction_OBUF[12]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [12]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[14]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[13]),
        .I5(DATA_OUT2[14]),
        .O(\d_out_reg[13]_rep_1 [14]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[15]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [15]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[15]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[15]_i_1__1 
       (.I0(Instruction_OBUF[13]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [13]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[15]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[14]),
        .I5(DATA_OUT2[15]),
        .O(\d_out_reg[13]_rep_1 [15]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[16]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [16]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[16]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[16]_i_1__1 
       (.I0(Instruction_OBUF[14]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [14]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[16]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[15]),
        .I5(DATA_OUT2[16]),
        .O(\d_out_reg[13]_rep_1 [16]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[17]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [17]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[17]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[17]_i_1__1 
       (.I0(Instruction_OBUF[15]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [15]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[17]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[16]),
        .I5(DATA_OUT2[17]),
        .O(\d_out_reg[13]_rep_1 [17]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[18]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [18]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[18]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[18]_i_1__1 
       (.I0(Instruction_OBUF[16]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [16]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[18]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[17]),
        .I5(DATA_OUT2[18]),
        .O(\d_out_reg[13]_rep_1 [18]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[19]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [19]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[19]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[19]_i_1__1 
       (.I0(Instruction_OBUF[17]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [17]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[19]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[18]),
        .I5(DATA_OUT2[19]),
        .O(\d_out_reg[13]_rep_1 [19]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[1]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [1]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[1]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \d_out[1]_i_1__1 
       (.I0(\ALUblock/Carry ),
        .I1(\ALUResult_OBUF[30]_inst_i_3_n_0 ),
        .I2(\ALUResult_OBUF[29]_inst_i_3_n_0 ),
        .O(\d_out[2]_i_3_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \d_out[1]_i_1__2 
       (.I0(Instruction_OBUF[1]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [1]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[1]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[0]),
        .I5(DATA_OUT2[1]),
        .O(\d_out_reg[13]_rep_1 [1]));
  LUT6 #(
    .INIT(64'hBBB888B844477747)) 
    \d_out[1]_i_3 
       (.I0(SrcB_integer0[31]),
        .I1(sum0_carry_i_6_n_0),
        .I2(\d_out_reg[28]_0 [24]),
        .I3(\d_out_reg[26]_rep_1 ),
        .I4(WriteData_OBUF[31]),
        .I5(\d_out_reg[31]_6 [31]),
        .O(\d_out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[20]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [20]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[20]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[20]_i_1__1 
       (.I0(Instruction_OBUF[18]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [18]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[20]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[19]),
        .I5(DATA_OUT2[20]),
        .O(\d_out_reg[13]_rep_1 [20]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[21]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [21]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[21]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[21]_i_1__1 
       (.I0(Instruction_OBUF[19]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [19]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[21]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[20]),
        .I5(DATA_OUT2[21]),
        .O(\d_out_reg[13]_rep_1 [21]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[22]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [22]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[22]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[22]),
        .O(D[22]));
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[22]_i_1__1 
       (.I0(\d_out_reg[20]_rep_0 ),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [20]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[22]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[21]),
        .I5(DATA_OUT2[22]),
        .O(\d_out_reg[13]_rep_1 [22]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[23]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [23]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[23]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[23]_i_1__1 
       (.I0(Instruction_OBUF[21]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [21]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[23]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[22]),
        .I5(DATA_OUT2[23]),
        .O(\d_out_reg[13]_rep_1 [23]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[24]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [24]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[24]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[24]_i_1__1 
       (.I0(Instruction_OBUF[22]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [22]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[24]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[23]),
        .I5(DATA_OUT2[24]),
        .O(\d_out_reg[13]_rep_1 [24]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[25]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [25]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[25]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[25]_i_1__1 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[24]),
        .I5(DATA_OUT2[25]),
        .O(\d_out_reg[13]_rep_1 [25]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[26]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [26]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[26]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[26]_i_1__1 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[25]),
        .I5(DATA_OUT2[26]),
        .O(\d_out_reg[13]_rep_1 [26]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[27]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [27]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[27]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[27]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[27]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[26]),
        .I5(DATA_OUT2[27]),
        .O(\d_out_reg[13]_rep_1 [27]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[28]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [28]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[28]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[28]_i_1__1 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[27]),
        .I5(DATA_OUT2[28]),
        .O(\d_out_reg[13]_rep_1 [28]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[29]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [29]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[29]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[29]_i_1__1 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[28]),
        .I5(DATA_OUT2[29]),
        .O(\d_out_reg[13]_rep_1 [29]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[2]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [2]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[2]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[2]),
        .O(D[2]));
  (* OPT_MODIFIED = "RETARGET" *) 
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \d_out[2]_i_1__1 
       (.I0(\d_out_reg[7]_rep_rep_0 [30]),
        .I1(\d_out_reg[7]_rep_rep_0 [9]),
        .I2(\d_out_reg[7]_rep_rep_0 [29]),
        .I3(\d_out[2]_i_2_n_0 ),
        .I4(\d_out_reg[7]_rep_rep_0 [23]),
        .I5(\d_out[2]_i_3_n_0 ),
        .O(\d_out[2]_i_3_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[2]_i_1__2 
       (.I0(Instruction_OBUF[0]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(Instruction_OBUF[2]),
        .O(\d_out_reg[23]_rep_0 [2]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[2]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[1]),
        .I5(DATA_OUT2[2]),
        .O(\d_out_reg[13]_rep_1 [2]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \d_out[2]_i_2 
       (.I0(\d_out[2]_i_4_n_0 ),
        .I1(\d_out_reg[7]_rep_rep_0 [5]),
        .I2(\d_out_reg[7]_rep_rep_0 [6]),
        .I3(\d_out_reg[7]_rep_rep_0 [24]),
        .I4(\d_out_reg[7]_rep_rep_0 [11]),
        .I5(\d_out[2]_i_5_n_0 ),
        .O(\d_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \d_out[2]_i_3 
       (.I0(\d_out[2]_i_6_n_0 ),
        .I1(\d_out[2]_i_7_n_0 ),
        .I2(\d_out_reg[7]_rep_rep_0 [0]),
        .I3(\d_out_reg[7]_rep_rep_0 [25]),
        .I4(\d_out_reg[7]_rep_rep_0 [26]),
        .I5(\d_out[2]_i_8_n_0 ),
        .O(\d_out[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \d_out[2]_i_4 
       (.I0(\d_out_reg[7]_rep_rep_0 [13]),
        .I1(\d_out_reg[7]_rep_rep_0 [27]),
        .I2(\d_out_reg[7]_rep_rep_0 [1]),
        .I3(\d_out_reg[7]_rep_rep_0 [3]),
        .I4(\d_out_reg[7]_rep_rep_0 [21]),
        .O(\d_out[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \d_out[2]_i_5 
       (.I0(\d_out_reg[7]_rep_rep_0 [22]),
        .I1(\d_out_reg[7]_rep_rep_0 [4]),
        .I2(\d_out_reg[7]_rep_rep_0 [28]),
        .I3(\d_out_reg[7]_rep_rep_0 [7]),
        .O(\d_out[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \d_out[2]_i_6 
       (.I0(\d_out_reg[7]_rep_rep_0 [10]),
        .I1(\d_out_reg[7]_rep_rep_0 [18]),
        .I2(\d_out_reg[7]_rep_rep_0 [14]),
        .I3(\d_out_reg[7]_rep_rep_0 [12]),
        .O(\d_out[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \d_out[2]_i_7 
       (.I0(\d_out_reg[7]_rep_rep_0 [2]),
        .I1(\d_out_reg[7]_rep_rep_0 [17]),
        .I2(\d_out_reg[7]_rep_rep_0 [20]),
        .I3(\d_out_reg[7]_rep_rep_0 [16]),
        .O(\d_out[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \d_out[2]_i_8 
       (.I0(\d_out_reg[7]_rep_rep_0 [31]),
        .I1(\d_out_reg[7]_rep_rep_0 [19]),
        .I2(\d_out_reg[7]_rep_rep_0 [15]),
        .I3(\d_out_reg[7]_rep_rep_0 [8]),
        .O(\d_out[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[30]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [30]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[30]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[30]_i_1__1 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[29]),
        .I5(DATA_OUT2[30]),
        .O(\d_out_reg[13]_rep_1 [30]));
  LUT3 #(
    .INIT(8'h20)) 
    \d_out[31]_i_1__0 
       (.I0(Instruction_OBUF[23]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .O(\d_out_reg[23]_rep_0 [23]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[31]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[30]),
        .I5(DATA_OUT2[31]),
        .O(\d_out_reg[13]_rep_1 [31]));
  LUT5 #(
    .INIT(32'hF8F0F0F0)) 
    \d_out[31]_i_2 
       (.I0(Instruction_OBUF[17]),
        .I1(Instruction_OBUF[16]),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[19]),
        .I4(Instruction_OBUF[18]),
        .O(\d_out_reg[17]_rep_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[31]_i_2__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [31]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[31]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[3]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [3]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[3]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[3]_i_1__1 
       (.I0(Instruction_OBUF[1]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(Instruction_OBUF[3]),
        .O(\d_out_reg[23]_rep_0 [3]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[3]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[2]),
        .I5(DATA_OUT2[3]),
        .O(\d_out_reg[13]_rep_1 [3]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[4]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [4]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[4]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[4]_i_1__1 
       (.I0(Instruction_OBUF[2]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(Instruction_OBUF[4]),
        .O(\d_out_reg[23]_rep_0 [4]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[4]_i_1__4 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[3]),
        .I5(DATA_OUT2[4]),
        .O(\d_out_reg[13]_rep_1 [4]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[5]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [5]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[5]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[5]_i_1__1 
       (.I0(Instruction_OBUF[3]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(Instruction_OBUF[5]),
        .O(\d_out_reg[23]_rep_0 [5]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[5]_i_1__3 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[4]),
        .I5(DATA_OUT2[5]),
        .O(\d_out_reg[13]_rep_1 [5]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[6]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [6]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[6]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[6]_i_1__1 
       (.I0(Instruction_OBUF[4]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\d_out_reg[23]_rep_0 [6]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[6]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[5]),
        .I5(DATA_OUT2[6]),
        .O(\d_out_reg[13]_rep_1 [6]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[7]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [7]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[7]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[7]_i_1__1 
       (.I0(Instruction_OBUF[5]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(Instruction_OBUF[6]),
        .O(\d_out_reg[23]_rep_0 [7]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[7]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[6]),
        .I5(DATA_OUT2[7]),
        .O(\d_out_reg[13]_rep_1 [7]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[8]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [8]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[8]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[8]_i_1__1 
       (.I0(Instruction_OBUF[6]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(Instruction_OBUF[8]),
        .O(\d_out_reg[23]_rep_0 [8]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[8]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[7]),
        .I5(DATA_OUT2[8]),
        .O(\d_out_reg[13]_rep_1 [8]));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \d_out[9]_i_1__0 
       (.I0(\d_out_reg[7]_rep_rep_0 [9]),
        .I1(\d_out_reg[31]_3 ),
        .I2(Q[9]),
        .I3(\d_out_reg[31]_4 ),
        .I4(\d_out_reg[31]_5 ),
        .I5(Result_OBUF[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \d_out[9]_i_1__1 
       (.I0(Instruction_OBUF[6]),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(\d_out_reg[26]_rep_0 ),
        .I3(\d_out_reg[30]_rep_0 [0]),
        .O(\d_out_reg[23]_rep_0 [9]));
  LUT6 #(
    .INIT(64'hFFFF7FFF80000000)) 
    \d_out[9]_i_1__2 
       (.I0(RA2[1]),
        .I1(RA2[0]),
        .I2(RA2[3]),
        .I3(RA2[2]),
        .I4(R15[8]),
        .I5(DATA_OUT2[9]),
        .O(\d_out_reg[13]_rep_1 [9]));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [0]),
        .Q(\d_out_reg[31]_1 [0]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[0]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [0]),
        .Q(Instruction_OBUF[0]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [8]),
        .Q(\d_out_reg[31]_1 [8]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [8]),
        .Q(\d_out_reg[11]_rep_0 ),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11]_rep_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [8]),
        .Q(\d_out_reg[11]_rep_rep_0 ),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[11]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11]_rep_rep_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [8]),
        .Q(\d_out_reg[30]_rep_0 [0]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[12]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [9]),
        .Q(\d_out_reg[31]_1 [9]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[12]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [9]),
        .Q(Instruction_OBUF[12]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[13]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [10]),
        .Q(\d_out_reg[31]_1 [10]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[13]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [10]),
        .Q(Instruction_OBUF[13]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[14]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [11]),
        .Q(\d_out_reg[31]_1 [11]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[14]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [11]),
        .Q(Instruction_OBUF[14]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[15]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [12]),
        .Q(\d_out_reg[31]_1 [12]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[15]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [12]),
        .Q(Instruction_OBUF[15]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[16]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [13]),
        .Q(\d_out_reg[31]_1 [13]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[16]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [13]),
        .Q(Instruction_OBUF[16]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [14]),
        .Q(\d_out_reg[31]_1 [14]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[17]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [14]),
        .Q(Instruction_OBUF[17]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[18]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [15]),
        .Q(\d_out_reg[31]_1 [15]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[18]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [15]),
        .Q(Instruction_OBUF[18]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[19]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [16]),
        .Q(\d_out_reg[31]_1 [16]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[19]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [16]),
        .Q(Instruction_OBUF[19]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [1]),
        .Q(\d_out_reg[31]_1 [1]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_out_reg[1]_i_2 
       (.CI(1'b0),
        .CO(\NLW_d_out_reg[1]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(CO),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_d_out_reg[1]_i_2_O_UNCONNECTED [3:2],\ALUblock/Carry ,\NLW_d_out_reg[1]_i_2_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,\d_out[1]_i_3_n_0 ,1'b1}));
  (* ORIG_CELL_NAME = "d_out_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [1]),
        .Q(Instruction_OBUF[1]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[20]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [17]),
        .Q(\d_out_reg[31]_1 [17]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[20]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [17]),
        .Q(\d_out_reg[20]_rep_0 ),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[21]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [18]),
        .Q(\d_out_reg[31]_1 [18]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[21]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [18]),
        .Q(Instruction_OBUF[21]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[22]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [19]),
        .Q(\d_out_reg[31]_1 [19]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[22]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [19]),
        .Q(Instruction_OBUF[22]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[23]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [20]),
        .Q(\d_out_reg[31]_1 [20]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[23]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [20]),
        .Q(Instruction_OBUF[23]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[24]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [21]),
        .Q(\d_out_reg[31]_1 [21]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[24]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [21]),
        .Q(\d_out_reg[24]_rep_0 ),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[25]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [22]),
        .Q(\d_out_reg[31]_1 [22]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[25]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [22]),
        .Q(Instruction_OBUF[25]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[26]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [23]),
        .Q(\d_out_reg[31]_1 [23]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[26]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [23]),
        .Q(\d_out_reg[26]_rep_0 ),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[27]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [24]),
        .Q(\d_out_reg[31]_1 [24]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[27]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [24]),
        .Q(\d_out_reg[27]_rep_0 ),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[28]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [25]),
        .Q(\d_out_reg[31]_1 [25]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[28]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [25]),
        .Q(\d_out_reg[30]_rep_0 [1]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[29]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [26]),
        .Q(\d_out_reg[31]_1 [26]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[29]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [26]),
        .Q(\d_out_reg[30]_rep_0 [2]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [2]),
        .Q(\d_out_reg[31]_1 [2]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [2]),
        .Q(Instruction_OBUF[2]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[30]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [27]),
        .Q(\d_out_reg[31]_1 [27]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[30]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [27]),
        .Q(\d_out_reg[30]_rep_0 [3]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [28]),
        .Q(\d_out_reg[31]_1 [28]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[31]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [28]),
        .Q(Instruction_OBUF[31]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [3]),
        .Q(\d_out_reg[31]_1 [3]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [3]),
        .Q(Instruction_OBUF[3]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [4]),
        .Q(\d_out_reg[31]_1 [4]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [4]),
        .Q(Instruction_OBUF[4]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [5]),
        .Q(\d_out_reg[31]_1 [5]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [5]),
        .Q(Instruction_OBUF[5]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [6]),
        .Q(\d_out_reg[31]_1 [6]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [6]),
        .Q(\d_out_reg[7]_rep_0 ),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7]_rep_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [6]),
        .Q(Instruction_OBUF[6]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [7]),
        .Q(\d_out_reg[31]_1 [7]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[8]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_7 [7]),
        .Q(Instruction_OBUF[8]),
        .R(RESET_IBUF));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__0_i_1
       (.I0(\d_out_reg[31]_6 [7]),
        .I1(WriteData_OBUF[7]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [7]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[7]),
        .O(\d_out_reg[7]_0 [3]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__0_i_2
       (.I0(\d_out_reg[31]_6 [6]),
        .I1(WriteData_OBUF[6]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [6]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[6]),
        .O(\d_out_reg[7]_0 [2]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__0_i_3
       (.I0(\d_out_reg[31]_6 [5]),
        .I1(WriteData_OBUF[5]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [5]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[5]),
        .O(\d_out_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__0_i_4
       (.I0(\d_out_reg[31]_6 [4]),
        .I1(WriteData_OBUF[4]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [4]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[4]),
        .O(\d_out_reg[7]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__0_i_5
       (.CI(sum0_carry_i_7_n_0),
        .CO({sum0_carry__0_i_5_n_0,NLW_sum0_carry__0_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[8:5]),
        .S({sum0_carry__0_i_6_n_0,sum0_carry__0_i_7_n_0,sum0_carry__0_i_8_n_0,sum0_carry__0_i_9_n_0}));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__0_i_6
       (.I0(WriteData_OBUF[8]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [8]),
        .O(sum0_carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__0_i_7
       (.I0(WriteData_OBUF[7]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [7]),
        .O(sum0_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__0_i_8
       (.I0(WriteData_OBUF[6]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [6]),
        .O(sum0_carry__0_i_8_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__0_i_9
       (.I0(WriteData_OBUF[5]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [5]),
        .O(sum0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__1_i_1
       (.I0(\d_out_reg[31]_6 [11]),
        .I1(WriteData_OBUF[11]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [11]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[11]),
        .O(\d_out_reg[11]_0 [3]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__1_i_2
       (.I0(\d_out_reg[31]_6 [10]),
        .I1(WriteData_OBUF[10]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [10]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[10]),
        .O(\d_out_reg[11]_0 [2]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__1_i_3
       (.I0(\d_out_reg[31]_6 [9]),
        .I1(WriteData_OBUF[9]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [9]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[9]),
        .O(\d_out_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__1_i_4
       (.I0(\d_out_reg[31]_6 [8]),
        .I1(WriteData_OBUF[8]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [8]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[8]),
        .O(\d_out_reg[11]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__1_i_5
       (.CI(sum0_carry__0_i_5_n_0),
        .CO({sum0_carry__1_i_5_n_0,NLW_sum0_carry__1_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[12:9]),
        .S({sum0_carry__1_i_6_n_0,sum0_carry__1_i_7_n_0,sum0_carry__1_i_8_n_0,sum0_carry__1_i_9_n_0}));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__1_i_6
       (.I0(WriteData_OBUF[12]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [12]),
        .O(sum0_carry__1_i_6_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__1_i_7
       (.I0(WriteData_OBUF[11]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [11]),
        .O(sum0_carry__1_i_7_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__1_i_8
       (.I0(WriteData_OBUF[10]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [10]),
        .O(sum0_carry__1_i_8_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__1_i_9
       (.I0(WriteData_OBUF[9]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [9]),
        .O(sum0_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__2_i_1
       (.I0(\d_out_reg[31]_6 [15]),
        .I1(WriteData_OBUF[15]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [14]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[15]),
        .O(\d_out_reg[15]_0 [3]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__2_i_2
       (.I0(\d_out_reg[31]_6 [14]),
        .I1(WriteData_OBUF[14]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [13]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[14]),
        .O(\d_out_reg[15]_0 [2]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__2_i_3
       (.I0(\d_out_reg[31]_6 [13]),
        .I1(WriteData_OBUF[13]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [12]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[13]),
        .O(\d_out_reg[15]_0 [1]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__2_i_4
       (.I0(\d_out_reg[31]_6 [12]),
        .I1(WriteData_OBUF[12]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [12]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[12]),
        .O(\d_out_reg[15]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__2_i_5
       (.CI(sum0_carry__1_i_5_n_0),
        .CO({sum0_carry__2_i_5_n_0,NLW_sum0_carry__2_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[16:13]),
        .S({sum0_carry__2_i_6_n_0,sum0_carry__2_i_7_n_0,sum0_carry__2_i_8_n_0,sum0_carry__2_i_9_n_0}));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__2_i_6
       (.I0(WriteData_OBUF[16]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [15]),
        .O(sum0_carry__2_i_6_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__2_i_7
       (.I0(WriteData_OBUF[15]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [14]),
        .O(sum0_carry__2_i_7_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__2_i_8
       (.I0(WriteData_OBUF[14]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [13]),
        .O(sum0_carry__2_i_8_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__2_i_9
       (.I0(WriteData_OBUF[13]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [12]),
        .O(sum0_carry__2_i_9_n_0));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__3_i_1
       (.I0(\d_out_reg[31]_6 [19]),
        .I1(WriteData_OBUF[19]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [18]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[19]),
        .O(\d_out_reg[19]_0 [3]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__3_i_2
       (.I0(\d_out_reg[31]_6 [18]),
        .I1(WriteData_OBUF[18]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [17]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[18]),
        .O(\d_out_reg[19]_0 [2]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__3_i_3
       (.I0(\d_out_reg[31]_6 [17]),
        .I1(WriteData_OBUF[17]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [16]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[17]),
        .O(\d_out_reg[19]_0 [1]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__3_i_4
       (.I0(\d_out_reg[31]_6 [16]),
        .I1(WriteData_OBUF[16]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [15]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[16]),
        .O(\d_out_reg[19]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__3_i_5
       (.CI(sum0_carry__2_i_5_n_0),
        .CO({sum0_carry__3_i_5_n_0,NLW_sum0_carry__3_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[20:17]),
        .S({sum0_carry__3_i_6_n_0,sum0_carry__3_i_7_n_0,sum0_carry__3_i_8_n_0,sum0_carry__3_i_9_n_0}));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__3_i_6
       (.I0(WriteData_OBUF[20]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [19]),
        .O(sum0_carry__3_i_6_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__3_i_7
       (.I0(WriteData_OBUF[19]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [18]),
        .O(sum0_carry__3_i_7_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__3_i_8
       (.I0(WriteData_OBUF[18]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [17]),
        .O(sum0_carry__3_i_8_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__3_i_9
       (.I0(WriteData_OBUF[17]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [16]),
        .O(sum0_carry__3_i_9_n_0));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__4_i_1
       (.I0(\d_out_reg[31]_6 [23]),
        .I1(WriteData_OBUF[23]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [22]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[23]),
        .O(\d_out_reg[23]_0 [3]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum0_carry__4_i_2
       (.I0(\d_out_reg[31]_6 [22]),
        .I1(\d_out_reg[28]_0 [21]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(WriteData_OBUF[22]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[22]),
        .O(\d_out_reg[23]_0 [2]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__4_i_3
       (.I0(\d_out_reg[31]_6 [21]),
        .I1(WriteData_OBUF[21]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [20]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[21]),
        .O(\d_out_reg[23]_0 [1]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__4_i_4
       (.I0(\d_out_reg[31]_6 [20]),
        .I1(WriteData_OBUF[20]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [19]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[20]),
        .O(\d_out_reg[23]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__4_i_5
       (.CI(sum0_carry__3_i_5_n_0),
        .CO({sum0_carry__4_i_5_n_0,NLW_sum0_carry__4_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[24:21]),
        .S({sum0_carry__4_i_6_n_0,sum0_carry__4_i_7_n_0,sum0_carry__4_i_8_n_0,sum0_carry__4_i_9_n_0}));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__4_i_6
       (.I0(WriteData_OBUF[24]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [23]),
        .O(sum0_carry__4_i_6_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__4_i_7
       (.I0(WriteData_OBUF[23]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [22]),
        .O(sum0_carry__4_i_7_n_0));
  LUT5 #(
    .INIT(32'h1514D5D7)) 
    sum0_carry__4_i_8
       (.I0(\d_out_reg[28]_0 [21]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(WriteData_OBUF[22]),
        .O(sum0_carry__4_i_8_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__4_i_9
       (.I0(WriteData_OBUF[21]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [20]),
        .O(sum0_carry__4_i_9_n_0));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum0_carry__5_i_1
       (.I0(\d_out_reg[31]_6 [27]),
        .I1(\d_out_reg[28]_0 [24]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(WriteData_OBUF[27]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[27]),
        .O(\d_out_reg[27]_0 [3]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__5_i_2
       (.I0(\d_out_reg[31]_6 [26]),
        .I1(WriteData_OBUF[26]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [24]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[26]),
        .O(\d_out_reg[27]_0 [2]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__5_i_3
       (.I0(\d_out_reg[31]_6 [25]),
        .I1(WriteData_OBUF[25]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [24]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[25]),
        .O(\d_out_reg[27]_0 [1]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__5_i_4
       (.I0(\d_out_reg[31]_6 [24]),
        .I1(WriteData_OBUF[24]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [23]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[24]),
        .O(\d_out_reg[27]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__5_i_5
       (.CI(sum0_carry__4_i_5_n_0),
        .CO({sum0_carry__5_i_5_n_0,NLW_sum0_carry__5_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[28:25]),
        .S({sum0_carry__5_i_6_n_0,sum0_carry__5_i_7_n_0,sum0_carry__5_i_8_n_0,sum0_carry__5_i_9_n_0}));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__5_i_6
       (.I0(WriteData_OBUF[28]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(sum0_carry__5_i_6_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__5_i_7
       (.I0(WriteData_OBUF[27]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(sum0_carry__5_i_7_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__5_i_8
       (.I0(WriteData_OBUF[26]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(sum0_carry__5_i_8_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__5_i_9
       (.I0(WriteData_OBUF[25]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(sum0_carry__5_i_9_n_0));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry__6_i_2
       (.I0(\d_out_reg[31]_6 [31]),
        .I1(WriteData_OBUF[31]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [24]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[31]),
        .O(\d_out_reg[31]_0 [3]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum0_carry__6_i_3
       (.I0(\d_out_reg[31]_6 [30]),
        .I1(\d_out_reg[28]_0 [24]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(WriteData_OBUF[30]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[30]),
        .O(\d_out_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum0_carry__6_i_4
       (.I0(\d_out_reg[31]_6 [29]),
        .I1(\d_out_reg[28]_0 [24]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(WriteData_OBUF[29]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[29]),
        .O(\d_out_reg[31]_0 [1]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    sum0_carry__6_i_5
       (.I0(\d_out_reg[31]_6 [28]),
        .I1(\d_out_reg[28]_0 [24]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(WriteData_OBUF[28]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[28]),
        .O(\d_out_reg[31]_0 [0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry__6_i_6
       (.CI(sum0_carry__5_i_5_n_0),
        .CO(NLW_sum0_carry__6_i_6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_sum0_carry__6_i_6_O_UNCONNECTED[3],SrcB_integer0[31:29]}),
        .S({1'b0,p_0_in[31],sum0_carry__6_i_8_n_0,sum0_carry__6_i_9_n_0}));
  LUT5 #(
    .INIT(32'h0554F557)) 
    sum0_carry__6_i_7
       (.I0(\d_out_reg[28]_0 [24]),
        .I1(Instruction_OBUF[25]),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(\d_out_reg[26]_rep_0 ),
        .I4(WriteData_OBUF[31]),
        .O(p_0_in[31]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__6_i_8
       (.I0(WriteData_OBUF[30]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(sum0_carry__6_i_8_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry__6_i_9
       (.I0(WriteData_OBUF[29]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [24]),
        .O(sum0_carry__6_i_9_n_0));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry_i_1
       (.I0(\d_out_reg[31]_6 [3]),
        .I1(WriteData_OBUF[3]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [3]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[3]),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry_i_10
       (.I0(WriteData_OBUF[3]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [3]),
        .O(sum0_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry_i_11
       (.I0(WriteData_OBUF[2]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [2]),
        .O(sum0_carry_i_11_n_0));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry_i_12
       (.I0(WriteData_OBUF[1]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [1]),
        .O(sum0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry_i_2
       (.I0(\d_out_reg[31]_6 [2]),
        .I1(WriteData_OBUF[2]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [2]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h5555656AAAAA656A)) 
    sum0_carry_i_3
       (.I0(\d_out_reg[31]_6 [1]),
        .I1(WriteData_OBUF[1]),
        .I2(\d_out_reg[26]_rep_1 ),
        .I3(\d_out_reg[28]_0 [1]),
        .I4(sum0_carry_i_6_n_0),
        .I5(SrcB_integer0[1]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h55666665AA66666A)) 
    sum0_carry_i_4
       (.I0(\d_out_reg[31]_6 [0]),
        .I1(\d_out_reg[28]_0 [0]),
        .I2(Instruction_OBUF[25]),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[26]_rep_0 ),
        .I5(WriteData_OBUF[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h89)) 
    sum0_carry_i_5
       (.I0(\d_out_reg[26]_rep_0 ),
        .I1(\d_out_reg[27]_rep_0 ),
        .I2(Instruction_OBUF[25]),
        .O(\d_out_reg[26]_rep_1 ));
  LUT6 #(
    .INIT(64'h0000008000FF000C)) 
    sum0_carry_i_6
       (.I0(\d_out_reg[24]_rep_0 ),
        .I1(Instruction_OBUF[22]),
        .I2(Instruction_OBUF[21]),
        .I3(\d_out_reg[27]_rep_0 ),
        .I4(\d_out_reg[26]_rep_0 ),
        .I5(Instruction_OBUF[23]),
        .O(sum0_carry_i_6_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 sum0_carry_i_7
       (.CI(1'b0),
        .CO({sum0_carry_i_7_n_0,NLW_sum0_carry_i_7_CO_UNCONNECTED[2:0]}),
        .CYINIT(p_0_in[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(SrcB_integer0[4:1]),
        .S({sum0_carry_i_9_n_0,sum0_carry_i_10_n_0,sum0_carry_i_11_n_0,sum0_carry_i_12_n_0}));
  LUT5 #(
    .INIT(32'h0554F557)) 
    sum0_carry_i_8
       (.I0(\d_out_reg[28]_0 [0]),
        .I1(Instruction_OBUF[25]),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(\d_out_reg[26]_rep_0 ),
        .I4(WriteData_OBUF[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'h40417F7D)) 
    sum0_carry_i_9
       (.I0(WriteData_OBUF[4]),
        .I1(\d_out_reg[26]_rep_0 ),
        .I2(\d_out_reg[27]_rep_0 ),
        .I3(Instruction_OBUF[25]),
        .I4(\d_out_reg[28]_0 [4]),
        .O(sum0_carry_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg_3
   (\d_out_reg[5]_rep_0 ,
    PC_OBUF,
    D,
    \d_out_reg[7]_0 ,
    RESET_IBUF,
    PCWrite,
    \d_out_reg[31]_0 ,
    CLK_IBUF_BUFG);
  output [7:0]\d_out_reg[5]_rep_0 ;
  output [5:0]PC_OBUF;
  output [31:0]D;
  output [5:0]\d_out_reg[7]_0 ;
  input RESET_IBUF;
  input PCWrite;
  input [31:0]\d_out_reg[31]_0 ;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [31:0]D;
  wire [31:1]PC;
  wire PCWrite;
  wire [5:0]PC_OBUF;
  wire RESET_IBUF;
  wire \d_out[4]_i_2_n_0 ;
  wire \d_out_reg[12]_i_1_n_0 ;
  wire \d_out_reg[16]_i_1_n_0 ;
  wire \d_out_reg[20]_i_1_n_0 ;
  wire \d_out_reg[24]_i_1_n_0 ;
  wire \d_out_reg[28]_i_1_n_0 ;
  wire [31:0]\d_out_reg[31]_0 ;
  wire \d_out_reg[4]_i_1_n_0 ;
  wire [7:0]\d_out_reg[5]_rep_0 ;
  wire [5:0]\d_out_reg[7]_0 ;
  wire \d_out_reg[8]_i_1_n_0 ;
  wire [2:0]\NLW_d_out_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_out_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_out_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_out_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_out_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_d_out_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_d_out_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_d_out_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_d_out_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000044000200)) 
    \d_out[11]_i_1__1 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[1]),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(\d_out_reg[5]_rep_0 [2]));
  LUT6 #(
    .INIT(64'h0000000050218121)) 
    \d_out[17]_i_1__2 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[3]),
        .I3(PC_OBUF[2]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(\d_out_reg[5]_rep_0 [3]));
  LUT6 #(
    .INIT(64'h0000000022040341)) 
    \d_out[18]_i_1__2 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(\d_out_reg[5]_rep_0 [4]));
  LUT6 #(
    .INIT(64'h0000000010016001)) 
    \d_out[19]_i_1__2 
       (.I0(PC_OBUF[2]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(\d_out_reg[5]_rep_0 [5]));
  LUT6 #(
    .INIT(64'h000000005230C441)) 
    \d_out[22]_i_1__2 
       (.I0(PC_OBUF[1]),
        .I1(PC_OBUF[0]),
        .I2(PC_OBUF[2]),
        .I3(PC_OBUF[3]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(\d_out_reg[5]_rep_0 [6]));
  LUT6 #(
    .INIT(64'h0000000012400000)) 
    \d_out[27]_i_1__1 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(\d_out_reg[5]_rep_0 [7]));
  LUT6 #(
    .INIT(64'h0000000000000104)) 
    \d_out[4]_i_1__3 
       (.I0(PC_OBUF[4]),
        .I1(PC_OBUF[3]),
        .I2(PC_OBUF[0]),
        .I3(PC_OBUF[1]),
        .I4(PC_OBUF[2]),
        .I5(PC_OBUF[5]),
        .O(\d_out_reg[5]_rep_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    \d_out[4]_i_2 
       (.I0(PC_OBUF[0]),
        .O(\d_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \d_out[5]_i_1__2 
       (.I0(PC_OBUF[3]),
        .I1(PC_OBUF[2]),
        .I2(PC_OBUF[1]),
        .I3(PC_OBUF[0]),
        .I4(PC_OBUF[4]),
        .I5(PC_OBUF[5]),
        .O(\d_out_reg[5]_rep_0 [1]));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [0]),
        .Q(D[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [10]),
        .Q(PC[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [11]),
        .Q(PC[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [12]),
        .Q(PC[12]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_out_reg[12]_i_1 
       (.CI(\d_out_reg[8]_i_1_n_0 ),
        .CO({\d_out_reg[12]_i_1_n_0 ,\NLW_d_out_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[12:9]),
        .S(PC[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [13]),
        .Q(PC[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [14]),
        .Q(PC[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [15]),
        .Q(PC[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [16]),
        .Q(PC[16]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_out_reg[16]_i_1 
       (.CI(\d_out_reg[12]_i_1_n_0 ),
        .CO({\d_out_reg[16]_i_1_n_0 ,\NLW_d_out_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[16:13]),
        .S(PC[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [17]),
        .Q(PC[17]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [18]),
        .Q(PC[18]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [19]),
        .Q(PC[19]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [1]),
        .Q(PC[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [20]),
        .Q(PC[20]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_out_reg[20]_i_1 
       (.CI(\d_out_reg[16]_i_1_n_0 ),
        .CO({\d_out_reg[20]_i_1_n_0 ,\NLW_d_out_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[20:17]),
        .S(PC[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [21]),
        .Q(PC[21]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [22]),
        .Q(PC[22]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [23]),
        .Q(PC[23]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [24]),
        .Q(PC[24]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_out_reg[24]_i_1 
       (.CI(\d_out_reg[20]_i_1_n_0 ),
        .CO({\d_out_reg[24]_i_1_n_0 ,\NLW_d_out_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[24:21]),
        .S(PC[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [25]),
        .Q(PC[25]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [26]),
        .Q(PC[26]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [27]),
        .Q(PC[27]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [28]),
        .Q(PC[28]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_out_reg[28]_i_1 
       (.CI(\d_out_reg[24]_i_1_n_0 ),
        .CO({\d_out_reg[28]_i_1_n_0 ,\NLW_d_out_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[28:25]),
        .S(PC[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [29]),
        .Q(PC[29]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [2]),
        .Q(\d_out_reg[7]_0 [0]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[2]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [2]),
        .Q(PC_OBUF[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [30]),
        .Q(PC[30]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [31]),
        .Q(PC[31]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_out_reg[31]_i_2 
       (.CI(\d_out_reg[28]_i_1_n_0 ),
        .CO(\NLW_d_out_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_d_out_reg[31]_i_2_O_UNCONNECTED [3],D[31:29]}),
        .S({1'b0,PC[31:29]}));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [3]),
        .Q(\d_out_reg[7]_0 [1]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [3]),
        .Q(PC_OBUF[1]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [4]),
        .Q(\d_out_reg[7]_0 [2]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 \d_out_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\d_out_reg[4]_i_1_n_0 ,\NLW_d_out_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PC_OBUF[0],1'b0}),
        .O(D[4:1]),
        .S({PC_OBUF[2:1],\d_out[4]_i_2_n_0 ,PC[1]}));
  (* ORIG_CELL_NAME = "d_out_reg[4]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [4]),
        .Q(PC_OBUF[2]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [5]),
        .Q(\d_out_reg[7]_0 [3]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[5]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [5]),
        .Q(PC_OBUF[3]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [6]),
        .Q(\d_out_reg[7]_0 [4]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[6]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [6]),
        .Q(PC_OBUF[4]),
        .R(RESET_IBUF));
  (* IOB = "TRUE" *) 
  (* ORIG_CELL_NAME = "d_out_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [7]),
        .Q(\d_out_reg[7]_0 [5]),
        .R(RESET_IBUF));
  (* ORIG_CELL_NAME = "d_out_reg[7]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7]_rep 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [7]),
        .Q(PC_OBUF[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [8]),
        .Q(PC[8]),
        .R(RESET_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \d_out_reg[8]_i_1 
       (.CI(\d_out_reg[4]_i_1_n_0 ),
        .CO({\d_out_reg[8]_i_1_n_0 ,\NLW_d_out_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(D[8:5]),
        .S({PC[8],PC_OBUF[5:3]}));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(PCWrite),
        .D(\d_out_reg[31]_0 [9]),
        .Q(PC[9]),
        .R(RESET_IBUF));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg_4
   (S,
    Q,
    D,
    R15,
    \d_out_reg[31]_0 ,
    DATA_OUT1,
    RESET_IBUF,
    IRWrite,
    \d_out_reg[31]_1 ,
    CLK_IBUF_BUFG);
  output [3:0]S;
  output [28:0]Q;
  output [3:0]D;
  input [2:0]R15;
  input \d_out_reg[31]_0 ;
  input [3:0]DATA_OUT1;
  input RESET_IBUF;
  input IRWrite;
  input [31:0]\d_out_reg[31]_1 ;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [3:0]D;
  wire [3:0]DATA_OUT1;
  wire IRWrite;
  wire [28:0]Q;
  wire [2:0]R15;
  wire RESET_IBUF;
  wire [3:0]S;
  wire \d_out_reg[31]_0 ;
  wire [31:0]\d_out_reg[31]_1 ;

  LUT1 #(
    .INIT(2'h1)) 
    PC_next_carry_i_1
       (.I0(Q[1]),
        .O(S[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[0]_i_1 
       (.I0(Q[0]),
        .I1(\d_out_reg[31]_0 ),
        .I2(DATA_OUT1[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[29]_i_1 
       (.I0(R15[0]),
        .I1(\d_out_reg[31]_0 ),
        .I2(DATA_OUT1[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[30]_i_1 
       (.I0(R15[1]),
        .I1(\d_out_reg[31]_0 ),
        .I2(DATA_OUT1[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[31]_i_1 
       (.I0(R15[2]),
        .I1(\d_out_reg[31]_0 ),
        .I2(DATA_OUT1[3]),
        .O(D[3]));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [0]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [10]),
        .Q(Q[7]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [11]),
        .Q(Q[8]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [12]),
        .Q(Q[9]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [13]),
        .Q(Q[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [14]),
        .Q(Q[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [15]),
        .Q(Q[12]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [16]),
        .Q(Q[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [17]),
        .Q(Q[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [18]),
        .Q(Q[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [19]),
        .Q(Q[16]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [1]),
        .Q(S[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [20]),
        .Q(Q[17]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [21]),
        .Q(Q[18]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [22]),
        .Q(Q[19]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [23]),
        .Q(Q[20]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [24]),
        .Q(Q[21]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [25]),
        .Q(Q[22]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [26]),
        .Q(Q[23]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [27]),
        .Q(Q[24]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [28]),
        .Q(Q[25]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [29]),
        .Q(Q[26]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [2]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [30]),
        .Q(Q[27]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [31]),
        .Q(Q[28]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [3]),
        .Q(S[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [4]),
        .Q(S[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [5]),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [6]),
        .Q(Q[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [7]),
        .Q(Q[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [8]),
        .Q(Q[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(IRWrite),
        .D(\d_out_reg[31]_1 [9]),
        .Q(Q[6]),
        .R(RESET_IBUF));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg_5
   (Q,
    RESET_IBUF,
    ALUResult_OBUF,
    CLK_IBUF_BUFG);
  output [31:0]Q;
  input RESET_IBUF;
  input [31:0]ALUResult_OBUF;
  input CLK_IBUF_BUFG;

  wire [31:0]ALUResult_OBUF;
  wire CLK_IBUF_BUFG;
  wire [31:0]Q;
  wire RESET_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[0]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[10]),
        .Q(Q[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[11]),
        .Q(Q[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[12]),
        .Q(Q[12]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[13]),
        .Q(Q[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[14]),
        .Q(Q[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[15]),
        .Q(Q[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[16]),
        .Q(Q[16]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[17]),
        .Q(Q[17]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[18]),
        .Q(Q[18]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[19]),
        .Q(Q[19]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[1]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[20]),
        .Q(Q[20]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[21]),
        .Q(Q[21]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[22]),
        .Q(Q[22]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[23]),
        .Q(Q[23]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[24]),
        .Q(Q[24]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[25]),
        .Q(Q[25]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[26]),
        .Q(Q[26]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[27]),
        .Q(Q[27]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[28]),
        .Q(Q[28]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[29]),
        .Q(Q[29]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[2]),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[30]),
        .Q(Q[30]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[31]),
        .Q(Q[31]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[3]),
        .Q(Q[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[4]),
        .Q(Q[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[5]),
        .Q(Q[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[6]),
        .Q(Q[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[7]),
        .Q(Q[7]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[8]),
        .Q(Q[8]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(ALUResult_OBUF[9]),
        .Q(Q[9]),
        .R(RESET_IBUF));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg_6
   (Q,
    RESET_IBUF,
    D,
    CLK_IBUF_BUFG);
  output [31:0]Q;
  input RESET_IBUF;
  input [31:0]D;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [31:0]D;
  wire [31:0]Q;
  wire RESET_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[10]),
        .Q(Q[10]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[11]),
        .Q(Q[11]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[12]),
        .Q(Q[12]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[13]),
        .Q(Q[13]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[14]),
        .Q(Q[14]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[15]),
        .Q(Q[15]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[16]),
        .Q(Q[16]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[17]),
        .Q(Q[17]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[18]),
        .Q(Q[18]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[19]),
        .Q(Q[19]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[20]),
        .Q(Q[20]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[21]),
        .Q(Q[21]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[22]),
        .Q(Q[22]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[23]),
        .Q(Q[23]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[24]),
        .Q(Q[24]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[25]),
        .Q(Q[25]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[26]),
        .Q(Q[26]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[27]),
        .Q(Q[27]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[28]),
        .Q(Q[28]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[29]),
        .Q(Q[29]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[30]),
        .Q(Q[30]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[31]),
        .Q(Q[31]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[4]),
        .Q(Q[4]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[5]),
        .Q(Q[5]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[6]),
        .Q(Q[6]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[7]),
        .Q(Q[7]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[8]),
        .Q(Q[8]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(D[9]),
        .Q(Q[9]),
        .R(RESET_IBUF));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg__parameterized1
   (\d_out_reg[1]_0 ,
    Q,
    Instruction_OBUF,
    RESET_IBUF,
    \d_out_reg[0]_0 ,
    D,
    CLK_IBUF_BUFG);
  output \d_out_reg[1]_0 ;
  output [3:0]Q;
  input [2:0]Instruction_OBUF;
  input RESET_IBUF;
  input [0:0]\d_out_reg[0]_0 ;
  input [3:0]D;
  input CLK_IBUF_BUFG;

  wire CLK_IBUF_BUFG;
  wire [3:0]D;
  wire \FSM_sequential_current_state[2]_i_9_n_0 ;
  wire [2:0]Instruction_OBUF;
  wire [3:0]Q;
  wire RESET_IBUF;
  wire [0:0]\d_out_reg[0]_0 ;
  wire \d_out_reg[1]_0 ;

  LUT6 #(
    .INIT(64'hFFCCCCFFFDF1020E)) 
    \FSM_sequential_current_state[2]_i_8 
       (.I0(Q[1]),
        .I1(Instruction_OBUF[2]),
        .I2(Q[2]),
        .I3(\FSM_sequential_current_state[2]_i_9_n_0 ),
        .I4(Instruction_OBUF[0]),
        .I5(Instruction_OBUF[1]),
        .O(\d_out_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_current_state[2]_i_9 
       (.I0(Q[3]),
        .I1(Q[0]),
        .O(\FSM_sequential_current_state[2]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(\d_out_reg[0]_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(\d_out_reg[0]_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(\d_out_reg[0]_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(\d_out_reg[0]_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(RESET_IBUF));
endmodule

(* ORIG_REF_NAME = "Rg" *) 
module Rg__parameterized4
   (Q,
    RESET_IBUF,
    E,
    ALUResult_OBUF,
    CLK_IBUF_BUFG);
  output [4:0]Q;
  input RESET_IBUF;
  input [0:0]E;
  input [4:0]ALUResult_OBUF;
  input CLK_IBUF_BUFG;

  wire [4:0]ALUResult_OBUF;
  wire CLK_IBUF_BUFG;
  wire [0:0]E;
  wire [4:0]Q;
  wire RESET_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(ALUResult_OBUF[0]),
        .Q(Q[0]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(ALUResult_OBUF[1]),
        .Q(Q[1]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(ALUResult_OBUF[2]),
        .Q(Q[2]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(ALUResult_OBUF[3]),
        .Q(Q[3]),
        .R(RESET_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \d_out_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(E),
        .D(ALUResult_OBUF[4]),
        .Q(Q[4]),
        .R(RESET_IBUF));
endmodule

module adder
   (S_0,
    CO,
    d_out0_out,
    S,
    \ALUResult_OBUF[4]_inst_i_3 ,
    \ALUResult_OBUF[8]_inst_i_3 ,
    \ALUResult_OBUF[12]_inst_i_3 ,
    \ALUResult_OBUF[16]_inst_i_3 ,
    \ALUResult_OBUF[20]_inst_i_3 ,
    \ALUResult_OBUF[24]_inst_i_3 ,
    DI,
    \d_out_reg[0] );
  output [31:0]S_0;
  output [0:0]CO;
  input [30:0]d_out0_out;
  input [3:0]S;
  input [3:0]\ALUResult_OBUF[4]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[8]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[12]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[16]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[20]_inst_i_3 ;
  input [3:0]\ALUResult_OBUF[24]_inst_i_3 ;
  input [0:0]DI;
  input [3:0]\d_out_reg[0] ;

  wire [3:0]\ALUResult_OBUF[12]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[16]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[20]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[24]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[4]_inst_i_3 ;
  wire [3:0]\ALUResult_OBUF[8]_inst_i_3 ;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [3:0]S;
  wire [31:0]S_0;
  wire [30:0]d_out0_out;
  wire [3:0]\d_out_reg[0] ;
  wire sum0_carry__0_n_0;
  wire sum0_carry__1_n_0;
  wire sum0_carry__2_n_0;
  wire sum0_carry__3_n_0;
  wire sum0_carry__4_n_0;
  wire sum0_carry__5_n_0;
  wire sum0_carry_n_0;
  wire [2:0]NLW_sum0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__5_CO_UNCONNECTED;
  wire [2:0]NLW_sum0_carry__6_CO_UNCONNECTED;

  CARRY4 sum0_carry
       (.CI(1'b0),
        .CO({sum0_carry_n_0,NLW_sum0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(d_out0_out[3:0]),
        .O(S_0[3:0]),
        .S(S));
  CARRY4 sum0_carry__0
       (.CI(sum0_carry_n_0),
        .CO({sum0_carry__0_n_0,NLW_sum0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(d_out0_out[7:4]),
        .O(S_0[7:4]),
        .S(\ALUResult_OBUF[4]_inst_i_3 ));
  CARRY4 sum0_carry__1
       (.CI(sum0_carry__0_n_0),
        .CO({sum0_carry__1_n_0,NLW_sum0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(d_out0_out[11:8]),
        .O(S_0[11:8]),
        .S(\ALUResult_OBUF[8]_inst_i_3 ));
  CARRY4 sum0_carry__2
       (.CI(sum0_carry__1_n_0),
        .CO({sum0_carry__2_n_0,NLW_sum0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(d_out0_out[15:12]),
        .O(S_0[15:12]),
        .S(\ALUResult_OBUF[12]_inst_i_3 ));
  CARRY4 sum0_carry__3
       (.CI(sum0_carry__2_n_0),
        .CO({sum0_carry__3_n_0,NLW_sum0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(d_out0_out[19:16]),
        .O(S_0[19:16]),
        .S(\ALUResult_OBUF[16]_inst_i_3 ));
  CARRY4 sum0_carry__4
       (.CI(sum0_carry__3_n_0),
        .CO({sum0_carry__4_n_0,NLW_sum0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(d_out0_out[23:20]),
        .O(S_0[23:20]),
        .S(\ALUResult_OBUF[20]_inst_i_3 ));
  CARRY4 sum0_carry__5
       (.CI(sum0_carry__4_n_0),
        .CO({sum0_carry__5_n_0,NLW_sum0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(d_out0_out[27:24]),
        .O(S_0[27:24]),
        .S(\ALUResult_OBUF[24]_inst_i_3 ));
  CARRY4 sum0_carry__6
       (.CI(sum0_carry__5_n_0),
        .CO({CO,NLW_sum0_carry__6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({DI,d_out0_out[30:28]}),
        .O(S_0[31:28]),
        .S(\d_out_reg[0] ));
endmodule

module adder_p4
   (R15,
    D,
    Q,
    S,
    \d_out_reg[28] ,
    DATA_OUT1);
  output [30:0]R15;
  output [27:0]D;
  input [30:0]Q;
  input [0:0]S;
  input \d_out_reg[28] ;
  input [27:0]DATA_OUT1;

  wire [27:0]D;
  wire [27:0]DATA_OUT1;
  wire PC_next_carry__0_n_0;
  wire PC_next_carry__1_n_0;
  wire PC_next_carry__2_n_0;
  wire PC_next_carry__3_n_0;
  wire PC_next_carry__4_n_0;
  wire PC_next_carry__5_n_0;
  wire PC_next_carry_n_0;
  wire [30:0]Q;
  wire [30:0]R15;
  wire [0:0]S;
  wire \d_out_reg[28] ;
  wire [2:0]NLW_PC_next_carry_CO_UNCONNECTED;
  wire [2:0]NLW_PC_next_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_PC_next_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_PC_next_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_PC_next_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_PC_next_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_PC_next_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_PC_next_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_PC_next_carry__6_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST" *) 
  CARRY4 PC_next_carry
       (.CI(1'b0),
        .CO({PC_next_carry_n_0,NLW_PC_next_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[1],1'b0}),
        .O(R15[3:0]),
        .S({Q[3:2],S,Q[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_next_carry__0
       (.CI(PC_next_carry_n_0),
        .CO({PC_next_carry__0_n_0,NLW_PC_next_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R15[7:4]),
        .S(Q[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_next_carry__1
       (.CI(PC_next_carry__0_n_0),
        .CO({PC_next_carry__1_n_0,NLW_PC_next_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R15[11:8]),
        .S(Q[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_next_carry__2
       (.CI(PC_next_carry__1_n_0),
        .CO({PC_next_carry__2_n_0,NLW_PC_next_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R15[15:12]),
        .S(Q[15:12]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_next_carry__3
       (.CI(PC_next_carry__2_n_0),
        .CO({PC_next_carry__3_n_0,NLW_PC_next_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R15[19:16]),
        .S(Q[19:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_next_carry__4
       (.CI(PC_next_carry__3_n_0),
        .CO({PC_next_carry__4_n_0,NLW_PC_next_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R15[23:20]),
        .S(Q[23:20]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_next_carry__5
       (.CI(PC_next_carry__4_n_0),
        .CO({PC_next_carry__5_n_0,NLW_PC_next_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(R15[27:24]),
        .S(Q[27:24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 PC_next_carry__6
       (.CI(PC_next_carry__5_n_0),
        .CO(NLW_PC_next_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_PC_next_carry__6_O_UNCONNECTED[3],R15[30:28]}),
        .S({1'b0,Q[30:28]}));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[10]_i_1 
       (.I0(R15[9]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[11]_i_1 
       (.I0(R15[10]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[12]_i_1 
       (.I0(R15[11]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[13]_i_1 
       (.I0(R15[12]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[14]_i_1 
       (.I0(R15[13]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[15]_i_1 
       (.I0(R15[14]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[16]_i_1 
       (.I0(R15[15]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[17]_i_1 
       (.I0(R15[16]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[18]_i_1 
       (.I0(R15[17]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[19]_i_1 
       (.I0(R15[18]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[1]_i_1 
       (.I0(R15[0]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[20]_i_1 
       (.I0(R15[19]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[21]_i_1 
       (.I0(R15[20]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[22]_i_1 
       (.I0(R15[21]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[23]_i_1 
       (.I0(R15[22]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[24]_i_1 
       (.I0(R15[23]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[25]_i_1 
       (.I0(R15[24]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[26]_i_1 
       (.I0(R15[25]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[27]_i_1 
       (.I0(R15[26]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[28]_i_1 
       (.I0(R15[27]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[2]_i_1 
       (.I0(R15[1]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[3]_i_1 
       (.I0(R15[2]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[4]_i_1 
       (.I0(R15[3]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[5]_i_1 
       (.I0(R15[4]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[6]_i_1 
       (.I0(R15[5]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[7]_i_1 
       (.I0(R15[6]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[8]_i_1 
       (.I0(R15[7]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \d_out[9]_i_1 
       (.I0(R15[8]),
        .I1(\d_out_reg[28] ),
        .I2(DATA_OUT1[8]),
        .O(D[8]));
endmodule

module regfile
   (DATA_OUT1,
    DATA_OUT2,
    CLK_IBUF_BUFG,
    DATA_IN,
    RegWrite,
    WA,
    ADDRC,
    RA2);
  output [31:0]DATA_OUT1;
  output [31:0]DATA_OUT2;
  input CLK_IBUF_BUFG;
  input [31:0]DATA_IN;
  input RegWrite;
  input [3:0]WA;
  input [3:0]ADDRC;
  input [3:0]RA2;

  wire [3:0]ADDRC;
  wire CLK_IBUF_BUFG;
  wire [31:0]DATA_IN;
  wire [31:0]DATA_OUT1;
  wire [31:0]DATA_OUT2;
  wire [3:0]RA2;
  wire RegWrite;
  wire [3:0]WA;

  regfile_core rf
       (.ADDRC(ADDRC),
        .CLK_IBUF_BUFG(CLK_IBUF_BUFG),
        .DATA_IN(DATA_IN),
        .DATA_OUT1(DATA_OUT1),
        .DATA_OUT2(DATA_OUT2),
        .RA2(RA2),
        .RegWrite(RegWrite),
        .WA(WA));
endmodule

module regfile_core
   (DATA_OUT1,
    DATA_OUT2,
    CLK_IBUF_BUFG,
    DATA_IN,
    RegWrite,
    WA,
    ADDRC,
    RA2);
  output [31:0]DATA_OUT1;
  output [31:0]DATA_OUT2;
  input CLK_IBUF_BUFG;
  input [31:0]DATA_IN;
  input RegWrite;
  input [3:0]WA;
  input [3:0]ADDRC;
  input [3:0]RA2;

  wire [3:0]ADDRC;
  wire CLK_IBUF_BUFG;
  wire [31:0]DATA_IN;
  wire [31:0]DATA_OUT1;
  wire [31:0]DATA_OUT2;
  wire [3:0]RA2;
  wire RegWrite;
  wire [3:0]WA;
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

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ RF_reg_r1_0_15_0_5
       (.ADDRA({1'b0,ADDRC}),
        .ADDRB({1'b0,ADDRC}),
        .ADDRC({1'b0,ADDRC}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[1:0]),
        .DIB(DATA_IN[3:2]),
        .DIC(DATA_IN[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[1:0]),
        .DOB(DATA_OUT1[3:2]),
        .DOC(DATA_OUT1[5:4]),
        .DOD(NLW_RF_reg_r1_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD1 RF_reg_r1_0_15_12_17
       (.ADDRA({1'b0,ADDRC}),
        .ADDRB({1'b0,ADDRC}),
        .ADDRC({1'b0,ADDRC}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[13:12]),
        .DIB(DATA_IN[15:14]),
        .DIC(DATA_IN[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[13:12]),
        .DOB(DATA_OUT1[15:14]),
        .DOC(DATA_OUT1[17:16]),
        .DOD(NLW_RF_reg_r1_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD2 RF_reg_r1_0_15_18_23
       (.ADDRA({1'b0,ADDRC}),
        .ADDRB({1'b0,ADDRC}),
        .ADDRC({1'b0,ADDRC}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[19:18]),
        .DIB(DATA_IN[21:20]),
        .DIC(DATA_IN[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[19:18]),
        .DOB(DATA_OUT1[21:20]),
        .DOC(DATA_OUT1[23:22]),
        .DOD(NLW_RF_reg_r1_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD3 RF_reg_r1_0_15_24_29
       (.ADDRA({1'b0,ADDRC}),
        .ADDRB({1'b0,ADDRC}),
        .ADDRC({1'b0,ADDRC}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[25:24]),
        .DIB(DATA_IN[27:26]),
        .DIC(DATA_IN[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[25:24]),
        .DOB(DATA_OUT1[27:26]),
        .DOC(DATA_OUT1[29:28]),
        .DOD(NLW_RF_reg_r1_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_UNIQ_BASE_ RF_reg_r1_0_15_30_31
       (.A0(WA[0]),
        .A1(WA[1]),
        .A2(WA[2]),
        .A3(WA[3]),
        .A4(1'b0),
        .D(DATA_IN[30]),
        .DPO(DATA_OUT1[30]),
        .DPRA0(ADDRC[0]),
        .DPRA1(ADDRC[1]),
        .DPRA2(ADDRC[2]),
        .DPRA3(ADDRC[3]),
        .DPRA4(1'b0),
        .SPO(NLW_RF_reg_r1_0_15_30_31_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD4 RF_reg_r1_0_15_30_31__0
       (.A0(WA[0]),
        .A1(WA[1]),
        .A2(WA[2]),
        .A3(WA[3]),
        .A4(1'b0),
        .D(DATA_IN[31]),
        .DPO(DATA_OUT1[31]),
        .DPRA0(ADDRC[0]),
        .DPRA1(ADDRC[1]),
        .DPRA2(ADDRC[2]),
        .DPRA3(ADDRC[3]),
        .DPRA4(1'b0),
        .SPO(NLW_RF_reg_r1_0_15_30_31__0_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r1_0_15_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD5 RF_reg_r1_0_15_6_11
       (.ADDRA({1'b0,ADDRC}),
        .ADDRB({1'b0,ADDRC}),
        .ADDRC({1'b0,ADDRC}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[7:6]),
        .DIB(DATA_IN[9:8]),
        .DIC(DATA_IN[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT1[7:6]),
        .DOB(DATA_OUT1[9:8]),
        .DOC(DATA_OUT1[11:10]),
        .DOD(NLW_RF_reg_r1_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD6 RF_reg_r2_0_15_0_5
       (.ADDRA({1'b0,RA2}),
        .ADDRB({1'b0,RA2}),
        .ADDRC({1'b0,RA2}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[1:0]),
        .DIB(DATA_IN[3:2]),
        .DIC(DATA_IN[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[1:0]),
        .DOB(DATA_OUT2[3:2]),
        .DOC(DATA_OUT2[5:4]),
        .DOD(NLW_RF_reg_r2_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD7 RF_reg_r2_0_15_12_17
       (.ADDRA({1'b0,RA2}),
        .ADDRB({1'b0,RA2}),
        .ADDRC({1'b0,RA2}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[13:12]),
        .DIB(DATA_IN[15:14]),
        .DIC(DATA_IN[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[13:12]),
        .DOB(DATA_OUT2[15:14]),
        .DOC(DATA_OUT2[17:16]),
        .DOD(NLW_RF_reg_r2_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD8 RF_reg_r2_0_15_18_23
       (.ADDRA({1'b0,RA2}),
        .ADDRB({1'b0,RA2}),
        .ADDRC({1'b0,RA2}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[19:18]),
        .DIB(DATA_IN[21:20]),
        .DIC(DATA_IN[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[19:18]),
        .DOB(DATA_OUT2[21:20]),
        .DOC(DATA_OUT2[23:22]),
        .DOD(NLW_RF_reg_r2_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD9 RF_reg_r2_0_15_24_29
       (.ADDRA({1'b0,RA2}),
        .ADDRB({1'b0,RA2}),
        .ADDRC({1'b0,RA2}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[25:24]),
        .DIB(DATA_IN[27:26]),
        .DIC(DATA_IN[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[25:24]),
        .DOB(DATA_OUT2[27:26]),
        .DOC(DATA_OUT2[29:28]),
        .DOD(NLW_RF_reg_r2_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD10 RF_reg_r2_0_15_30_31
       (.A0(WA[0]),
        .A1(WA[1]),
        .A2(WA[2]),
        .A3(WA[3]),
        .A4(1'b0),
        .D(DATA_IN[30]),
        .DPO(DATA_OUT2[30]),
        .DPRA0(RA2[0]),
        .DPRA1(RA2[1]),
        .DPRA2(RA2[2]),
        .DPRA3(RA2[3]),
        .DPRA4(1'b0),
        .SPO(NLW_RF_reg_r2_0_15_30_31_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD11 RF_reg_r2_0_15_30_31__0
       (.A0(WA[0]),
        .A1(WA[1]),
        .A2(WA[2]),
        .A3(WA[3]),
        .A4(1'b0),
        .D(DATA_IN[31]),
        .DPO(DATA_OUT2[31]),
        .DPRA0(RA2[0]),
        .DPRA1(RA2[1]),
        .DPRA2(RA2[2]),
        .DPRA3(RA2[3]),
        .DPRA4(1'b0),
        .SPO(NLW_RF_reg_r2_0_15_30_31__0_SPO_UNCONNECTED),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "DataPath_MultiCycle/RegisterFile/rf/RF_reg_r2_0_15_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD12 RF_reg_r2_0_15_6_11
       (.ADDRA({1'b0,RA2}),
        .ADDRB({1'b0,RA2}),
        .ADDRC({1'b0,RA2}),
        .ADDRD({1'b0,WA}),
        .DIA(DATA_IN[7:6]),
        .DIB(DATA_IN[9:8]),
        .DIC(DATA_IN[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(DATA_OUT2[7:6]),
        .DOB(DATA_OUT2[9:8]),
        .DOC(DATA_OUT2[11:10]),
        .DOD(NLW_RF_reg_r2_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(CLK_IBUF_BUFG),
        .WE(RegWrite));
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
