`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2022 18:51:25
// Design Name: 
// Module Name: CheckPsd
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


module CheckPsd(
input [0:15]x,
input [0:15]psd,
output reg ledr,
output reg ledg,
input clk
);
wire [0:3]a;
wire [0:3]b;
wire [0:3]c;
wire [0:3]d;
wire [0:3]a1;
wire [0:3]b1;
wire [0:3]c1;
wire [0:3]d1;
wire out1,out2,out3,out4;


assign a=x[0:3];
assign b=x[4:7];
assign c=x[8:11];
assign d=x[12:15];

assign a1=psd[0:3];
assign b1=psd[4:7];
assign c1=psd[8:11];
assign d1=psd[12:15];

comp co1(a,a1,out1);
comp co2(b,b1,out2);
comp co3(c,c1,out3);
comp co4(d,d1,out4);

always @(clk)
begin 
    if(out1==1 && out2==1 && out3==1 && out4==1)
    begin
    assign ledg=1;
    assign ledr=0;
    end
    else
    begin
    assign ledg=0;
    assign ledr=1;
end
end

endmodule
