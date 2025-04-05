module clk_51200(
    input wire clk_in,    
    input wire reset,     
    output reg clk_out  // 204800 Hz  bcoz of more number of samples
);
    reg [7:0] counter;  // Adjusted bit width if necessary

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            if (counter == 245) begin  // Adjusted counter for 204800 Hz
                counter <= 0;         
                clk_out <= ~clk_out;  
            end else begin
                counter <= counter + 1; 
            end
        end
    end
endmodule
