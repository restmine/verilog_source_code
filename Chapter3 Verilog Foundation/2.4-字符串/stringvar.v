module str();
    reg [8*12:1] stringvar;
    initial begin
        stringvar = "Hello,World!";
        $display("stringvar is %s", stringvar);
    end

endmodule