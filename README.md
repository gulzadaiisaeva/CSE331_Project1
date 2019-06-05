
# CSE 331 Computer Organizations

# Project 1 – Structural Verilog & FPGA Programming

1. Design a digital circuit that detects which of the two 5 - bit input numbers
    ( **InA** and **InB** ) is larger. The circuit will output a two bit signal called **Out**
    such that:

```
Situation Out
InA = InB = 0 00
InA > InB 01
InA < InB 10
InA = InB ≠ 0 11
```
```
Use structural Verilog and Quartus.
```
2. Write a Verilog testbench for your circuit and simulate by ModelSim to see
    the correctness of your design.
3. Upload your design to DE0 FPGA board and verify it on the board.
4. _Bonus (15pts)_ : If you design without using any addition or subtraction
    process

**Rules:**

1. All project details (even the schematic) will be announced at next PS
    (October 17). So attend the PS for your own good!
2. Behavioral Verilog is not permitted. Thus, first draw your schematic on a
    paper.
3. Designs that are not even simulating can at most get 20pts.
4. You should show your simulation and board execution during demo hour
    and be graded accordingly. Demo hour will be announced on Moodle.
5. No late submissions even if 1 minute.
6. The input-output names must be exactly the same as given above.
7. _Honor code_ : It is not a group project. Any cheating means at least - 100 for
    both sides. Do not share your codes and design to any one in any
    circumstance. Be honest and uncorrupt not to win but because it is right!


