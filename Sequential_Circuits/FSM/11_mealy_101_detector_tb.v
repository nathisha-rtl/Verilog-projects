module mealy_101_detector_tb;

    reg clk;
    reg reset;
    reg input_signal;

    wire Y;

    mealy_101_detector uut(
        .clk(clk),
        .reset(reset),
        .input_signal(input_signal),
        .Y(Y));

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        $dumpfile("mealy_101_detector.vcd");
        $dumpvars(0, mealy_101_detector_tb);

        $monitor("time=%0t | clk=%b | reset=%b | input=%b | Y=%b",
                 $time, clk, reset, input_signal, Y);

        clk = 0;
        reset = 1;
        input_signal = 0;

        #10;
        reset = 0;

        // Input sequence: 101
        #10 input_signal = 1;
        #10 input_signal = 0;
        #10 input_signal = 1;

        #10;

        $finish;
    end

endmodule
