'timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
//              Sesión 3 de laboratorio - DSD - Alejandro Fernández Trigo            //
//             Descripción del contador (frecuencia 64 veces menor que clk)          //
///////////////////////////////////////////////////////////////////////////////////////

module contador (input clk, output salida);

    // Declaración del registro contador:
	reg [5:0] contador = 0;

    // Asignamiento continuo del valor de salida:
    assign salida = contador[5];
	
    // Incremento del contador:
	always @ (posedge clk)
	begin
		contador <= contador + 1;
	end

endmodule
