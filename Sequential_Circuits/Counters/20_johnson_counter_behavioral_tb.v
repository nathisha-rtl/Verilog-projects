module johnson_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] Q;

    johnson_counter uut(
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        $dumpfile("johnson_counter.vcd");
        $dumpvars(0, johnson_counter_tb);

        $monitor("$time=%0t | clk=%b | reset=%b | Q=%b",
                 $time, clk, reset, Q);

        // Initial values
        clk = 0;
        reset = 1;

        // Reset
        #10;
        reset = 0;

        // Let counter run
        #80;

        // Reset again
        reset = 1;

        #10;
        $finish;

    end

endmodule
