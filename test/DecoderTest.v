`timescale 1ns / 1ps

module DecoderTest;

    reg clk;
    reg [31:0] instruction;
    wire [31:0] decoded;
    
    // Instantiate the unit under test (UUT)
    Decoder uut (
        .clk(clk),
        .instruction(instruction),
        .decoded(decoded)
    );
    
    // Clock generator
    always begin
        #5 clk = ~clk;
    end
    
    // Test process
    initial begin
        // Test case 1: Add instruction
        instruction = 32'h008500B3; // This is just an example instruction
        #10; // Wait for the decoder to process the instruction
        
        // Here you would assert that the decoded output is what you expect
        
        // Add more test cases here
        
        $finish; // End simulation
    end

endmodule
