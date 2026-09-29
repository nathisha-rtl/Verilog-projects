module asynchronous_down_counter_tb;

    reg clk;
    reg reset;
    wire [2:0] Q;

    asynchronous_down_counter uut(
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    always #5 clk = ~clk;

    initial begin

        $monitor("$time=%0t | reset=%b | clk=%b | Q=%b",
                 $time, reset, clk, Q);

        $dumpfile("asynchronous_down_counter.vcd");
        $dumpvars(0, asynchronous_down_counter_tb);

        clk = 0;
        reset = 1;

        #5;
        reset = 0;

        #83;
        reset = 1;

        #10;
        $finish;

    end

endmodule
