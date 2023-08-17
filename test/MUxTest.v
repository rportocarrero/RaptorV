`timescale 1ns / 1ps

module MuxTest;

    reg select;
    reg [31:0] input0, input1;
    wire [31:0] output;
    
    // Instantiate the unit under test (UUT)
    Mux uut (
        .select(select),
        .input0(input0),
        .input1(input1),
        .output(output)
    );
    
    // Test process
    initial begin
        // Test case 1: select input 0
        input0 = 32'hDEADBEEF;
        input1 = 32'hCAFEBABE;
        select = 0;
        #10 assert(output == input0);
        
        // Test case 2: select input 1
        select = 1;
        #10 assert(output == input1);
        
        // Add more test cases here
        
        $finish; // End simulation
    end

endmodule
