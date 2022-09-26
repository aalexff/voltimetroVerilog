`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2022 12:18:22 AM
// Design Name: 
// Module Name: decoder
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


module decoder(
    input wire[3:0] BCD,
    output reg[6:0] SEG7
    );
    always@(BCD)
    begin
        case(BCD)
            //Catodo comun
            0: SEG7 = 7'h3F;   //0111111
            1: SEG7 = 7'h6;    //0000110
            2: SEG7 = 7'h5B;   //1011011
            3: SEG7 = 7'h4F;   //1001111
            4: SEG7 = 7'h66;   //1100110
            5: SEG7 = 7'h6D;   //1101101
            6: SEG7 = 7'h7D;   //1111101
            7: SEG7 = 7'h7;    //0000111
            8: SEG7 = 7'h7F;   //1111111
            9: SEG7 = 7'h6F;   //1101111
            default: SEG7 =  7'hz;
        endcase
    end
endmodule
