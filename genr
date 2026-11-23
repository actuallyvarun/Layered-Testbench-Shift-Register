module generator (
    output logic reset,
    output logic serial_in
);

    initial begin

        // Reset
        reset = 1;
        serial_in = 0;

        #20;

        // Test sequence
        reset = 0;

        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 1; #10;

        // Reset again
        reset = 1; #10;

        reset = 0;
        serial_in = 1; #10;
        serial_in = 1; #10;
        serial_in = 0; #10;
        serial_in = 0; #10;

    end

endmodule
