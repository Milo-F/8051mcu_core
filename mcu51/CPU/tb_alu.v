`timescale 1ns/1ps

module tb_alu;

    reg rst_n;
    reg [7:0] a_data;
    reg [7:0] b_data;
    reg c_in;
    reg [4:0] alu_op;
    wire [7:0] ans;
    wire c_out;

    ALU alu(
        .c_in(c_in),
        .rst_n(rst_n),
        .a_data(a_data),
        .b_data(b_data),
        .alu_op(alu_op),
        .ans(ans),
        .c_out(c_out)
    );

    initial begin
        rst_n = 0;
        forever begin
            #100 rst_n = ~rst_n;
        end
    end

    initial begin
        forever begin
            #5 cal(0);
            #5 cal(1);
            #5 cal(2);
            #5 cal(3);
            #5 cal(4);
            #5 cal(5);
            #5 cal(6);
            #5 cal(7);
            #5 cal(8);
            #5 cal(9);
            #5 cal(10);
            #5 cal(11);
            #5 cal(12);
            #5 cal(13);
            #5 cal(14);
            #5 cal(15);
            #5 cal(16);
            #5 cal(17);
            #5 cal(18);
        end
    end
    
    task cal(input reg[4:0] op);
        begin
            alu_op = op;
            case(op) 
                0: begin
                    a_data = 8'h45;
                    b_data = 8'h26;
                end
                1: begin
                    a_data = 8'h75;
                    b_data = 8'h78;
                    c_in = 1'b1;
                end
                2: begin
                    a_data = 8'h12;
                end
                3: begin
                    a_data = 8'h32;
                end
                4: begin
                    a_data = 8'h57;
                    b_data = 8'h12;
                    c_in = 1'b0;
                end
                5: begin
                    a_data = 8'h25;
                    b_data = 8'h04;
                end
                6: begin
                    a_data = 8'h90;
                    b_data = 8'h0a;
                end
                7: begin
                end
                8: begin
                    a_data = 8'b1111_0000;
                    b_data = 8'b1010_1010;
                end
                9: begin
                    a_data = 8'b1111_0000;
                    b_data = 8'b1010_1010;
                end
                10: begin
                    a_data = 8'b1111_0000;
                    b_data = 8'b1010_1010;
                end
                11: begin
                end
                12: begin
                end
                13: begin
                    a_data = 8'b1111_0000;
                end
                14: begin
                    a_data = 8'b1011_0010;
                end
                15: begin
                    a_data = 8'b1011_0010;
                    c_in = 1'b1;
                end
                16: begin
                    a_data = 8'b1011_0010;
                end
                17: begin
                    a_data = 8'b1011_0010;
                    c_in = 1'b1;
                end
                18: begin
                    a_data = 8'b1011_0010;
                end
                default: begin
                end
            endcase
        end
    endtask

endmodule
