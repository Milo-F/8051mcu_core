Uart #(
    FIFO_DEPTH              =        16,
    FIFO_WIDTH              =        8,
    ADDR_WIDTH              =        4
) Uart_ins (
    .fifo_w_clk(fifo_w_clk),
    .tx_clk(tx_clk),
    .rst_n(rst_n),
    .fifo_w_en(fifo_w_en),
    .fifo_w_data(fifo_w_data),
    .rxd_int_in(rxd_int_in),
    .rxd(rxd),
    .is_full(is_full),
    .rxd_int(rxd_int),
    .r_data(r_data),
    .txd(txd)
);