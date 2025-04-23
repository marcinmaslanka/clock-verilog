module clk_tb;
    wire clk;

    // Instantiate the clock module
    clock uut (.clk(clk));

    initial begin
        $dumpfile("clk_tb.vcd");
        $dumpvars(0, clk_tb);
        $monitor($time, " clk=%b", clk);
    end
endmodule
