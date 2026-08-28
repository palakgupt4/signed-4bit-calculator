`timescale 1ns / 1ps

module signed_4bit_calculator (
    input  signed [3:0] A,
    input  signed [3:0] B,
    input        [1:0]  OP,

    output reg signed [7:0] RESULT,
    output reg              DIV_ZERO
);

    always @(*) begin

        RESULT  = 8'sd0;
        DIV_ZERO = 1'b0;

        case (OP)

            2'b00: begin
                // Addition
                RESULT = A + B;
            end

            2'b01: begin
                // Subtraction
                RESULT = A - B;
            end

            2'b10: begin
                // Multiplication
                RESULT = A * B;
            end

            2'b11: begin
                // Division
                if (B == 0) begin
                    RESULT  = 8'sd0;
                    DIV_ZERO = 1'b1;
                end
                else begin
                    RESULT = A / B;
                end
            end

        endcase
    end

endmodule