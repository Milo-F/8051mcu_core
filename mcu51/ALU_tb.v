`timescale 1ns/1ps

module ALU_tb;

    reg clk;
    reg rst_n;
    reg [7:0] a_data;
    reg [7:0] b_data;
    reg c_in;
    reg [4:0] alu_op;
    wire [7:0] ans;
    wire c_out;

    ALU alu(
        .clk(clk),
        .rst_n(rst_n),
        .a_data(a_data),
        .b_data(b_data),
        .alu_op(alu_op),
        .ans(ans),
        .c_out(c_out)
    );

    initial begin
        clk = 0;
        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        # 10 rst_n = 0;
        forever begin
            #200 rst_n = ~rst_n;
        end
    end

    initial begin
        cal(5'h0);
    end
    
    task cal(input reg[4:0] op);
        case(op) 
            5'h0: begin

            end
            default: begin
              
            end
        endcase
    endtask

endmodule