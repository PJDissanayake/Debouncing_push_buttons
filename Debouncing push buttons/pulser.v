module pulser(input in,output out);
    reg mem =0;
    assign out = mem & ~in;
    always @(posedge in) begin
            mem <= ~mem;
        end
 endmodule
