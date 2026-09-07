module sync_up_counter_tb;

reg clk;
reg reset;
wire [3:0] Q;

sync_up_counter DUT (
    .clk(clk),
    .reset(reset),
    .Q(Q)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("sync_up_counter.vcd");
    $dumpvars(0, sync_up_counter_tb);

    $monitor("time=%0t | clk=%b | reset=%b | Q=%b",
             $time, clk, reset, Q);

    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #100;
    reset = 1;

    #10;
    $finish;

end

endmodul
