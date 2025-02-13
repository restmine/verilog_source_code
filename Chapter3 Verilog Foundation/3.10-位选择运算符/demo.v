module top();
    reg [15:0] a;
    initial begin
        $display(" %0t -> Start!!!", $time);
        a = 16'habcd;
        $display(" %0t -> a[3:0]    : %0h a[0*4+:4]: %0h", $time, a[3:0],   a[0*4+:4]);
        $display(" %0t -> a[7:4]    : %0h a[1*4+:4]: %0h", $time, a[7:4],   a[1*4+:4]);
        $display(" %0t -> a[11:8]   : %0h a[2*4+:4]: %0h", $time, a[11:8],  a[2*4+:4]);
        $display(" %0t -> a[15:12]  : %0h a[3*4+:4]: %0h", $time, a[15:12], a[3*4+:4]);

        $display(" %0t -> a[3:0]    : %0h a[1*4-1-:4]: %0h", $time, a[3:0],     a[1*4-1-:4]);
        $display(" %0t -> a[7:4]    : %0h a[2*4-1-:4]: %0h", $time, a[7:4],     a[2*4-1-:4]);
        $display(" %0t -> a[11:8]   : %0h a[3*4-1-:4]: %0h", $time, a[11:8],    a[3*4-1-:4]);
        $display(" %0t -> a[15:12]  : %0h a[4*4-1-:4]: %0h", $time, a[15:12],   a[4*4-1-:4]);
        $display(" %0t -> Finish!!!", $time);
        $finish;
        
    end
endmodule