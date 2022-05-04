/*----------------------------------------
 *    File Name: rtl/bin2gray.v
 *    function: 二进制码转化为格雷码
 *    author: Milo
 *    Data: 2022-03-22
 *    Version: 1.0
----------------------------------------*/

module bin2gray #(
    BIT_WIDTH               =        4
) (
    input                   [BIT_WIDTH - 1 : 0]             bin_data,    // binary data
    output                  [BIT_WIDTH - 1 : 0]             gray_data
);
    wire                    [BIT_WIDTH-2:0]                 tmp;
    assign tmp       = bin_data[BIT_WIDTH-1 : 1];
    assign gray_data = {bin_data[BIT_WIDTH - 1], bin_data[BIT_WIDTH-2:0] ^ tmp};
endmodule
