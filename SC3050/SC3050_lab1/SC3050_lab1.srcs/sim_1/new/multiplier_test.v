`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2025 16:40:43
// Design Name: 
// Module Name: adder_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiplier_test;

    // Inputs
    reg [63:0] a;
    reg [63:0] b;
    
    // Outputs
    wire [63:0] out;
    
    // Instantiate the Unit Under Test (UUT)
    multiplier uut(.a(a),.b(b),.out(out));
    
    initial begin
        // Initiate the Inputs
        a = 0;
        b = 0;
        
        // Wait 100ns before global reset to finish
        #100;
        
        // Add stimulus here
        #200 a = 64'd1;
        #200 b = 64'd2;
    end

endmodule
