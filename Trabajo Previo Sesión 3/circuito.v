'timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
//              Sesión 3 de laboratorio - DSD - Alejandro Fernández Trigo            //
//                      Circuito completo (descripción no jerárquica)                //
///////////////////////////////////////////////////////////////////////////////////////

module circuito (input clk, dir, output led1, led2, led3, led4);

    // Declaración del registro estado, contador y los 4 estados posibles:
	reg [1:0] estado = 0;
    reg [5:0] contador = 0;

	parameter S0 = 2'b00;
	parameter S1 = 2'b01;
	parameter S2 = 2'b10;
	parameter S3 = 2'b11;

    // Asignamiento continuo de los valores de las salidas:
	assign led1 = (estado == S0);
	assign led2 = (estado == S1);
	assign led3 = (estado == S2);
	assign led4 = (estado == S3);
    assign clock = contador[5];
	
    // Contador:
	always @ (posedge clk)
	begin
        // 2^6 = 64
		if (contador == 64)
			begin
				contador <= 0;
			end
		else
			begin
				contador <= contador + 1;
			end
	end

    // Control de los estados usando case en función
    // del contador (clock):
	always @ (posedge clock)
	case (estado)	
		S0:
			if (dir)	
				estado <= S1;
			else
				estado <= S3;
		S1:
			if (dir)
				estado <= S2
			else
				estado <= S0;
		S2:
			if (dir)
				estado <= S3;
			else
				estado <= S1;
		S3:
			if (dir)
				estado <= S0;
			else 
				estado <= S2;
		default: 
			estado <= S0;
	endcase

endmodule
