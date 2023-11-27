module seq_counter(clk,rst,count);
input clk,rst;
output reg [2:0] count;
reg [2:0] temp;
always@(posedge clk)
begin
    if(rst)
    count<=3'b0;
    else
    begin
    count <= count+1;
        case(count)
        3'b000:temp<=3'b011;
        3'b011:temp<=3'b101;
        3'b101:temp<=3'b110;
        3'b110:temp<=3'b000;
        endcase
    end
end
endmodule