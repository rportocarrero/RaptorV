`timescale 1ns / 1ps

module SPI_Test;  // Replace with TimerTest and UARTTest for other modules

    reg clk;
    // Define other inputs as registers
    // Define outputs as wires
    
    // Instantiate the unit under test (UUT)
    SPI uut (  // Replace with Timer and UART for other modules
        .clk(clk),
        // Connect other inputs and outputs
    );
    
    // Clock generator
    always begin
        #5 clk = ~clk;
    end
    
    // Test process
    initial begin
        // Write test cases here

        $finish; // End simulation
    end

endmodule
