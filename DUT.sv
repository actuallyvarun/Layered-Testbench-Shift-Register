module shift_register (
    input logic clk,
    input logic reset,
    input logic serial_in,

    output logic [3:0] q
);

    always_ff @(posedge clk) begin

        if (reset)
            q <= 4'b0000;

        else
            q <= {q[2:0], serial_in};

    end

endmodule
