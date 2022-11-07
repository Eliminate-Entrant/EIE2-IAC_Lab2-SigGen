module ram #(
    parameter ADD_WIDTH = 9,
                D_WIDTH = 8
)(
    input logic clk,
    input logic wr,
    input logic rd,
    input logic offset,
    input logic [ADD_WIDTH-1:0] wr_addr,
    input logic [ADD_WIDTH-1:0] rd_addr,
    input logic [D_WIDTH-1:0] mic_signal,
    output logic [D_WIDTH-1:0] delayed_signal
);

logic [D_WIDTH-1:0] ram_array [2**ADD_WIDTH-1:0];

always_ff @(posedge clk) begin
    if(wr)
        ram_array[wr_addr] <= mic_signal;
        
    if (rd)
        delayed_signal <= ram_array[rd_addr];
    
end
endmodule
