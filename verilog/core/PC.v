module PC (
    input [31:0] pc_in,
    input enable,
    input reset,
    output reg [31:0] pc_out
);

always @(posedge enable or posedge reset) begin
    if (reset) begin
        pc_out <= 32'b0;
    end else begin
        pc_out <= pc_in;
    end
end

endmodule
