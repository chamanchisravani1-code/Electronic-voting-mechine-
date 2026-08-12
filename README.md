
Electronic Voting Machine using Verilog HDL

1. Project Title

Electronic Voting Machine (EVM) using Verilog HDL

2. Introduction

An Electronic Voting Machine is a digital system used to record votes electronically.

This project implements a simple 4-candidate Electronic Voting Machine using Verilog HDL. The system accepts a vote for one of four candidates and maintains the vote count for each candidate.

This is an educational FPGA/Verilog simulation project and is not intended to represent a real-world certified voting system.

3. Objective

The objectives of this project are:

- To design a simple Electronic Voting Machine using Verilog HDL.
- To count votes for multiple candidates.
- To reset all vote counts.
- To verify the design using a Verilog testbench.
- To observe the operation using waveform simulation.

4. Features

- Supports 4 candidates.
- Individual vote input for each candidate.
- 8-bit vote counters.
- Reset functionality.
- Clock-based operation.
- Verilog testbench included.
- VCD waveform generation.
- Compatible with Icarus Verilog and GTKWave.

5. Inputs and Outputs

Signal| Type| Description
"clk"| Input| Clock signal
"reset"| Input| Resets all vote counters
"vote_c1"| Input| Vote for Candidate 1
"vote_c2"| Input| Vote for Candidate 2
"vote_c3"| Input| Vote for Candidate 3
"vote_c4"| Input| Vote for Candidate 4
"count_c1"| Output| Candidate 1 vote count
"count_c2"| Output| Candidate 2 vote count
"count_c3"| Output| Candidate 3 vote count
"count_c4"| Output| Candidate 4 vote count

6. Block Diagram

              +----------------------+
              | Electronic Voting    |
              | Machine              |
              |                      |
 Vote C1 ---->| Candidate 1 Counter  |----> Count C1
 Vote C2 ---->| Candidate 2 Counter  |----> Count C2
 Vote C3 ---->| Candidate 3 Counter  |----> Count C3
 Vote C4 ---->| Candidate 4 Counter  |----> Count C4
              |                      |
 Reset ------>| Reset Logic          |
 Clock ------>| Clock               |
              +----------------------+

7. Working Principle

1. Initially, the reset signal is activated.
2. All candidate vote counters are set to zero.
3. Reset is then deactivated.
4. When a candidate's voting input is activated, the corresponding counter is incremented on the next clock edge.
5. The vote count is stored in an 8-bit register.
6. The final vote counts can be observed at the outputs.

8. Project Structure

Electronic-Voting-Machine/
│
├── README.md
├── electronic_voting_machine.v
├── electronic_voting_machine_tb.v
└── simulation/
    └── simulation_output.txt

9. Files Description

"electronic_voting_machine.v"

Contains the main Verilog design of the Electronic Voting Machine.

"electronic_voting_machine_tb.v"

Contains the testbench used to apply different votes to the design.

"simulation/simulation_output.txt"

Contains the expected simulation output.

10. Test Case

The testbench applies the following votes:

Candidate| Number of Votes
Candidate 1| 3
Candidate 2| 2
Candidate 3| 4
Candidate 4| 1

Expected result:

Candidate 3 receives the highest number of votes in this test case.

11. Simulation Using Icarus Verilog

Compile the Verilog files:

iverilog -o evm_sim electronic_voting_machine.v electronic_voting_machine_tb.v

Run the simulation:

vvp evm_sim

12. Waveform Simulation

The testbench generates a VCD waveform file:

electronic_voting_machine.vcd

Open it using GTKWave:

gtkwave electronic_voting_machine.vcd

Add these signals:

clk
reset
vote_c1
vote_c2
vote_c3
vote_c4
count_c1
count_c2
count_c3
count_c4

The waveform shows when votes are applied and how the corresponding counters increase.

13. Expected Console Output

-----------------------------------------
        FINAL VOTING RESULTS
-----------------------------------------
Candidate 1 Votes =   3
Candidate 2 Votes =   2
Candidate 3 Votes =   4
Candidate 4 Votes =   1
-----------------------------------------

14. Applications

Electronic voting concepts can be studied for:

- Digital system design
- FPGA projects
- Verilog HDL learning
- Voting-system demonstrations
- Counters and registers
- Finite-state-machine based systems

15. Advantages

- Simple design.
- Easy to understand.
- Uses basic digital logic concepts.
- Easy to simulate.
- Can be implemented on FPGA development boards.
- Demonstrates counters and sequential logic.

16. Limitations

This is a simplified educational model. A real-world voting system requires substantially more security, authentication, auditability, fault tolerance, accessibility, privacy, and certification.

17. Result

The Electronic Voting Machine was successfully designed using Verilog HDL.

The testbench successfully recorded votes for four candidates and displayed the final vote counts.

18. Conclusion

This project demonstrates how Verilog HDL can be used to design a simple electronic voting system. The design uses clocked counters to record votes for four candidates and provides a reset function to initialize the system.

19. Author

Your Name

Project: Electronic Voting Machine using Verilog HDL
