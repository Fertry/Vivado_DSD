'timescale 1ns / 1ps
///////////////////////////////////////////////////////////////////////////////////////
//              Sesión 3 de laboratorio - DSD - Alejandro Fernández Trigo            //
//                                      Testbench                                    //
///////////////////////////////////////////////////////////////////////////////////////

module circuito_tb ();

    reg clk, dir_tb;
    wire led1_tb, led2_tb, led3_tb, led4_tb;

    circuito C_tb (clk, dir_tb, led1_tb, led2_tb, led3_tb, led4_tb);

    always #5 clk = !clk;
    begin
        clk = 0;
        dir_tb = 1; 
    end

    always #5000 dir_tb = $random;
    
endmodule
