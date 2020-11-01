`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////

module circuito (input clk, dir, output led1, led2, led3, led4);

    // Declaración del registro estado y reloj como wire:
    wire reloj;
    reg [24:0] contador = 0;
    
    // Asignación del MSB al reloj que controla el FSM:
    assign reloj = contador[24];
    
    // Contador:
    always @ (posedge clk)
    begin
        contador <= contador + 1;
    end
    
    // Declaración de los 6 estados posibles:
	parameter S0 = 3'b000;
	parameter S1 = 3'b001;
	parameter S2 = 3'b010;
	parameter S3 = 3'b011;
	parameter S4 = 3'b100;
	parameter S5 = 3'b101;
	
    // Asignamiento continuo de los valores de estado a las salidas:
    reg [2:0] estado = 0;
    assign led1 = (estado==S0);
    assign led2 = (estado==S1) || (estado==S2);
    assign led3 = (estado==S3);
    assign led4 = (estado==S4) || (estado==S5);

    // Control de los estados usando case en función del contador (reloj) - FSM:
	always @ (posedge reloj)
	case (estado)	
		S0:
			if (dir)	
				estado <= S1;
			else
				estado <= S5;
		S1:
			if (dir)
				estado <= S2;
			else
				estado <= S0;
		S2:
			if (dir)
				estado <= S3;
			else
				estado <= S1;
		S3:
			if (dir)
				estado <= S4;
			else 
				estado <= S2;
		S4:
		  if (dir)
		      estado <= S5;
		  else
		      estado <= S3;
		S5:
		  if (dir)
		      estado <= S0;
		  else
		      estado <= S4;
		default: 
			estado <= S0;
	endcase

endmodule
