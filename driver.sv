module driver (
    input logic reset,
    input logic serial_in,

    output logic reset_dut,
    output logic serial_in_dut
);

    always_comb begin
        reset_dut = reset;
        serial_in_dut = serial_in;
    end

endmodule
