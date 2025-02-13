module my_module #(parameter WIDTH = 8) ();
    reg [WIDTH-1:0] data;

    initial begin
        $display("WIDTH = %0d", WIDTH);
    end
endmodule

module top;
    my_module instance1();

    // 使用 defparam 修改参数值
    defparam instance1.WIDTH = 12;

    initial begin
        // 调试输出，查看 defparam 修改后的效果
        $display("Modified WIDTH in instance1");
    end
endmodule
