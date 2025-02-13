module pinjie();
    reg [5:0] a;
    reg [1:0] b;
    reg [3:0] c;
    reg [6:0] d;
    initial begin
        a = 6'b100011;
        b = 2'b10;
        c = 4'h3;
        d = {a[1:0], b, c[2:0]};
        $display(d);
    end

endmodule