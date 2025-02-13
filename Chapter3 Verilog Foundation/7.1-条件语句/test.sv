module top;
    reg [3:0] a;
    initial begin
        $display("%0t -> Start!!!", $time);
        a = 4'b1000;
        case (a)
            4'b1??? : $display("%0t -> a %b in case 4'b1???", $time, a);
            4'b01?? : $display("%0t -> a %b in case 4'b01???", $time, a);
            4'b001? : $display("%0t -> a %b in case 4'b001?", $time, a);   
            default : $display("%0t -> a %b in default value", $time, a);   
        endcase
        a = 4'b1???;
        case(a)
            4'b1??? :$display("%0t -> a %b in case 4'b1???",$time,a);
            4'b01?? :$display("%0t -> a %b in case 4'b01??",$time,a);
            4'b001? :$display("%0t -> a %b in case 4'b0001?",$time,a);
            default :$display("%0t -> a %b in case default value",$time,a);
        endcase
        a = 4'b1000;
        casez(a)
            4'b1??z : $display("%0t -> a %b in casez 4'b1???",$time,a);
            4'b01?z : $display("%0t -> a %b in casez 4'b01??",$time,a);
            4'b001? : $display("%0t -> a %b in casez 4'b0001?",$time,a);
            default : $display("%0t -> a %b in casez default value",$time,a);
        endcase
        a = 4'b0100;
        casex(a)
            4'b1?xz :$display("%0t -> a %b in casex 4'b1???",$time,a);
            4'b01xz :$display("%0t -> a %b in casex 4'b01??",$time,a);
            4'b001? :$display("%0t -> a %b in casex 4'b0001?",$time,a);
            default :$display("%0t -> a %b in casex default value",$time,a);
        endcase
        $display("%0t -> Finish!!!",$time);
        $finish;
    end
endmodule