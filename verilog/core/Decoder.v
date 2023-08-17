module Decoder (
    input [31:0] instruction,
    output [6:0] opcode,
    output [4:0] rd,
    output [4:0] rs1,
    output [4:0] rs2,
    output [31:0] imm
);

assign opcode = instruction[6:0];
assign rd = instruction[11:7];
assign rs1 = instruction[19:15];
assign rs2 = instruction[24:20];

endmodule
