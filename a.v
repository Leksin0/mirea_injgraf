`timescale 1ns / 1ps

module LM_DC_HEX_ASCII(
    input [3:0] HEX,
    output reg [7:0] ASCII
);
always@(*) begin
    case(HEX)
        4'h0: ASCII = 8'h30;
        4'h1: ASCII = 8'h31;
        4'h2: ASCII = 8'h32;
        4'h3: ASCII = 8'h33;
        4'h4: ASCII = 8'h34;
        4'h5: ASCII = 8'h35;
        4'h6: ASCII = 8'h36;
        4'h7: ASCII = 8'h37;
        4'h8: ASCII = 8'h38;
        4'h9: ASCII = 8'h39;
        4'hA: ASCII = 8'h41;
        4'hB: ASCII = 8'h42;
        4'hC: ASCII = 8'h43;
        4'hD: ASCII = 8'h44;
        4'hE: ASCII = 8'h45;
        4'hF: ASCII = 8'h46;

    endcase 
end
endmodule

module LM_DC_ASCII_HEX(  
    input [7:0] ASCII,
    output reg [3:0] HEX
);
always@(*) begin
    case(ASCII)
        8'h30: HEX = 4'h0;
        8'h31: HEX = 4'h1;
        // TODO
    endcase
end
endmodule

module ROM(
    input [6:0] ADDR,
    output [7:0] DATA
);
reg [7:0] ROM0 [127:0];
initial $readmemh("pzu.mem", ROM0);
assign DATA = ROM0[ADDR];
endmodule

module LM_UART(
    input RST, CLK, RXD, TX_RDY_T, [7:0] TX_DATA_R,
    output TXD, TX_RDY_R, RX_DATA_EN, [9:0] RX_DATA_T
);
// ...
endmodule

module divider(
    input CLK, RST,
    output CE
);
always@(posedge CLK or posedge RST) begin


end
endmodule


module name(
    input [1:0] a,
    output [1:0] b
);
// ...
endmodule