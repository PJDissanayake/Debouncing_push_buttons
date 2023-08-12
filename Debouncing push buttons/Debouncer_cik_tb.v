`timescale 1ns / 1ps
module debounce_tb;
  reg pb;
  wire sig_out;
  reg H_clk = 0;
  debounce debounce_inst (
    .pb(pb),
    .Hclk(H_clk),
    .sig_out(sig_out)  
  );
  always #5 H_clk = ~H_clk;
  
    initial begin
    pb = 0;
    #20;  
    pb = 1;
    #20;  
    pb = 1;
    #20;  
    pb = 0;
    #50; 
    pb = 1;
    #20;  
    
    $finish;
  end
endmodule