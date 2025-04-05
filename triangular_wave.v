module triangular_wave( 
    input clk_int,
    output  [11:0] wave 
);
    reg [11:0] wave_value; 
    reg direction;

    initial begin
        wave_value = 255;   
        direction = 0;      
    end

    always @(posedge clk_int) begin
        if (direction == 0) begin
            if (wave_value == 255+256)
                direction <= 1;    
            else
                wave_value <= wave_value + 1; 
        end else begin
            if (wave_value == 0)
                direction <= 0;    
            else
                wave_value <= wave_value - 1; 
        end
    end

    assign wave = wave_value;
endmodule
