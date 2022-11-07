module sinegen #(
    parameter A_WIDTH = 8,
    parameter D_WIDTH = 8
)(
    input logic clk,
    input logic rst,
    input logic en,
    input logic [D_WIDTH-1:0] incr,
    output logic [D_WIDTH-1:0] dout,
    output logic [D_WIDTH-1:0] dout2
);
logic [A_WIDTH-1:0] address;
logic [A_WIDTH-1:0] address2;

counter addrCounter (
    .clk (clk),
    .rst(rst),
    .incr (incr),
    .en(en),
    .count (address),
    .count2 (address2)
);

rom sineRom(
    .clk (clk),
    .addr (address),
    .addr2 (address2),
    .dout (dout),
    .dout2 (dout2)
);

endmodule
