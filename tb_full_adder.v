module testbench();
    reg a, b, ci;
    wire co, s;
    inverter inv1(.a(a), .b(b), .ci(ci), .co(co), .s(s));

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
        a = 0; b = 0; ci = 0;
        #10;
        a = 0; b = 0; ci = 1;
        #10;
        a =1; b = 0; ci = 1;
      	#10;
      	a = 1; b = 1; ci = 1;
      	#10;
    end
endmodule