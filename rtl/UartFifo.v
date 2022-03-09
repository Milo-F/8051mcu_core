module uart_fifo(
    output out
);
    wire in;
    assign in = 1;
    test(in);
    

    function [1:0] test(
        input o
    );        
        test = {o,o};
    endfunction    
endmodule

