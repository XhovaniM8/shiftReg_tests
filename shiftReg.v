`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Engineer: Xhovani Mali
// 
// Create Date: 06/14/2022 01:23:29 PM
// Module Name: shiftReg
// Project Name: shiftReg_tests
// Target Devices: Arty S7-25
// Description: Testing out shift registers in verilog for implementation of Lenovo
//              SPI Write Cycles
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//////////////////////////////////////////////////////////////////////////////////


module shiftReg
#(parameter N=8)

    (
    input wire clk, reset,
    input wire s_in,
    input wire s_out
    );

// signal delclaration
    reg [N-1:0] r_reg;
    wire [N-1:0] r_next;

// register  
always @(posedge clk, posedge reset)
    if (reset)
        r_reg <= 0;
    else
        r_reg <= r_next;
        
// next - state logic  
    assign r_next = {s_in, r_reg[N-1:1]};

// output logic
    assign s_out = r_reg[0];
 
endmodule
