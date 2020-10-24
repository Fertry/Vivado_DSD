module TutVivado_tb1(

    );
// Declaramos como reg las entradas del diseño
reg [1:0] A_tb, B_tb, C_tb, D_tb;
reg [1:0] sel_tb;
// Decalaramos como wire las salidas del diseño
wire [1:0] mux_out_tb;

// Instanciamos el diseño que queremos simular
TutVivado C1(A_tb, B_tb, C_tb, D_tb, sel_tb, mux_out_tb);
    
    

    integer i;
    
    
    initial begin
            // Initialize Inputs
            A_tb = 0;
            B_tb = 0;
            C_tb = 0;
            D_tb = 0;
            sel_tb = 0;
            
            // Wait 100 ns for global reset to finish
            #100;
            
            // chequeo de resultado. Conjunto de combinaciones aletaorias. Se mantiene sel fijo
            for (i = 1; i < 26; i = i + 1)begin
            A_tb= $random;
            B_tb = $random;
            C_tb = $random;
            D_tb = $random;
            # 50 ; end
            
            // se aplican otros valores de sel
            #500 sel_tb = 1;
            #200 sel_tb = 2;
            #300 sel_tb = 3;
            end
endmodule