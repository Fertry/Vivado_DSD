// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sun Oct 25 12:23:49 2020
// Host        : DESKTOP-L3VS58C running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Alejandro/Documents/Verilog/Vivado_DSD/Practica1/Practica1.sim/sim_1/impl/func/TutVivado_tb1_func_impl.v
// Design      : TutVivado
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "9e0c395c" *) 
(* NotValidForBitStream *)
module TutVivado
   (A,
    B,
    C,
    D,
    sel,
    mux_out);
  input [1:0]A;
  input [1:0]B;
  input [1:0]C;
  input [1:0]D;
  input [1:0]sel;
  output [1:0]mux_out;

  wire [1:0]A;
  wire [1:0]A_IBUF;
  wire [1:0]B;
  wire [1:0]B_IBUF;
  wire [1:0]C;
  wire [1:0]C_IBUF;
  wire [1:0]D;
  wire [1:0]D_IBUF;
  wire [1:0]mux_out;
  wire [1:0]mux_out_OBUF;
  wire [1:0]sel;
  wire [1:0]sel_IBUF;

  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \C_IBUF[0]_inst 
       (.I(C[0]),
        .O(C_IBUF[0]));
  IBUF \C_IBUF[1]_inst 
       (.I(C[1]),
        .O(C_IBUF[1]));
  IBUF \D_IBUF[0]_inst 
       (.I(D[0]),
        .O(D_IBUF[0]));
  IBUF \D_IBUF[1]_inst 
       (.I(D[1]),
        .O(D_IBUF[1]));
  OBUF \mux_out_OBUF[0]_inst 
       (.I(mux_out_OBUF[0]),
        .O(mux_out[0]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \mux_out_OBUF[0]_inst_i_1 
       (.I0(D_IBUF[0]),
        .I1(B_IBUF[0]),
        .I2(C_IBUF[0]),
        .I3(sel_IBUF[1]),
        .I4(A_IBUF[0]),
        .I5(sel_IBUF[0]),
        .O(mux_out_OBUF[0]));
  OBUF \mux_out_OBUF[1]_inst 
       (.I(mux_out_OBUF[1]),
        .O(mux_out[1]));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    \mux_out_OBUF[1]_inst_i_1 
       (.I0(D_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(C_IBUF[1]),
        .I3(sel_IBUF[1]),
        .I4(A_IBUF[1]),
        .I5(sel_IBUF[0]),
        .O(mux_out_OBUF[1]));
  IBUF \sel_IBUF[0]_inst 
       (.I(sel[0]),
        .O(sel_IBUF[0]));
  IBUF \sel_IBUF[1]_inst 
       (.I(sel[1]),
        .O(sel_IBUF[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
