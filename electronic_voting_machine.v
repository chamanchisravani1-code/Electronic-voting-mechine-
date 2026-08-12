module electronic_voting_machine (
    input        clk,
    input        reset,
    input        vote_c1,
    input        vote_c2,
    input        vote_c3,
    input        vote_c4,

    output reg [7:0] count_c1,
    output reg [7:0] count_c2,
    output reg [7:0] count_c3,
    output reg [7:0] count_c4
);

always @(posedge clk or posedge reset) begin

    if (reset) begin
        count_c1 <= 8'd0;
        count_c2 <= 8'd0;
        count_c3 <= 8'd0;
        count_c4 <= 8'd0;
    end

    else begin

        if (vote_c1)
            count_c1 <= count_c1 + 1'b1;

        else if (vote_c2)
            count_c2 <= count_c2 + 1'b1;

        else if (vote_c3)
            count_c3 <= count_c3 + 1'b1;

        else if (vote_c4)
            count_c4 <= count_c4 + 1'b1;

    end

end

endmodule