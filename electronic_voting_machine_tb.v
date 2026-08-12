`timescale 1ns/1ps

module electronic_voting_machine_tb;

    reg clk;
    reg reset;

    reg vote_c1;
    reg vote_c2;
    reg vote_c3;
    reg vote_c4;

    wire [7:0] count_c1;
    wire [7:0] count_c2;
    wire [7:0] count_c3;
    wire [7:0] count_c4;

    electronic_voting_machine uut (
        .clk(clk),
        .reset(reset),
        .vote_c1(vote_c1),
        .vote_c2(vote_c2),
        .vote_c3(vote_c3),
        .vote_c4(vote_c4),

        .count_c1(count_c1),
        .count_c2(count_c2),
        .count_c3(count_c3),
        .count_c4(count_c4)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        $dumpfile("electronic_voting_machine.vcd");
        $dumpvars(0, electronic_voting_machine_tb);

        clk = 0;
        reset = 1;

        vote_c1 = 0;
        vote_c2 = 0;
        vote_c3 = 0;
        vote_c4 = 0;

        #10;

        reset = 0;

        // Candidate 1 receives 3 votes
        vote_c1 = 1;
        #10;
        vote_c1 = 0;
        #10;

        vote_c1 = 1;
        #10;
        vote_c1 = 0;
        #10;

        vote_c1 = 1;
        #10;
        vote_c1 = 0;
        #10;

        // Candidate 2 receives 2 votes
        vote_c2 = 1;
        #10;
        vote_c2 = 0;
        #10;

        vote_c2 = 1;
        #10;
        vote_c2 = 0;
        #10;

        // Candidate 3 receives 4 votes
        vote_c3 = 1;
        #10;
        vote_c3 = 0;
        #10;

        vote_c3 = 1;
        #10;
        vote_c3 = 0;
        #10;

        vote_c3 = 1;
        #10;
        vote_c3 = 0;
        #10;

        vote_c3 = 1;
        #10;
        vote_c3 = 0;
        #10;

        // Candidate 4 receives 1 vote
        vote_c4 = 1;
        #10;
        vote_c4 = 0;
        #10;

        $display("-----------------------------------------");
        $display("        FINAL VOTING RESULTS");
        $display("-----------------------------------------");

        $display("Candidate 1 Votes = %d", count_c1);
        $display("Candidate 2 Votes = %d", count_c2);
        $display("Candidate 3 Votes = %d", count_c3);
        $display("Candidate 4 Votes = %d", count_c4);

        $display("-----------------------------------------");

        $finish;

    end

endmodule