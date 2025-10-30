`timescale 1ns / 1ps

module datapath_test;
    
    // Inputs
    reg clk;
    reg rst;
    reg [31:0] inst;
    
    // Outputs
    wire [63:0] aluout;
    
    datapath_mux UUT(
        .clk(clk),
        .rst(rst),
        .inst(inst),
        .aluout(aluout)
    );
    
    // Clock generation
    always #15 clk = ~clk;
    
    // Test stimulus
    initial begin
        // Initialise signals
        clk = 0;
        rst = 0;
        inst = 0;
        
        // Reset the design
        #10 rst = 1;
        #50 rst = 0;
        
        // Wait 50ns for global reset to finish
        #50;
        
        inst=32'b00000000000001000000000000100011; // ADD X3, X1, X4 (output 3+0=3)
        // ISIZE =32, DSIZE=64 bit and write and read ADDR= 5 bit.
        // In this example opcode = 0, Rn = 1, Rm = 4 and Rd = 3. The 'shamt' filed is made zero.
        
        #100; inst=32'b00000000001000100000000000100100;//SUB X4, X1, X2 (output 3-2=1)
        
        #100; inst= 32'h00040023; // ADD X3, X1, X4 (output 3+1=4)
        #100; inst= 32'h00220024; // SUB X4, X1, X2 (output 3-2=1)
        #100; inst= 32'h00440027; // AND X7, X1, X4 (output 3&1=1)
        #100; inst= 32'h006200E8; // XOR X8, X7, X2 (output 1^2=1)
    end
    
endmodule
