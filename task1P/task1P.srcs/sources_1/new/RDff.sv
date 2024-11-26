



module RDff(input logic clk, input logic count , output logic q, output logic regout);

    logic neg;
    assign neg = ~count;
    always @(posedge clk)
    begin
    regout <= count;
    end 
    assign q= regout & neg;

endmodule
