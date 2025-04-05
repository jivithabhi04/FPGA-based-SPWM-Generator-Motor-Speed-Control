module top_spwm(
input reset ,
input clk_int,
input sel,
output spwm_1,
output spwm_2,
output spwm_3,
output c_spwm_1,
output c_spwm_2,
output c_spwm_3,
output clk_t
//output [10:0] sin_out
//output [10:0] tri_out
);
assign c_spwm_1= ~(spwm_1);
assign c_spwm_2= ~(spwm_2);
assign c_spwm_3= ~(spwm_3);
wire a,b,c,f;
wire [11:0] e,i,j,k;


//assign sin_out=d;
//assign tri_out=e;

mux_2x1 MUX(
    .clk_1(a), 
    .clk_2(b), 
    .s(sel), 
    .y(c)
);

assign clk_t=f;

clk_51200 clk_51200hz(
    .clk_in(clk_int), 
    .reset(reset), 
    .clk_out(b)
);

clk_40960 clk_40960hz(
    .clk_in(clk_int), 
    .reset(reset), 
    .clk_out(a)
);

clk_50M_Hz clk_50Mhz(
   .clk_in(clk_int), 
   .reset(reset), 
   .clk_out(f)
); 

triangular_wave t_w(
    .clk_int(f), 
    .wave(e)
);

comparator comp_1(
    .sine(i), 
    .triangle(e), 
    .spwm(spwm_1)
);
comparator comp_2(
    .sine(j), 
    .triangle(e), 
    .spwm(spwm_2)
);
comparator comp_3(
    .sine(k), 
    .triangle(e), 
    .spwm(spwm_3)
);
LUT_method_1 S1(
    .data_out_1(i), 
    .Clk(c), 
    .reset(reset)
);

LUT_method_2 S2(
    .data_out_2(j),
    .Clk(c), 
    .reset(reset)
   );
   
   LUT_method_3 S3(
    .data_out_3(k),
    .Clk(c), 
    .reset(reset)
   );

endmodule