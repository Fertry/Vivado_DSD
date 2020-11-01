`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////

module circuito_tb();
    
    // Declaración como registro de las entradas y wire para las salidas:
    reg clk, dir_tb;
    wire led1_tb, led2_tb, led3_tb, led4_tb;

    // Instanciamos el circuito:
    circuito C_tb (clk, dir_tb, led1_tb, led2_tb, led3_tb, led4_tb);

    always #5 clk = !clk;

    initial
        begin
            clk = 0;
            dir_tb=0;
        end

    

    always #20000 dir_tb = !dir_tb;

endmodule
