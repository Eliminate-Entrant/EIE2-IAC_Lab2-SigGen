module counter #(
    parameter WIDTH = 8
)(
    // interface signals
    input logic clk, // clock
    input logic rst, //reset
    input logic en, //counter enable
    input logic [WIDTH-1:0] incr, //count output
    output logic [WIDTH-1:0] count,
    output logic [WIDTH-1:0] count2
);


always_ff @ (posedge clk) //positive edge clock

    if (rst) begin
        count <= 0;//incr;
        count2<=incr;

    end
    else if(en)begin
        count <= count + {{WIDTH-1{1'b0}},en};
          //{{WIDTH-1{1'b0}},en}; //clock addition
        count2 <= count + incr;
    end


endmodule
