/*
 dsadasasd
 dsadasd
 */

module UartFiFo #(
    DATA_WIDTH              =        8,                                 // cool
    FIFO_DEPTH              =        16,
    ADDR_WIDTH              =        4
) (
    input                                                   clk,
    input                                                   rst_n,      //dsad
    input       wire        [ DATA_WIDTH - 1 : 0 ]          w_data,     //dsada
    output      reg         [ DATA_WIDTH - 1 : 0 ]          reg_data
);
    reg [ 7:0 ] dasd;
    wire ad;
    reg [ 15:0 ] da;
    reg dsa;
    always @( posedge clk ) begin
        if ( a == ( conditions / 2 ) - 1 ) begin
            if ( a == ( conditions / 2 ) - 1 ) begin
                clk_p <= ~clk_p;
                cnt_p <= cnt_p + 1'b1;
            end
        end
        else begin
            
            if ( cnt_p == ( div_num - 1 ) / 2 ) begin //
                clk_p <= ~clk_p;
                cnt_p <= cnt_p + 1'b1;
            end
            else if ( dsad ) begin
                aaa;
            end
            else begin
                
            end
        end
    end
    
    
    fifo_ram #(
        .DATA_WIDTH(DATA_WIDTH),              //dsadas
        .RAM_DEPTH(FIFO_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) fifo_ram_ins (
        .clk(clk),
        .rst_n(rst_n),
        .r_en(r_en),
        .r_addr(r_ptr[ ADDR_WIDTH - 1 : 0 ]),
        .r_data(r_data),
        .w_en(w_en),
        .w_addr(w_ptr[ ADDR_WIDTH - 1 : 0 ]),
        .w_data(w_data)
    );
    
    fifo_ram #(
        .DATA_WIDTH(DATA_WIDTH),              //dsadas
        .RAM_DEPTH(FIFO_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) fifo_ram_ins (
        .clk(clk),
        .rst_n(rst_n),
        .r_en(r_en),
        .r_addr(r_ptr[ ADDR_WIDTH - 1 : 0 ]),
        .r_data(r_data),
        .w_en(w_en),
        .w_addr(w_ptr[ ADDR_WIDTH - 1 : 0 ]),
        .w_data(w_data)
    );
    
    fifo_ram #(
        .DATA_WIDTH(DATA_WIDTH),              //dsadas
        .RAM_DEPTH(FIFO_DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) fifo_ram_ins (
        .clk(clk),
        .rst_n(rst_n),
        .r_en(r_en),
        .r_addr(r_ptr[ ADDR_WIDTH - 1 : 0 ]),
        .r_data(r_data),
        .w_en(w_en),
        .w_addr(w_ptr[ ADDR_WIDTH - 1 : 0 ]),
        .w_data(w_data)
    );
    
    fifo_ram fifo_ram_ins (
        .clk(clk),
        .rst_n(rst_n),
        .r_en(r_en),
        .r_addr(r_ptr[ ADDR_WIDTH - 1 : 0 ]),
        .r_data(r_data),
        .w_en(w_en),
        .w_addr(w_ptr[ ADDR_WIDTH - 1 : 0 ]),
        .w_data(w_data)
    );
endmodule
