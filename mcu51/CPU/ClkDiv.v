/*--------------------------------------------------------------
    Name：任意奇偶分频器
    Function：实现根据传入参数的偶分频和奇分频
    Author：Milo
    Date：2021/9/30
    Version：1.0
--------------------------------------------------------------*/

module ClkDiv #(
    DIV_NUM
) (
    input           clk_in,
    input           rst_n,
    output          clk_out // 输出分频后的时钟
);
    reg [3:0] cnt_p, cnt_n;
    reg clk_p, clk_n, clk_o;

    // 根据DIV_NUM的数值进行分频
    always @(posedge clk_in, negedge rst_n) begin
        if (!rst_n) begin
            cnt_p <= 4'b0;
            cnt_n <= 4'b0;
            clk_p <= 1'b0;
            clk_n <= 1'b0;
            clk_o <= 1'b0;
        end
        else begin
            if (DIV_NUM % 2 == 0) begin // 偶数分频
                if (cnt_p == DIV_NUM / 2 - 1) begin
                    cnt_p <= 4'b0;
                    clk_o <= ~clk_o;
                end
                else begin
                    cnt_p <= cnt_p + 4'b1;
                end
            end
            else begin
                if (cnt_p == DIV_NUM - 1) begin
                    clk_p <= ~clk_p;
                    cnt_p <= 4'b0;
                end
                else if (cnt_p == (DIV_NUM - 1) / 2) begin
                    clk_p <= ~clk_p;
                    cnt_p <= cnt_p + 1'b1;
                end else begin
                    cnt_p <= cnt_p + 1'b1;
                end
            end
        end
    end

    always @(negedge clk_in, negedge rst_n) begin
        if (!rst_n) begin
            
        end
        else begin
                if (cnt_n == DIV_NUM - 1) begin
                    clk_n <= ~clk_n;
                    cnt_n <= 4'b0;
                end
                else if (cnt_n == (DIV_NUM - 1) / 2) begin
                    clk_n <= ~clk_n;
                    cnt_n <= cnt_n + 1'b1;
                end
                else begin
                    cnt_n <= cnt_n + 1'b1;
                end
            end
    end

    assign clk_out = (DIV_NUM % 2 == 1) ? clk_p | clk_n : clk_o;
    
endmodule