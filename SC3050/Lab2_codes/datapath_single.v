`include"define.v"
`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////////
//// Company: NTU
//// Engineer: Dr. Smitha K G
////////////////////////////////////////////////////////////////////////////////////

module datapath_mux (
	// inputs
	clk,
	rst,
	inst,

	//outputs
	aluout
);

// inputs
input		  clk;
input		  rst;
input  [`ISIZE-1:0] inst;


// outputs
output  [`DSIZE-1:0] aluout;

wire [2:0]	aluop;

wire wen;
wire [`DSIZE-1:0] rdata1;
wire [`DSIZE-1:0] rdata2;





//Here you need to instantiate the control , Alu ,and regfile. 
//The codes below are not given to students.

//-insert your code here

control C0(
    .inst_cntrl(inst[31:21]), // 11 bits instruction segment
    .wen_cntrl(wen),          // Write enable control signal
    .aluop_cntrl(aluop)       // ALU operation code
);

regfile RF0(
    .clk(clk),                // 1 bit clk
    .rst(rst),                // 1 bit rst
    .wen(wen),                // write enable
    .raddr1(inst[9:5]),       // read address 1 (connected to Rn)
    .raddr2(inst[20:16]),     // read address 2 (connected to Rm)
    .waddr(inst[4:0]),        // write address  (connected to Rd)
    .wdata(aluout),           // write data from ALU
    .rdata1(rdata1),          // data from read address 1
    .rdata2(rdata2)           // data from read address 2
);

alu ALU0(
    .a(rdata1),               // First operand  (read from register file)
    .b(rdata2),               // Second operand (read from register file)
    .op(aluop),               // ALU operation control signal
    .out(aluout)              // ALU output (to be written to the register file)
);


endmodule // end of datapath module

