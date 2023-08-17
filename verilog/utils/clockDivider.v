module ClockDivider (
    input clk,
    output reg clk_out
);

parameter DIVIDE_BY = 4; // Change this as necessary
reg [31:0] counter = 0;

always @(posedge clk) begin
    counter <= counter + 1;
    if (counter == DIVIDE_BY - 1) begin
        clk_out <= ~clk_out;
        counter <= 0;
    end
end

endmodule
