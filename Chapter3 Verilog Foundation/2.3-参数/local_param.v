module my_module #(parameter WIDTH = 8) ();
    localparam DEPTH = 16; // 仅在模块内部使用，无法在外部覆盖

    reg [WIDTH-1:0] data;
    reg [DEPTH-1:0] memory;

    initial begin
        $display("WIDTH = %0d, DEPTH = %0d", WIDTH, DEPTH);
    end
endmodule
