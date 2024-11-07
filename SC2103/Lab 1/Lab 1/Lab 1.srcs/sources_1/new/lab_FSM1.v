`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2024 12:33:01
// Design Name: 
// Module Name: lab_FSM1
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
		 output reg [1:0] st, insert_coin, money_return, dispense);

reg[1:0] nst;

parameter INIT = 2'b00, S50C = 2'b01, VEND = 2'b10, RETURN = 2'b11;



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
				insert_coin=1;
				money_return=0;
				dispense=0;
		      	if(fifty)
				nst = S50C;
		     	if(dollar)
				nst = VEND;
		end
		S50C: begin
		        insert_coin=1;
				money_return=0;
				dispense=0;
			if(fifty)
			    nst = VEND;
			if(cancel)
				nst = RETURN;
		    if(dollar)
				nst = RETURN;
		end
		VEND: begin
			    insert_coin=0;
				money_return=0;
				dispense=1;
				nst = INIT;
		end
		RETURN: begin
		        insert_coin=0;
				money_return=1;
				dispense=0;
			    nst = INIT;
		end

	endcase
end
endmodule
