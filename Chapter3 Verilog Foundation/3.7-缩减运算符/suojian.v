module suojian();
    reg [2:0] a;
    reg b;
    reg c;
    initial begin
        a = 3'b101;
        // 三位都按位与，有一个不是1就会是0
        b = &a;
        // 三位都按位或，有一个值是1就是1
        c = |a;
        $display(b);
        $display(c);
    end

endmodule