module monitor (
    input logic clk,
    input logic reset,
    input logic serial_in,
    input logic [3:0] q
);

    always @(posedge clk) begin

        #1;

        $display("MONITOR | Time=%0t | Reset=%b | Serial_in=%b | Output=%b",
                 $time, reset, serial_in, q);

    end

endmodule
