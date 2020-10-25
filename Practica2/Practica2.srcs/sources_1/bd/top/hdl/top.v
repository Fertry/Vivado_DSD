//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Sun Oct 25 12:50:40 2020
//Host        : DESKTOP-L3VS58C running 64-bit major release  (build 9200)
//Command     : generate_target top.bd
//Design      : top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top.hwdef" *) 
module top
   (A,
    B,
    C,
    D,
    SALIDA,
    clk);
  input [1:0]A;
  input [1:0]B;
  input [1:0]C;
  input [1:0]D;
  output [5:0]SALIDA;
  input clk;

  wire [1:0]A_1;
  wire [1:0]B_1;
  wire [1:0]C_1;
  wire [5:0]Calculo_0_Sal;
  wire [1:0]D_1;
  wire [5:0]Registro6_0_DATAOUT;
  wire [1:0]Registro_0_DATAOUT;
  wire [1:0]Registro_1_DATAOUT;
  wire [1:0]Registro_2_DATAOUT;
  wire [1:0]Registro_3_DATAOUT;
  wire clk_1;

  assign A_1 = A[1:0];
  assign B_1 = B[1:0];
  assign C_1 = C[1:0];
  assign D_1 = D[1:0];
  assign SALIDA[5:0] = Registro6_0_DATAOUT;
  assign clk_1 = clk;
  top_Calculo_0_0 Calculo_0
       (.A(Registro_0_DATAOUT),
        .B(Registro_1_DATAOUT),
        .C(Registro_2_DATAOUT),
        .D(Registro_3_DATAOUT),
        .Sal(Calculo_0_Sal));
  top_Registro6_0_0 Registro6_0
       (.DATAIN(Calculo_0_Sal),
        .DATAOUT(Registro6_0_DATAOUT),
        .clk(clk_1));
  top_Registro_0_0 Registro_0
       (.DATAIN(A_1),
        .DATAOUT(Registro_0_DATAOUT),
        .clk(clk_1));
  top_Registro_0_1 Registro_1
       (.DATAIN(B_1),
        .DATAOUT(Registro_1_DATAOUT),
        .clk(clk_1));
  top_Registro_0_2 Registro_2
       (.DATAIN(C_1),
        .DATAOUT(Registro_2_DATAOUT),
        .clk(clk_1));
  top_Registro_0_3 Registro_3
       (.DATAIN(D_1),
        .DATAOUT(Registro_3_DATAOUT),
        .clk(clk_1));
endmodule
