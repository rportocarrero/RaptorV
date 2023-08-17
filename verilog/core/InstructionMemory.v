module InstructionMemory (
    input [31:0] address,
    output [31:0] instruction
);

// Example memory initialized with instructions
reg [31:0] memory[255:0];

assign instruction = memory[address];

endmodule
