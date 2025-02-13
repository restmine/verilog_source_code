module my_module #(parameter WIDTH = 8, parameter HEIGHT = 16) ();
    // 使用 WIDTH 和 HEIGHT 进行逻辑设计
    reg [WIDTH-1:0] data;

    initial begin
        $display("WIDTH = %0d, HEIGHT = %0d", WIDTH, HEIGHT);
    end
endmodule

module top;
    // 实例化时覆盖参数
    my_module #(10, 20) instance1();
    my_module #(4, 8) instance2();
endmodule
