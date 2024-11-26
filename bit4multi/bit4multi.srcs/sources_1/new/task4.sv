`timescale 1ns / 1ps

module task4(
    a,
    b,
    cin,
    c,
    p
    );
    
    input [3:0]a;
    input [3:0]b;  
    input cin;
    output[7:0]p;
    output c;
    
    logic w1,w2,w3,w4,w5,w6,w7,w8;
    logic z1,z2,z3,z4,z5,z6,z7,z8,z9;
    logic x1,x2,x3,x4,x5,x6,x7,x8,x9;
    logic y1,y2,y3,y4,y5;
    
    assign w1 = a[0]&b[0];
    assign w2 = a[1]&b[0];
    assign w3 = a[2]&b[0];
    assign w4 = a[3]&b[0];
    
    assign w5 = a[0]&b[1];
    assign w6 = a[1]&b[1];
    assign w7 = a[2]&b[1];
    assign w8 = a[3]&b[1];
    
    assign z6 = a[0]&b[2];
    assign z7 = a[1]&b[2];
    assign z8 = a[2]&b[2];
    assign z9 = a[3]&b[2];
    
    assign x6 = a[0]&b[3];
    assign x7 = a[1]&b[3];
    assign x8 = a[2]&b[3];
    assign x9 = a[3]&b[3];
    
    
    adder4bit a1(
    .a({w8,w7,w6,w5}),
    .b({1'b0,w4,w3,w2}),
    .cin(1'b0),
    .c(z5),
    .s({z4,z3,z2,z1})
    );
    
    adder4bit a2(
    .a({z9,z8,z7,z6}),
    .b({z5,z4,z3,z2}),
    .cin(1'b0),
    .c(x5),
    .s({x4,x3,x2,x1})
    );
    
    adder4bit a3(
    .a({x9,x8,x7,x6}),
    .b({x5,x4,x3,x2}),
    .cin(1'b0),
    .c(y5),
    .s({y4,y3,y2,y1})
    );
    assign c = y5;
    assign p = {y5,y4,y3,y2,y1,x1,z1,w1};
    
endmodule