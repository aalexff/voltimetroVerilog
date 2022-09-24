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
    input wire reset, clk, [1:0] j1a2,
    output wire [11:0] leds, cat
    );
    
    //instanciacion
    xadc xadcinst(
                  .reset(reset),
                  .clk(clk),
                  .j1a2(j1a2)
                  );
endmodule
