`timescale 1ns / 1ps

module ClockDividerTest;

    reg clk;
    wire clk_out;
    
    // Instantiate the unit under test (UUT)
    ClockDivider uut (
        .clk(clk),
        .clk_out(clk_out)
    );
    
    // Clock generator
    always begin
        #5 clk = ~clk;
    end
    
    // Test process
    initial begin
        #20;
        
        // Test case 1: Check the clock frequency division
        // Assuming the divider is by 2, so after 20 ns, 
        // the original clock has toggled 4 times,
        // so
