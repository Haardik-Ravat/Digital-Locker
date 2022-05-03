`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2022 03:05:38 AM
// Design Name: 
// Module Name: PasswordSet
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


module PasswordSet( 
    input clk,
    input [3:0] A,
    input SetPasswordButton,
    input [15:0] OldPassword,
    output reg [15:0] NewPassword
);
reg [3:0] temp;
integer i=0,j=0;

always@(negedge clk)
    begin
    if(SetPasswordButton==1)
    begin
        assign temp=A;
        NewPassword[i]=temp[j];
        NewPassword[i+1]=temp[j+1];
        NewPassword[i+2]=temp[j+2];
        NewPassword[i+3]=temp[j+3];
        i=i+3;
    end
    end
 

endmodule
