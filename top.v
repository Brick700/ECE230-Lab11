module top(
    input btnC,
    input btnU,
    output [6:0] led
);

ripple_counter rc(
    .btnC(btnC),
    .btnU(btnU),
    .led(led[2:0])
);

modulo_counter mc(
    .btnC(btnC),
    .btnU(btnU),
    .Q(led[5:3]),
    .Cout(led[6])
);

endmodule