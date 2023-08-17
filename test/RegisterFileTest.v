`timescale 1ns / 1ps

module RegisterFileTest;

    reg clk;
    reg [4:0] read_address1, read_address2;
    reg [4:0] write_address;
    reg [31:0] write_data;
    reg write_enable;
    wire [31:0] read_data1, read_data2;
    
    // Instantiate the unit under test (UUT)
    RegisterFile uut (
        .clk(clk),
        .read_address1(read_address1),
        .read_address2(read_address2),
        .write_address(write_address),
        .write_data(write_data),
        .write_enable(write_enable),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );
    
    // Clock generator
    always begin
        #5 clk = ~clk;
    end
    
    // Test process
    initial begin
        // Test case 1: Write and read back data
        write_address = 5'd1;
        write_data = 32'hDEADBEEF;
        write_enable = 1;
        #10 write_enable = 0; // Stop writing
        read_address1 = write_address;
        #10 assert(read_data1 == write_data);
        
        // Add more test cases here
        
        $finish; // End simulation
    end

endmodule
