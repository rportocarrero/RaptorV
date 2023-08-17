`timescale 1ns / 1ps

module PCTest;

    reg clk;
    reg reset;
    reg [31:0] input;
    wire [31:0] output;
    
    // Instantiate the unit under test (UUT)
    PC uut (
        .clk(clk),
        .reset(reset),
        .input(input),
        .output(output)
    );
    
    // Clock generator
    always begin
        #5 clk = ~clk;
    end
    
    // Test process
    initial begin
        reset = 1;
        input = 32'hDEADBEEF;
        #10 reset = 0;
        #10 assert(output == input); 
        
        // Add more test cases here
        
        $finish; // End simulation
    end

endmodule
