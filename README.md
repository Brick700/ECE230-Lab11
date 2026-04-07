# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Robert Estrada Chavez, Mason Beckman

## Summary
In this lab we built and implented two types of counters, a ripple counter, and a moudlo-n counter. The moudlo counter went up to out vhosen value of 6 by dividign a clock andn and then resseting and toglglong to count by values that are flexible. The ripple counter is more restricted as it limited to counts of 2^n and not as flexible but still useful.
## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
The output gets toggled everytime its count reaches N, so it takes two full counts to go through one full output cycle. Making the division 2N as opposed to N
### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Since the input is at undefined state on startup they usually default to 1's when it has not been reset. Reseting it allows it to intilize it to 0 state before its first clock cycle.
### 3 - What width of ring counter would you use to get to an output of ~1KHz?
Using the equation of log2(Cval), and since 1 kHz is needed we would get log2(100000)=16.61. So we would need a 17 bit wide adder to staisfy the output of about 1kHz.
 
 

