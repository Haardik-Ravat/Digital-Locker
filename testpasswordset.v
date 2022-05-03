`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2022 03:56:45 AM
// Design Name: 
// Module Name: testpasswordset
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


module testpasswordset();
reg [3:0] A;
wire [15:0] NewPassword;
reg clk;
reg SetPasswordButton;
wire [15:0]OldPassword=0;
PasswordSet PP(clk,A,SetPasswordButton,OldPassword,NewPassword);
always 
 #5 clk=~clk;
initial begin 
SetPasswordButton=0;
clk = 1;
#5 SetPasswordButton=1;
#10 A=1;
#10 A=2;
#10 A=3;
#10 A=4;
end
initial #60 $finish;

endmodule
