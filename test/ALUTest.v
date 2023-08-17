`timescale 1ns / 1ps

module ALUTest;

    reg clk;
    reg [31:0] a;
    reg [31:0] b;
    reg [6:0] operation;
    wire [31:0] result;
    
    // Instantiate the unit under test (UUT)
    ALU uut (
        .clk(clk),
        .a(a),
        .b(b),
        .operation(operation),
        .result(result)
    );
    
    // Clock generator
    always begin
        #5 clk = ~clk;
    end
    
    // Test process
    initial begin
        // Test case 1: Add
        a = 32'd10;
        b = 32'd20;
        operation = 7'd0; // Assuming 0 is the opcode for add
        #10 assert(result == 32'd30);
        
        // Add more test cases here
        
        $finish; // End simulation
    end

endmodule
