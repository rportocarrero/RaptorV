module ALU (
    input [31:0] a,
    input [31:0] b,
    input [2:0] operation,
    output reg [31:0] result
);

always @(*) begin
    case (operation)
        3'b000: result = a + b;          // Addition
        3'b001: result = a - b;          // Subtraction
        3'b010: result = a & b;          // AND
        3'b011: result = a | b;          // OR
        3'b100: result = a ^ b;          // XOR
        // ... Other operations
    endcase
end

endmodule
