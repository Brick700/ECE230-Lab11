module ripple_counter(
input btnC, //clock
input btnU, //reset
output wire [2:0] led
);

wire q0, q1, q2;
wire nq0, nq1, nq2;

assign led[0] = q0;
assign led[1] = q1;
assign led[2] = q2;


//Stage 1
T_Flip_Flop rc1(
     .Clk(btnC),
     .Rst(btnU),
     .T(1'b1),
     .Q(q0),
     .NotQ(nq0)
);

//Stage 2
T_Flip_Flop rc2(
     .Clk(q0),
     .Rst(btnU),
     .T(1'b1),
     .Q(q1),
     .NotQ(nq1)
);

//Stage 3
T_Flip_Flop rc3(
     .Clk(q1),
     .Rst(btnU),
     .T(1'b1),
     .Q(q2),
     .NotQ(nq2)
);

endmodule