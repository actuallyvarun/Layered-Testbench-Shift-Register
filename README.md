# Layered Testbench for 4-bit Shift Register

## About the project
This project is based on designing a 4-bit shift register and testing its functionality using a layered testbench in SystemVerilog.

The shift register shifts the input data by one bit on every positive edge of the clock. When reset is enabled, the output is cleared to 0.

## Testbench Blocks
The testbench is divided into different blocks:

- **Clock Generator:** Generates the clock signal for the circuit.
- **Generator:** Generates the input signals and test patterns.
- **Driver:** Passes the generated inputs to the DUT.
- **DUT:** The 4-bit shift register being tested.
- **Monitor:** Observes the input and output signals.
- **Scoreboard:** Checks whether the actual output matches the expected output.

## Tools Used
- SystemVerilog
- GitHub

## Objective
The main objective of this project is to understand how a layered testbench works and how different blocks are used to verify a sequential circuit.
