module sync_counter_tb;

    reg clk;
    reg reset;
    wire [2:0] Q;

    sync_counter uut(
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    // Clock
    always #5 clk = ~clk;

    initial begin

        $dumpfile("sync_counter.vcd");
        $dumpvars(0, sync_counter_tb);

        $monitor("$time=%0t | clk=%b | reset=%b | Q=%b",
                 $time, clk, reset, Q);

        clk = 0;
        reset = 1;

        #10;
        reset = 0;

        #80;

        reset = 1;

        #10;
        $finish;

    end

endmodule
