`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2018 03:52:11 PM
// Design Name: 
// Module Name: derivative
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module integral(
    input [7:0] error,
    input clk,
    output [11:0] i
    );
    
    parameter [3:0] co = 4'b0001;
    reg [7:0] prior = 0;
    wire [7:0] out;
    //wire [11:0] mult;
    c_addsub_0 a(error [7:0], prior [7:0], clk, 1'b1, out [7:0]);
    always @ (posedge clk)
    begin
       prior [7:0] <= out [7:0];
    end
    mult_gen_0 m(clk, co [3:0], out [7:0], i [11:0]);
    //assign i[11] = mult[11];
    //assign i[8:0] = mult[10:2];
endmodule
