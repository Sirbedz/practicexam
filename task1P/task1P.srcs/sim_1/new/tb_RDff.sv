`timescale 1ns / 1ps
module tb_RDff;
    logic clk=0;         
    logic count;       
    logic q;           
    logic regout;      

  
    RDff dut (
        .clk(clk),
        .count(count),
        .q(q),
        .regout(regout)
    );

    always #5 clk = ~clk;

    initial begin

        #10 count = 1'b1;  
        #10 count = 1'b0;  
        #10 count = 1'b1;  
        #10 count = 1'b0;  

        
        #50 $finish;
    end
endmodule

