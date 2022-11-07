module counter #(
    parameter WIDTH = 8
)(
    // interface signals
    input logic clk, // clock
    input logic rst, //reset
    input logic en, //counter enable
    input logic [WIDTH-1:0] incr, //count output
    output logic [WIDTH-1:0] count
);


always_ff @ (posedge clk) //positive edge clock

    if (rst) count <= 0;//incr;
    else count <= count + incr;//{{WIDTH-1{1'b0}},en}; //clock addition


endmodule
