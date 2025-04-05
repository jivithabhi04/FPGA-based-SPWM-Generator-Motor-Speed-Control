module v_by_f_const(
input sel,
output [7:0] out_ma
);

reg [15:0] ma_rom [1:0];

initial begin
ma_rom[0] = 8'd160;
ma_rom[1] = 8'd200;
end

assign out_ma = (sel) ? (ma_rom[1]) : (ma_rom[0]);
endmodule
