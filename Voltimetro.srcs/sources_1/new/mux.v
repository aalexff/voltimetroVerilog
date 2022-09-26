`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2022 12:01:04 AM
// Design Name: 
// Module Name: mux
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


module mux(
            input wire Clk60Hz,
            input wire [3:0] BCDD,
            input wire [3:0] BCDU,
            output reg [3:0] BCD = 0,
            output reg Catodo
           );
                      
    initial begin 
        Catodo=0;
    end
    
    always@(posedge(Clk60Hz))
    begin
        Catodo=~Catodo;
        if(Catodo)
            BCD <= BCDD;
    else
        BCD <= BCDU;
    end
endmodule
