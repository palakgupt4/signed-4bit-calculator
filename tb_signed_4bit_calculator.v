`timescale 1ns / 1ps

module tb_signed_4bit_calculator;

    reg signed [3:0] A;
    reg signed [3:0] B;
    reg        [1:0] OP;

    wire signed [7:0] RESULT;
    wire              DIV_ZERO;

    // DUT
    signed_4bit_calculator uut (
        .A(A),
        .B(B),
        .OP(OP),
        .RESULT(RESULT),
        .DIV_ZERO(DIV_ZERO)
    );

    initial begin

        // Addition
        A = 4'sd5;
        B = 4'sd3;
        OP = 2'b00;
        #10;

        // Subtraction
        A = 4'sd5;
        B = 4'sd3;
        OP = 2'b01;
        #10;

        // Negative subtraction
        A = 4'sd3;
        B = 4'sd5;
        OP = 2'b01;
        #10;

        // Multiplication
        A = 4'sd3;
        B = -4'sd2;
        OP = 2'b10;
        #10;

        // Division
        A = 4'sd7;
        B = 4'sd2;
        OP = 2'b11;
        #10;

        // Negative division
        A = -4'sd7;
        B = 4'sd2;
        OP = 2'b11;
        #10;

        // Division by zero
        A = 4'sd7;
        B = 4'sd0;
        OP = 2'b11;
        #10;

        // Another addition with negative number
        A = -4'sd4;
        B = 4'sd2;
        OP = 2'b00;
        #10;

        $finish;
    end

endmodule