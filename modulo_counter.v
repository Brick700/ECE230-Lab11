module modulo_counter(
    input btnC,
    input btnU,
    output [2:0] Q,
    output Cout
);
 
wire c0, c1;
wire [2:0] sum;
wire [2:0] Qnext;
 
//Chained full adders to compute Q+1
full_adder fa0(
    .A(Q[0]),
    .B(1'b0),
    .Cin(1'b1),
    .Y(sum[0]),
    .Cout(c0)
);
 
full_adder fa1(
    .A(Q[1]),
    .B(1'b0),
    .Cin(c0),
    .Y(sum[1]),
    .Cout(c1)
);
 
full_adder fa2(
    .A(Q[2]),
    .B(1'b0),
    .Cin(c1),
    .Y(sum[2]),
    .Cout()
);

assign Qnext = (Q == 3'b101) ? 3'b000 : sum;

D_Flip_Flop dff0(
    .D(Qnext[0]),
    .Clk(btnC),
    .Rst(btnU),
    .Q(Q[0]),
    .NotQ()
);

D_Flip_Flop dff1(
    .D(Qnext[1]),
    .Clk(btnC),
    .Rst(btnU),
    .Q(Q[1]),
    .NotQ()
);

D_Flip_Flop dff2(
    .D(Qnext[2]),
    .Clk(btnC),
    .Rst(btnU),
    .Q(Q[2]),
    .NotQ()
);


// Q has reached 5 so next count should toggle led 6
wire cout_d;
assign cout_d = (Q == 3'b101) ? ~Cout : Cout;

D_Flip_Flop dff_out(
    .D(cout_d),
    .Clk(btnC),
    .Rst(btnU),
    .Q(Cout),
    .NotQ()
);

endmodule