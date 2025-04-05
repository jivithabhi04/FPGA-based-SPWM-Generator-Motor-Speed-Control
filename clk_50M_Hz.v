module clk_50M_Hz(
    input wire clk_in,    // 100 MHz input clock
    input wire reset,     // Active-high reset
    output reg clk_out    // 10 MHz output clock
);
    reg [3:0] counter;    // 4-bit counter (0 to 9)

    always @(posedge clk_in or posedge reset) begin
        if (reset) begin
            counter <= 0;
            clk_out <= 0;
        end else begin
            if (counter == 4) begin  // Toggle after 5 cycles (1/2 of 10 cycles)
                counter <= 0;         
                clk_out <= ~clk_out;  
            end else begin
                counter <= counter + 1; 
            end
        end
    end
endmodule
