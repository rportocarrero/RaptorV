module Timer (
    input clk,
    input start,
    output reg done
);

reg [31:0] count = 32'h00000000;

always @(posedge clk) begin
    if (start) begin
        if (count == 32'hFFFFFFFF) begin
            done <= 1;
            count <= 32'h00000000;
        end else begin
            count <= count + 1;
        end
    end
end

endmodule
