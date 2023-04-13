`timescale 1ns / 1ps

module pause(
	input [9:0]x,y,
	input en,
	output disp
);
    
    wire dispp,dispa,dispu,disps,dispe;
    
	P letterp(
	   .x(x),
	   .y(y),
	   .x0(10'd304),
	   .y0(10'd280),
	   .en(en),
	   .disp(dispp)
   );
   
   A lettera(
	   .x(x),
	   .y(y),
	   .x0(10'd344),
	   .y0(10'd280),
	   .en(en),
	   .disp(dispa)
   );
   
   U letteru(
	   .x(x),
	   .y(y),
	   .x0(10'd384),
	   .y0(10'd280),
	   .en(en),
	   .disp(dispu)
   );
   
   S letters(
	   .x(x),
	   .y(y),
	   .x0(10'd424),
	   .y0(10'd280),
	   .en(en),
	   .disp(disps)
   );
   
   E lettere(
	   .x(x),
	   .y(y),
	   .x0(10'd464),
	   .y0(10'd280),
	   .en(en),
	   .disp(dispe)
   );
   
   assign disp = dispp|dispa|dispu|disps|dispe;
   
endmodule
