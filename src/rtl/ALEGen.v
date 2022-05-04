/*---------------------------------------------------------
 Name ALE信号发生器
 Function 产生ALE信号
 Author Milo
 Data 2021/10/8
 Version 1.0
 ----------------------------------------------------------*/

module ALEGen (
    input                                                   clk,
    input                                                   rst_n,
    output      reg                                         ALE
);
    reg                     [2:0]                           cnt;
    
    always @(posedge clk, negedge rst_n) begin
        if (!rst_n) begin
            ALE <= 1'b1;
            cnt <= 3'b0;
        end
        else begin
            if (cnt == 1) begin
                ALE <= ~ALE;
                cnt <= cnt + 1;
            end
            else begin
                if (cnt == 5) begin
                    ALE <= ~ALE;
                    cnt <= 3'b0;
                end
                else begin
                    cnt <= cnt + 1'b1;
                end
            end
        end
    end
endmodule
