`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2022 19:08:15
// Design Name: 
// Module Name: comp
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


module comp(
input [0:3]x1,
input [0:3]x2,
output reg cout
    );
always@(x1,x2)
begin
if(x1[0]==x2[0] && x1[1]==x2[1] && x1[3]==x2[3] && x1[2]==x2[2])    
    assign cout=1;
else 
    assign cout=0;
    
end
endmodule
