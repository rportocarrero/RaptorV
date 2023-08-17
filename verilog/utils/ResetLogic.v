module ResetLogic (
    input reset_in,
    input clk,
    output reg reset_out
);

// Simple synchronous reset logic
always @(posedge clk) begin
    reset_out <= reset_in;
end

endmodule
