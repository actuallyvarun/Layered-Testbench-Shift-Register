module testbench;

    // Internal signals

    logic clk;

    logic reset;
    logic serial_in;

    logic reset_dut;
    logic serial_in_dut;

    logic [3:0] q;


    // Clock Generator

    clock_generator CLK (
        .clk(clk)
    );


    // Generator

    generator GEN (
        .reset(reset),
        .serial_in(serial_in)
    );


    // Driver

    driver DRV (
        .reset(reset),
        .serial_in(serial_in),

        .reset_dut(reset_dut),
        .serial_in_dut(serial_in_dut)
    );


    // Design Under Test

    shift_register DUT (
        .clk(clk),
        .reset(reset_dut),
        .serial_in(serial_in_dut),
        .q(q)
    );


    // Monitor

    monitor MON (
        .clk(clk),
        .reset(reset_dut),
        .serial_in(serial_in_dut),
        .q(q)
    );


    // Scoreboard

    scoreboard SB (
        .clk(clk),
        .reset(reset_dut),
        .serial_in(serial_in_dut),
        .q(q)
    );


    // Simulation Control

    initial begin

        #150;

        $display("--------------------------------");
        $display("SIMULATION COMPLETED");
        $display("--------------------------------");

        $finish;

    end

endmodule
