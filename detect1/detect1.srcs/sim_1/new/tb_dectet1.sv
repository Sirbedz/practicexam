`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 02:58:57 PM
// Design Name: 
// Module Name: tb_dectet1
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


module tb_dectet1;
    logic [7:0] R;
    logic X;

    
detect1 d1(.R(R), .X(X));
 
    initial begin
    R= 8'b101001010; #5
    R= 8'b101011010; #5
    R= 8'b101011010; #5
    R= 8'b101011110; #5
    $finish;
    end
    endmodule
