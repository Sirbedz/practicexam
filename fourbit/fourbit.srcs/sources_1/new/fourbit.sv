`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2024 03:09:44 PM
// Design Name: 
// Module Name: fourbit
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
module bit4_adder (
    input logic [3:0] A,       
    input logic [3:0] B,       
    input logic Cin,           
    output logic [3:0] Sum,    
    output logic Cout          
);
    assign {Cout, Sum} = A + B + Cin; 
endmodule

module bit8_adder (
    input logic [7:0] A,       
    input logic [7:0] B,       
    input logic Cin,           
    output logic [7:0] Sum,    
    output logic Cout          
);
    logic [3:0] Sum_lower, Sum_upper; 
    logic Cout_temp;                 
    bit4_adder lower_adder (
        .A(A[3:0]),
        .B(B[3:0]),
        .Cin(Cin),
        .Sum(Sum_lower),
        .Cout(Cout_temp)
    );

    bit4_adder upper_adder (
        .A(A[7:4]),
        .B(B[7:4]),
        .Cin(Cout_temp),
        .Sum(Sum_upper),
        .Cout(Cout)
    );

    assign Sum = {Sum_upper, Sum_lower};
endmodule

