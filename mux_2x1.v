module mux_2x1 (
    input wire clk_1,      
    input wire clk_2,      
    input wire s,    
    output wire y    
);
    assign y = (s) ? clk_2 : clk_1; 
endmodule