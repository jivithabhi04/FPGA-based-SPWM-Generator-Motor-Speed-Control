module amplitude_modulator (
    input [11:0] sine_wave_1, 
    input [11:0] sine_wave_2, 
    input [11:0] sine_wave_3,   
    input [7:0] amplitude,          
    output [11:0] modulated_wave_1,
    output [11:0] modulated_wave_2,
    output [11:0] modulated_wave_3
);
    wire [19:0] scaled_wave_1;
    wire [19:0] scaled_wave_2;
    wire [19:0] scaled_wave_3;
    
    assign scaled_wave_1 = sine_wave_1 * amplitude;
    assign scaled_wave_2 = sine_wave_2 * amplitude;
    assign scaled_wave_3 = sine_wave_3 * amplitude;
    
    assign modulated_wave_1 = scaled_wave_1[19:8];
    assign modulated_wave_2 = scaled_wave_2[19:8];
    assign modulated_wave_3 = scaled_wave_3[19:8];
endmodule
