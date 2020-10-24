`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//
// DSD
// Primer ejemplo utilizado en el Tutorial de Vivado
// PRACTICA 1. SESION 1
//
//////////////////////////////////////////////////////////////////////////////////
module TutVivado(input [1:0] A, B, C, D, input [1:0] sel, output  reg [1:0] mux_out);
// la entrada sel selecciona que dato debe visualizarse en mux_out (directamente sin pasar por ningún registro
always @ *
case (sel)
0: mux_out = A;
1: mux_out = B;
2: mux_out = C;
3: mux_out = D;
default: mux_out = A;
endcase

endmodule


