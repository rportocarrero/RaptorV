module DataMemory (
    input [31:0] address,
    input [31:0] write_data,
    input write_enable,
    input read_enable,
    output reg [31:0] read_data
);

reg [31:0] memory[255:0];

always @(posedge write_enable) begin
    memory[address] <= write_data;
end

always @(posedge read_enable) begin
    read_data <= memory[address];
end

endmodule
