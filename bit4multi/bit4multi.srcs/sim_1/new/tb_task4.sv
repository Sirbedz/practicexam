`timescale 1ns / 1ps

module tb_task3;
    logic [3:0]a;
    logic [3:0]b;
    logic cin;
    logic c;
    logic [7:0]p;

task4 aa(
    .a(a),
    .b(b),
    .cin(cin),
    .c(c),
    .p(p)
    );
    
    initial begin 
    cin=1'b0;
    a=4'b0000;
    b=4'b0000;#1

    cin=1'b0;
    a=4'b0001;
    b=4'b0010;#1
    
    cin=1'b0;
    a=4'b0111;
    b=4'b0011;#1
    
    cin=1'b0;
    a=4'b1111;
    b=4'b1111;#1
    $finish;
    end
    
endmodule