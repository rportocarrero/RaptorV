`timescale 1ns / 1ps

module TopTest;

    reg clk;
    reg reset;
    // Define other inputs and outputs needed for the top module
    
    // Instantiate the unit under test (UUT)
    Top uut (
        .clk(clk),
        .reset(reset),
        // Connect other inputs and outputs
    );
    
    // Clock generator
    always begin
        #5 clk = ~clk;
    end
    
    // Test process
    initial begin
       
