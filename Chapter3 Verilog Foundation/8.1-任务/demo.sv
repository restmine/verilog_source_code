module top;
  // define the task

  task get_random_number;
    input mode;
    output integer result;
    begin
      if (mode) begin
        result = $urandom % 11;
      end else begin
        result = ($urandom % 11) + 10;
      end
    end
  endtask

  // test the task
  initial begin
    integer random_number;
    // call task with mode 1
    get_random_number(1, random_number);
    $display("Mode 1: Random number = %d", random_number);
    // call task with mode 0
    get_random_number(0, random_number);
    $display("Mode 0: Random number = %d", random_number);
    #10;  
    $display("%0t -> Finish!!!",$time);
    $finish;
  end 

endmodule