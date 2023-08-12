module clk_div(input clk_in, output reg clk_out);
    reg[25:0] count=0;
    always @(posedge clk_in) begin
        count<=count+1;
    if(count==12500000)begin 
        count<=0;
        clk_out=~clk_out;
    end
    end
endmodule

