module UART (
    input clk,
    input reset,
    input start,
    output reg tx,
    input rx,
    output reg done
);

// Simplified UART state machine
parameter IDLE = 2'b00, TRANSFER = 2'b01;
reg [1:0] state = IDLE;
reg [7:0] data_to_send = 8'h00;
integer i = 0;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= IDLE;
        data_to_send <= 8'h00;
    end else begin
        case (state)
            IDLE: begin
                if (start) begin
                    state <= TRANSFER;
                    i <= 0;
                end
            end
            TRANSFER: begin
                if (i < 8) begin
                    tx <= data_to_send[i];
                    i <= i + 1;
                end else begin
                    state <= IDLE;
                    done <= 1;
                end
            end
        endcase
    end
end

endmodule
