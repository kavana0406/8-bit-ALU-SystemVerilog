module alu_8bit (
    input logic [7:0] A,
    input logic [7:0] B,
    input logic [3:0] opcode,

    output logic [7:0] result,
    output logic carry,
    output logic zero,
    output logic overflow
);

    logic [8:0] temp;

    always_comb begin

        // Default values
        result = 8'b0;
        carry = 1'b0;
        overflow = 1'b0;
        temp = 9'b0;

        case (opcode)

            // Addition
            4'b0000: begin
                temp = {1'b0, A} + {1'b0, B};
                result = temp[7:0];
                carry = temp[8];

                // Signed overflow
                overflow = (~(A[7] ^ B[7])) &
                           (result[7] ^ A[7]);

            end

            // Subtraction
            4'b0001: begin
                result = A - B;

                // Signed overflow
                overflow = (A[7] ^ B[7]) &
                           (result[7] ^ A[7]);

            end

            // AND
            4'b0010:
                result = A & B;

            // OR
            4'b0011:
                result = A | B;

            // XOR
            4'b0100:
                result = A ^ B;

            // A > B
            4'b0101:
                result = (A > B) ? 8'b00000001 : 8'b00000000;

            // A < B
            4'b0110:
                result = (A < B) ? 8'b00000001 : 8'b00000000;

            // A == B
            4'b0111:
                result = (A == B) ? 8'b00000001 : 8'b00000000;

            // Invalid opcode
            default: begin
                result = 8'b0;
                carry = 1'b0;
                overflow = 1'b0;
            end

        endcase

        // Zero flag
        zero = (result == 8'b0);

    end

endmodule
