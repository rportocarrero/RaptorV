`timescale 1ns / 1ps

module ResetLogicTest;

    reg clk;
    reg reset_in;
    wire reset_out;
    
    // Instantiate the unit under test (UUT)
    ResetLogic uut (
        .clk(clk),
        .reset_in(reset_in),
        .reset_out(reset_out)
    );
    
    // Clock generator
    always begin
        #5 clk = ~clk;
    end
    
    // Test process
    initial begin
        reset_in = 1;
        #10 assert(reset_out == 1);
        reset_in = 0;
        #10 assert(reset_out == 0);
        
        // Add more test cases here
        
        $finish; // End simulation
    end

endmodule
