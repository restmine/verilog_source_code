module top;
    reg[5:0] a;
    reg signed[5:0] b;
    reg[5:0] c;
    reg signed[5:0] d;
    reg[5:0] e;
    reg signed[5:0] f;

    initial begin
        a = 6'b100011;
        b = 6'b100011;
        c = 6'bx00011;
        d = 6'bx00011;
        e = 6'bz00011;
        f = 6'bz00011;

        $display(" %0t -> Start!!!", $time);
            
        $display(" %0t -> a: %0b '<< 3 bits' result: %b",     $time,a,a<<3);
        $display(" %0t -> a: %0b '<<< 3 bits' result: %b",    $time,a,a<<<3);
        $display(" %0t -> a: %0b '>> 3 bits' result: %b",     $time,a,a>>3);
        $display(" %0t -> a: %0b '>>> 3 bits' result: %b\n",  $time,a,a>>>3);


        $display(" %0t -> b: %0b '<<  3 bits' result: %b",    $time,b,b<<3);
        $display(" %0t -> b: %0b '<<< 3 bits' result: %b",    $time,b,b<<<3);
        $display(" %0t -> b: %0b '>>  3 bits' result: %b",    $time,b,b>>3);
        $display(" %0t -> b: %0b '>>> 3 bits' result: %b\n",  $time,b,b>>>3);


        $display(" %0t -> c: %0b '<< 3 bits' result: %b",     $time,c,c<<3);
        $display(" %0t -> c: %0b '<<< 3 bits' result: %b",    $time,c,c<<<3);
        $display(" %0t -> c: %0b '>> 3 bits' result: %b",     $time,c,c>>3);
        $display(" %0t -> c: %0b '>>> 3 bits' result: %b\n",  $time,c,c>>>3);


        $display(" %0t -> d: %0b '<< 3 bits' result: %b",     $time,d,d<<3);
        $display(" %0t -> d: %0b '<<< 3 bits' result: %b",    $time,d,d<<<3);
        $display(" %0t -> d: %0b '>> 3 bits' result: %b",     $time,d,d>>3);
        $display(" %0t -> d: %0b '>>> 3 bits' result: %b\n",  $time,d,d>>>3);


        $display(" %0t -> e: %0b '<< 3 bits' result: %b",     $time,e,e<<3);
        $display(" %0t -> e: %0b '<<< 3 bits' result: %b",    $time,e,e<<<3);
        $display(" %0t -> e: %0b '>> 3 bits' result: %b",     $time,e,e>>3);
        $display(" %0t -> e: %0b '>>> 3 bits' result: %b\n",  $time,e,e>>>3);


        $display(" %0t -> f: %0b '<< 3 bits' result: %b",     $time,f,f<<3);
        $display(" %0t -> f: %0b '<<< 3 bits' result: %b",    $time,f,f<<<3);
        $display(" %0t -> f: %0b '>> 3 bits' result: %b",     $time,f,f>>3);
        $display(" %0t -> f: %0b '>>> 3 bits' result: %b\n",  $time,f,f>>>3);
        $display(" %0t -> Finish!!!", $time);
        $finish;
    end


endmodule