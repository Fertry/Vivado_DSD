'timescale 1ns / 1ps

module circuito (input clk, direccion, output led1, led2, led3, led4);

	reg [26:0] contador = 0;
	reg [2:0] estado = 0;
	wire clkBueno;
	parameter S0 = 3'b000;
	parameter S1 = 3'b000;
	parameter S2 = 3'b000;
	parameter S3 = 3'b000;
	parameter S4 = 3'b000;
	parameter S5 = 3'b000;
	
	assign clkBueno = contador[26];
	assign led1 = (estado == S0);
	assign led2 = (estado == S1) + (estado == S2);
	assign led3 = (estado == S3);
	assign led4 = (estado == S4) + (estado == S5);
	
	always @ (posedge clk)
	begin
		if (contador[26])
			begin
				contador <= 0;
			end
		else
			begin
				contador <= contador + 1;
			end
	end
	
	always @ (posedge clk)
	case (estado)
		S0:
			begin
				if (dir)
					estado <= S1;
				else
					estado <= S5;
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
					estado <= S4;
				else
					estado <= S2;
			end
		S4:
			begin
				if (dir)
					estado <= S5;
				else
					estado <= S3;
			end
		S5:
			begin
				if (dir)
					estado <= S0;
				else
					estado <= S4;
			end
		default:
			begin
				estado <= 0;
			end
	endcase
	
endmodule
							