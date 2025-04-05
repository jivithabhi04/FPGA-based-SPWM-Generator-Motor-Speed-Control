`timescale 1ns / 1ps
module spwm_tb();
    reg clk_internal;
    reg reset;
    reg clk_select;
   
   
   
    wire spwm_out_1;
    wire spwm_out_2;
    wire spwm_out_3;
    wire clk_t;
    
    top_spwm DUT (
        .clk_int(clk_internal),
        .reset(reset),
        .spwm_1(spwm_out_1),
        .spwm_2(spwm_out_2),
        .spwm_3(spwm_out_3),
        .sel(clk_select),
        .clk_t(clk_t)
    );
    
    initial begin
        clk_internal = 0;
        reset = 1;
        
        clk_select=1;
        #20;
        reset = 0;
        #1000000000
        
        $finish;
    end
    
    always #1 clk_internal = ~clk_internal;
    
endmodule