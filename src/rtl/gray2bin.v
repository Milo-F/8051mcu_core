/*----------------------------------------
 *    File Name: rtl/gray2bin.v
 *    function: 格雷码转化为二进制码
 *    author: Milo
 *    Data: 2022-03-22
 *    Version: 1.0
----------------------------------------*/

module gray2bin #(
    BIT_WIDTH               =        4
)(
    input                   [BIT_WIDTH-1:0]                 gray_data,
    output                  [BIT_WIDTH-1:0]                 bin_data
);
    
    wire                    [BIT_WIDTH-2:0]                 tmp;
    assign tmp      = bin_data[BIT_WIDTH-1:1];
    assign bin_data = {gray_data[BIT_WIDTH-1], tmp^gray_data[BIT_WIDTH-2:0]};
    
endmodule
