`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2024 12:13:05
// Design Name: 
// Module Name: lab1_FSM
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


module lab1_FSM (input clk, rst, fifty, dollar, cancel,
		 output st, insert_coin, money_return, dispense);

reg[1:0] nst, st;

parameter INIT = 2'b00, S50C = 2'b01, VEND = 2'b10, RETURN = 2'b11;
assign insert_coin = (st==INIT)|(st==S50C);
assign money_return = (st==RETURN);
assign dispense = (st==VEND);


always@(posedge clk) begin
	if (rst)
		st <= INIT; //initial state
	else
		st <= nst; //assigning next state to current state
	end

always@* begin
	nst = st;
	case (st)
		INIT: begin
			if(rst)
				nst = INIT;
		      	if(fifty)
				nst = S50C;
		     	if(dollar)
				nst = VEND;
		end
		S50C: begin
			if(cancel)
				nst = RETURN;
		      	if(dollar)
				nst = RETURN;
		end
		VEND: begin
			if(rst)
				nst = INIT;
		end
		RETURN: begin
			nst = INIT;
		end

	endcase
end
endmodule
