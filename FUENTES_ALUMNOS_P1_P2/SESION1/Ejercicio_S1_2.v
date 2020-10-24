`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date:    15:32:17 09/24/2013 
// 
// Module Name:    Ejercicio_S1_3 
// DSD 
// PRACTICA 1. SESION 1
//////////////////////////////////////////////////////////////////////////////////
module Ejercicio_S1_2(input clk, reset, output reg [2:0] salida);
//Este initial es para facilitar la inicialización en simulacion
// es ignorado en síntesis
initial 
salida = 0;
always @ (posedge clk)
begin
if (reset)
salida <= 0;
else
salida <= salida + 1;
end
endmodule
