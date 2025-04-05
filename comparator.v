module comparator (
    input [11:0] sine,
    input [11:0] triangle,
    output spwm
);
reg spwm_out;

initial begin
spwm_out=0;
end 
    always @(*) 
    begin
        spwm_out = (sine > triangle) ? 1 : 0;
    end
    assign spwm=spwm_out;
endmodule

