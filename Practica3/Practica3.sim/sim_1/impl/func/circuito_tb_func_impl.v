// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Oct 29 16:42:36 2020
// Host        : AHD-39 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/practicas/Desktop/Practica3/Practica3.sim/sim_1/impl/func/circuito_tb_func_impl.v
// Design      : circuito
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "950619aa" *) (* S0 = "3'b000" *) (* S1 = "3'b001" *) 
(* S2 = "3'b010" *) (* S3 = "3'b011" *) (* S4 = "3'b100" *) 
(* S5 = "3'b101" *) 
(* NotValidForBitStream *)
module circuito
   (clk,
    dir,
    led1,
    led2,
    led3,
    led4);
  input clk;
  input dir;
  output led1;
  output led2;
  output led3;
  output led4;

  wire \FSM_sequential_estado[0]_i_1_n_0 ;
  wire \FSM_sequential_estado[1]_i_1_n_0 ;
  wire \FSM_sequential_estado[2]_i_1_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \contador_reg_n_0_[0] ;
  wire \contador_reg_n_0_[1] ;
  wire \contador_reg_n_0_[2] ;
  wire \contador_reg_n_0_[3] ;
  wire \contador_reg_n_0_[4] ;
  wire dir;
  wire dir_IBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]estado;
  wire led1;
  wire led1_OBUF;
  wire led2;
  wire led2_OBUF;
  wire led3;
  wire led3_OBUF;
  wire led4;
  wire led4_OBUF;
  wire [5:0]p_0_in;
  wire reloj;

  LUT4 #(
    .INIT(16'h113C)) 
    \FSM_sequential_estado[0]_i_1 
       (.I0(estado[0]),
        .I1(estado[1]),
        .I2(dir_IBUF),
        .I3(estado[2]),
        .O(\FSM_sequential_estado[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h41)) 
    \FSM_sequential_estado[1]_i_1 
       (.I0(estado[1]),
        .I1(estado[0]),
        .I2(dir_IBUF),
        .O(\FSM_sequential_estado[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4218)) 
    \FSM_sequential_estado[2]_i_1 
       (.I0(estado[2]),
        .I1(estado[0]),
        .I2(estado[1]),
        .I3(dir_IBUF),
        .O(\FSM_sequential_estado[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_reg[0] 
       (.C(reloj),
        .CE(1'b1),
        .D(\FSM_sequential_estado[0]_i_1_n_0 ),
        .Q(estado[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_reg[1] 
       (.C(reloj),
        .CE(1'b1),
        .D(\FSM_sequential_estado[1]_i_1_n_0 ),
        .Q(estado[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_estado_reg[2] 
       (.C(reloj),
        .CE(1'b1),
        .D(\FSM_sequential_estado[2]_i_1_n_0 ),
        .Q(estado[2]),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \contador[0]_i_1 
       (.I0(\contador_reg_n_0_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \contador[1]_i_1 
       (.I0(\contador_reg_n_0_[0] ),
        .I1(\contador_reg_n_0_[1] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \contador[2]_i_1 
       (.I0(\contador_reg_n_0_[0] ),
        .I1(\contador_reg_n_0_[1] ),
        .I2(\contador_reg_n_0_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \contador[3]_i_1 
       (.I0(\contador_reg_n_0_[1] ),
        .I1(\contador_reg_n_0_[0] ),
        .I2(\contador_reg_n_0_[2] ),
        .I3(\contador_reg_n_0_[3] ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \contador[4]_i_1 
       (.I0(\contador_reg_n_0_[2] ),
        .I1(\contador_reg_n_0_[0] ),
        .I2(\contador_reg_n_0_[1] ),
        .I3(\contador_reg_n_0_[3] ),
        .I4(\contador_reg_n_0_[4] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \contador[5]_i_1 
       (.I0(\contador_reg_n_0_[3] ),
        .I1(\contador_reg_n_0_[1] ),
        .I2(\contador_reg_n_0_[0] ),
        .I3(\contador_reg_n_0_[2] ),
        .I4(\contador_reg_n_0_[4] ),
        .I5(reloj),
        .O(p_0_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(\contador_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(\contador_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(\contador_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(\contador_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(\contador_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \contador_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(reloj),
        .R(1'b0));
  IBUF dir_IBUF_inst
       (.I(dir),
        .O(dir_IBUF));
  OBUF led1_OBUF_inst
       (.I(led1_OBUF),
        .O(led1));
  LUT3 #(
    .INIT(8'h01)) 
    led1_OBUF_inst_i_1
       (.I0(estado[2]),
        .I1(estado[1]),
        .I2(estado[0]),
        .O(led1_OBUF));
  OBUF led2_OBUF_inst
       (.I(led2_OBUF),
        .O(led2));
  LUT2 #(
    .INIT(4'h4)) 
    led2_OBUF_inst_i_1
       (.I0(estado[2]),
        .I1(estado[0]),
        .O(led2_OBUF));
  OBUF led3_OBUF_inst
       (.I(led3_OBUF),
        .O(led3));
  LUT3 #(
    .INIT(8'h04)) 
    led3_OBUF_inst_i_1
       (.I0(estado[1]),
        .I1(estado[2]),
        .I2(estado[0]),
        .O(led3_OBUF));
  OBUF led4_OBUF_inst
       (.I(led4_OBUF),
        .O(led4));
  LUT3 #(
    .INIT(8'h24)) 
    led4_OBUF_inst_i_1
       (.I0(estado[2]),
        .I1(estado[1]),
        .I2(estado[0]),
        .O(led4_OBUF));
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
