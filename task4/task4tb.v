module tb_iiitb_rv32i_v2;

// Testbench Signals
reg clk;
reg RN;
wire [31:0] NPC;
wire [31:0] WB_OUT;

// Instantiate the module under test
iiitb_rv32i_v2 uut (
    .clk(clk),
    .RN(RN),
    .NPC(NPC),
    .WB_OUT(WB_OUT)
);

// Clock Generation
always #5 clk = ~clk;  // Generate a clock with a period of 10 units

initial begin
    // Initialize Signals
    clk = 0;
    RN = 1;
    
    // Wait for global reset to finish
    #10;
    RN = 0;
    
    // Wait some time and then check outputs
    #100;
    
    // Simulate some instructions
    #10 RN = 1;
    #10 RN = 0;
    
    // Wait for the execution to complete
    #200;
    
    // End of simulation
    $stop;
end

// Monitor Outputs
initial begin
    $monitor("At time %t, NPC = %h, WB_OUT = %h", $time, NPC, WB_OUT);
end

endmodule
