module scoreboard (
    input logic clk,
    input logic reset,
    input logic serial_in,
    input logic [3:0] q
);

    logic [3:0] expected;

    integer passed;
    integer failed;

    initial begin
        expected = 4'b0000;
        passed = 0;
        failed = 0;
    end

    always @(posedge clk) begin

        if (reset)
            expected = 4'b0000;

        else
            expected = {expected[2:0], serial_in};

        #1;

        if (q === expected) begin

            $display("SCOREBOARD | PASS | Expected=%b | Actual=%b",
                     expected, q);

            passed = passed + 1;

        end

        else begin

            $display("SCOREBOARD | FAIL | Expected=%b | Actual=%b",
                     expected, q);

            failed = failed + 1;

        end

    end

endmodule
