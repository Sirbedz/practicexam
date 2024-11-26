`timescale 1ns / 1ps


module detect1(
    input logic [7:0] R,
    output logic X
    
    );
    
    logic result;
    
    assign X = R [7] ^ R[6] ^R [5] ^ R[4] ^R [3] ^ R[2] ^ R [1] ^ R[0]  ;
    
endmodule
