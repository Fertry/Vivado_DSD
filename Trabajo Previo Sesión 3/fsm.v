'timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
//              Sesión 3 de laboratorio - DSD - Alejandro Fernández Trigo            //
//                              Descripción de la FSM                                //
///////////////////////////////////////////////////////////////////////////////////////

module fsm (input clk, dir, output led1, led2, led3, led4);

    // Declaración del registro estado y los 4 posibles:
	reg [1:0] estado = 0;

	parameter S0 = 2'b00;
	parameter S1 = 2'b01;
	parameter S2 = 2'b10;
	parameter S3 = 2'b11;
	
    // Asignamiento continuo de los valores de las salidas:
	assign led1 = (estado == S0);
	assign led2 = (estado == S1);
	assign led3 = (estado == S2);
	assign led4 = (estado == S3);

    // Control de la ejecución con un case:
	always @ (posedge clk)
	case (estado)
		S0:
			begin
				if (dir)
					estado <= S1;
				else
					estado <= S3;
			end
		S1:
			begin
				if (dir)
					estado <= S2;
				else
					estado <= S0;
			end
		S2:
			begin
				if (dir)
					estado <= S3;
				else
					estado <= S1;
			end
		S3:
			begin
				if (dir)
					estado <= S0;
				else
					estado <= S2;
			end
		default:
			begin
				estado <= S0;
			end
	endcase
	
endmodule
