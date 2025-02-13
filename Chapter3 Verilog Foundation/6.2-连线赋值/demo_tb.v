module top;
    reg[15:0] a,b,c,d,e;
    wire [15:0] f;
    always@ * begin
        c = a + b;
        d = a + b + c;
    end
    assign f = c + d;
    initial begin

        $display(" %0t -> Start!!!", $time);
        assign e = c + d;
        a = 'd1;
        b = 'd1;
        repeat (10) begin
            a++;
            b++;
            if (a == 'd5) deassign e;
            #10;
            $display(" %0t -> a=%d, b=%d, c=%d, d=%d, e=%d, f=%d", $time, a, b, c, d, e, f);
        end
        $display(" %0t -> End!!!", $time);
        $finish;

    end
    

endmodule