module inverter(a, b, ci, co, s);
    input a, b, ci;
    output co, s;
    assign co = (ci & a) + (ci & b) + (a & b);
    assign s = (~ci & a & ~b) + (~ci & ~a & b) + (ci & ~a & ~b) + (ci & a & b);

endmodule
