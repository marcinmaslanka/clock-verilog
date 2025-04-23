`timescale 1ns/1ps  // Time unit = 1ns, time precision = 1ps

module clock(output reg clk);

    initial clk = 0;

    always #500 clk = ~clk;  // Toggle every 500 ns => 1 MHz

    initial #10000 $finish;  // Run long enough to see some cycles

endmodule
