//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Sun Oct 25 12:50:40 2020
//Host        : DESKTOP-L3VS58C running 64-bit major release  (build 9200)
//Command     : generate_target top_wrapper.bd
//Design      : top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_wrapper
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

  wire [1:0]A;
  wire [1:0]B;
  wire [1:0]C;
  wire [1:0]D;
  wire [5:0]SALIDA;
  wire clk;

  top top_i
       (.A(A),
        .B(B),
        .C(C),
        .D(D),
        .SALIDA(SALIDA),
        .clk(clk));
endmodule
