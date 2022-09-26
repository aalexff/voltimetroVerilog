`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2022 12:04:01 AM
// Design Name: 
// Module Name: freqDiv
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


module freqDiv(
                input wire Clk100MHz,
                input wire Reset,
                output reg Clk60Hz,
                output reg Clk1Hz
    );
    
    integer cuenta = 0;
    integer cuenta2 = 0;
    
    always@(posedge(Clk100MHz),posedge(Reset))
    begin
        if(Reset)
            cuenta = 0;
        else
        begin
            if(cuenta < 50000000)
                cuenta <= cuenta + 1;
            else
            begin
                cuenta = 0;
                Clk1Hz = ~Clk1Hz;
            end
            if(cuenta2 < 100000)
                cuenta2 <= cuenta2 + 1;
            else
            begin
                cuenta2 <= 0;
                Clk60Hz = ~Clk60Hz;
            end
        end
    end
    
endmodule
