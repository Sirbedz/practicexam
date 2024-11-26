`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 03:12:59 PM
// Design Name: 
// Module Name: tb_bitadder
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


module tb_bit8_adder;
    logic [7:0] A, B;          
    logic Cin;                 
    logic [7:0] Sum;           
    logic Cout;                

 
    bit8_adder uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

  
    initial begin
       
        A = 8'b00000001; B = 8'b00000001; Cin = 0; #10; 
        A = 8'b11110000; B = 8'b00001111; Cin = 1; #10; 
        A = 8'b10101010; B = 8'b01010101; Cin = 0; #10; 
        A = 8'b11111111; B = 8'b11111111; Cin = 1; #10; 

        
        #50 $finish;
    end
endmodule

