module top;
  //timeunit 1ns;
 // timeprecision 1ps;

  generate 
    genvar i;
    for(i=0;i<5;i=i+1) begin:gen_name1
      initial begin
        repeat(i) #10;
        $display("%0t -> Here gen_name1 is generated code num %0d",$time,i);
      end
    end 
  endgenerate    

  for(genvar i=0;i<5;i=i+1) begin:gen_name2
      initial begin
        repeat(i) #10;
        $display("%0t -> Here gen_name2 is generated code num %0d",$time,i);
      end
  end

  initial begin
    $display("%0t -> Start!!!",$time);
    #1000;
    $display("%0t -> Finish!!!",$time);
    $finish;
  end 

endmodule