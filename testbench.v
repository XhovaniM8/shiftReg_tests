`timescale 1ns / 1ps


module testbench;

// inputs 
 reg clk;
 reg reset;
 reg s_in;
 wire s_out;
 
// Unit under test (UUT)
shiftReg uut (
    .clk (clk),
    .reset (reset),
    .s_in (s_in),
    .s_out (s_out)
);

always #5 clk = ~clk;

initial
begin

    clk = 0; reset = 1;
    #10 
    reset = 0; s_in = 1;
    
    #10 s_in = 1;
    
    #10 s_in = 0;
    #10 s_in = 0;
    
    #10 s_in = 1;
    #10 s_in = 1;
    
    #10 s_in = 0;
    #10 s_in = 0;
    
end
endmodule
