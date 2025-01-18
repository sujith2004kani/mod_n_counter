module mod_n #(parameter N=60)(input wire clk,
                               input wire rst,
                               output reg [$clog2(N)-1:0] q);
always@(posedge clk or posedge rst)
begin
    if(rst | q==N-1)
        q<=0;
    else
        q<=q+1;
end
endmodule