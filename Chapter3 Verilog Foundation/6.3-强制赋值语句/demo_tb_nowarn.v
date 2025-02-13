module top;
    reg [15:0] a, b, c, d, e;  // 将 e 声明为 reg 类型
    wire [15:0] f;

    always @* begin
        c = a + b;
        d = a + b + c;
    end

    assign f = c + d;

    initial begin
        $display("%0t -> Start!!!", $time);
        // e 的赋值移到 always 块中
        a = 'd1;
        b = 'd1;
        repeat (10) begin
            a++;
            b++;
            if (a == 'd5) e = 0;  // deassign 不适用，直接赋值为 0
            else e = c + d;      // 在这里更新 e
            #10;
            $display("%0t -> a=%d, b=%d, c=%d, d=%d, e=%d, f=%d", $time, a, b, c, d, e, f);
        end
        $display("%0t -> End!!!", $time);
        $finish;
    end

endmodule
