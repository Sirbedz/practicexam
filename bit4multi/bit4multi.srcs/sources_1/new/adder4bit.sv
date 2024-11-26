
module adder4bit(
    a,
    b,
    cin,
    c,
    s
    );
    
    input [3:0]a;
    input [3:0]b;
    input cin;  
    output[3:0]s;
    output c;
    
    assign {c,s} = a+b+cin;
    
endmodule