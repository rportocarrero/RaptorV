module SPI (
    input clk,
    input reset,
    input start,
    output reg miso,
    input mosi,
    output reg sclk,
    output reg cs
);

// Simplified SPI state machine
parameter IDLE = 2'b00, TRANSFER = 2'b01;
reg [1:0] state = IDLE;
reg [7:0] data_to_send = 8'h00;
reg [7:0] received_data = 8'h00;
integer i = 0;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= IDLE;
        data_to_send <= 8'h00;
        received_data <= 8'h00;
    end else begin
        case (state)
            IDLE: begin
                if (start) begin
                    state <= TRANSFER;
                    i <= 0;
                end
            end
            TRANSFER: begin
                sclk <= ~sclk;
                if (i < 8) begin
                    miso <= data_to_send[i];
                    received_data[i] <= mosi;
                    i <= i + 1;
                end else begin
                    state <= IDLE;
                end
            end
        endcase
    end
end

endmodule
