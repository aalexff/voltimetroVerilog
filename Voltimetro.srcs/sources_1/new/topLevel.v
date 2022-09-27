`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Instituto Tecnologico de Chihuahua
// Engineer: Alex Armando Figueroa Hernández
// 
// Create Date: 09/24/2022 04:22:53 PM
// Design Name: 
// Module Name: topLevel
// Project Name: Voltimetro
// Target Devices: Arty-7
// Tool Versions: VIvado 2019.1
// Description: 
// 
// Dependencies: 
//              xadc.v
// 
// Revision 0.1.1 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module topLevel(
    input wire RST, CLK_100, [1:0] J1A2,
    output wire CLK_60, [6:0]SEG7
    );
    
    reg [11:0] LEDS;
    reg [11:0]DIGIT;
    reg CLK_1;
    reg BCD;
    
    //instanciacion
    xadc xadcinst(
                  .RST(RST),
                  .CLK_100(CLK_100),
                  .J1A2(J1A2),
                  .LEDS(LEDS),
                  .DIGIT(DIGIT)
                  );
   
    freqdiv freqdivinst(
                    .Clk100MHz(CLK_100),
                    .Reset(RST),
                    .Clk60Hz(CLK_60),
                    .Clk1Hz (CLK_1)
                        );
 /*
    mux muxinst(
                 );
 */
    decoder decoderinst(
                    .BCD(BCD),
                    .SEG7(SEG7)
                        );
endmodule
