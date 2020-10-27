'timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
//              Sesión 3 de laboratorio - DSD - Alejandro Fernández Trigo            //
//                                      Testbench                                    //
///////////////////////////////////////////////////////////////////////////////////////

module circuito_tb ();

    reg clk, dir_tb;
    wire led1_tb, led2_tb, led3_tb, led4_tb;

    circuito C_tb (clk, dir_tb, led1_tb, led2_tb, led3_tb, led4_tb);

    always #10 clk = !clk;

    initial
        begin
            led1_tb = 0;
            led2_tb = 0;
            led3_tb = 0;
            led4_tb = 0;
            clk = 0;
        end

    always @ (posedge clk)
    begin
        dir_tb = 0; 
    end

    always #5000 dir_tb = $random;
    
endmodule
