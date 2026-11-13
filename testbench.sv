module testbench;

    logic [7:0] A;
    logic [7:0] B;
    logic [3:0] opcode;

    logic [7:0] result;
    logic carry;
    logic zero;
    logic overflow;

    // Connect testbench to ALU
    alu_8bit DUT (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result),
        .carry(carry),
        .zero(zero),
        .overflow(overflow)
    );

    initial begin

        // Test 1: Addition
        A = 8'd10;
        B = 8'd20;
        opcode = 4'b0000;

        #10;

        $display("Test 1: Addition");
        $display("A=%0d B=%0d Result=%0d Carry=%b Zero=%b Overflow=%b",
                 A, B, result, carry, zero, overflow);

        // Test 2: Subtraction
        A = 8'd30;
        B = 8'd10;
        opcode = 4'b0001;

        #10;

        $display("Test 2: Subtraction");
        $display("A=%0d B=%0d Result=%0d Carry=%b Zero=%b Overflow=%b",
                 A, B, result, carry, zero, overflow);

        // Test 3: AND
        A = 8'b10101010;
        B = 8'b11001100;
        opcode = 4'b0010;

        #10;

        $display("Test 3: AND");
        $display("A=%b B=%b Result=%b",
                 A, B, result);

        // Test 4: OR
        opcode = 4'b0011;

        #10;

        $display("Test 4: OR");
        $display("A=%b B=%b Result=%b",
                 A, B, result);

        // Test 5: XOR
        opcode = 4'b0100;

        #10;

        $display("Test 5: XOR");
        $display("A=%b B=%b Result=%b",
                 A, B, result);

        // Test 6: Greater than
        A = 8'd50;
        B = 8'd20;
        opcode = 4'b0101;

        #10;

        $display("Test 6: A > B");
        $display("A=%0d B=%0d Result=%0d",
                 A, B, result);

        // Test 7: Less than
        A = 8'd10;
        B = 8'd20;
        opcode = 4'b0110;

        #10;

        $display("Test 7: A < B");
        $display("A=%0d B=%0d Result=%0d",
                 A, B, result);

        // Test 8: Equal
        A = 8'd20;
        B = 8'd20;
        opcode = 4'b0111;

        #10;

        $display("Test 8: A == B");
        $display("A=%0d B=%0d Result=%0d",
                 A, B, result);

        $finish;

    end

endmodule
