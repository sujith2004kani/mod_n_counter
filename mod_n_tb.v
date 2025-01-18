module mod_n_tb;
parameter N=60;
reg clk, rst;
wire [$clog2(N)-1:0] q;
mod_n uut(.clk(clk), .rst(rst), .q(q));
initial 
begin
    clk=0;
    forever #5 clk=~clk;
end
initial begin
        $monitor("Time: %0t | Reset: %b | Counter Output: %b", $time, rst, q);
        rst = 1; #25;
        rst = 0; #1000;
        $stop;
    end
endmodule