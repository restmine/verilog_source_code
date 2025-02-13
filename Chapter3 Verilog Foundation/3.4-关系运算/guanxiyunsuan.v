module guanxi();
    reg [2:0] r1, r2;
    initial begin
        //给r1 r2赋值
        $display(" %0t -> Start!!!", $time);
        r1 = 'b100;
        r2 = 'b10x;

        $display(" %t -> r1: %0b r2: %0b compare '==' result : %0b, '===' result: %b", $time, r1, r2, r1 == r2, r1 === r2);
        $display(" %t -> r1: %0b r2: %0b compare '!=' result : %0b, '!==' result: %b", $time, r1, r2, r1 != r2, r1 !== r2);
        #10;
        r2 = 'b10z;
        $display(" %t -> r1: %0b r2: %0b compare '==' result : %0b, '===' result: %b", $time, r1, r2, r1 == r2, r1 === r2);
        $display(" %t -> r1: %0b r2: %0b compare '!=' result : %0b, '!==' result: %b", $time, r1, r2, r1 != r2, r1 !== r2);
        $display(" %0t -> Finish!!!", $time);
        $finish;
    end
endmodule