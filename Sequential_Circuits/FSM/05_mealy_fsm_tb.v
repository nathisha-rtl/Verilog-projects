// Testbench for Mealy FSM
module mealy_fsm_tb;

    reg clk;
    reg reset;
    reg input_signal;

    wire Y;

    // Instantiate DUT
    mealy_fsm uut(
        .clk(clk),
        .reset(reset),
        .input_signal(input_signal),
        .Y(Y)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Test inputs
    initial begin

        // Initial values
        clk = 0;
        reset = 1;
        input_signal = 0;

        // Reset
        #10;
        reset = 0;

        // S0 + 0 → S0, Y=0
        input_signal = 0;
        #10;

        // S0 + 1 → S1, Y=1
        input_signal = 1;
        #10;

        // S1 + 1 → S1, Y=1
        input_signal = 1;
        #10;

        // S1 + 0 → S0, Y=0
        input_signal = 0;
        #10;

        // S0 + 1 → S1, Y=1
        input_signal = 1;
        #10;

        $finish;
    end

    // Monitor
    initial begin
        $monitor("$time=%0t | clk=%b | reset=%b | input_signal=%b | Y=%b",
                 $time, clk, reset, input_signal, Y);
    end

    // VCD
    initial begin
        $dumpfile("mealy_fsm.vcd");
        $dumpvars(0, mealy_fsm_tb);
    end

endmodule
