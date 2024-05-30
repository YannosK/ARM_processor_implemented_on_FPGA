# Implementing an ARM processor on a Xilinx ZedBoard

This project was given to me in my MSc course on Digital Systems Design, by proffesors [N. Kranitis](https://scholar.google.com/citations?user=ps8mOuMAAAAJ&hl=en) and [A. Paschalis](https://scholar.google.gr/citations?user=q8LRbY4AAAAJ&hl=el)

The goal was to create a processor implementing some of the simple instructions of the ARM instruction set. Here I have the VIVADO directories and files generated, starting from the source code, following through all the design steps up to implementation


Inside the folder 'Processor_Multicycle.srcs' are all the VHDL sources I wrote. Inside the folder 'ASSEMBLY TEST CODE' there are two files. 'testbench.s' was used in the testbench simulation of the datapath, while 'program.s' was the program loaded in the processor's ROM to prove its functionality and implementation of all the ARM instructions it supports.

Inside the 'DOCUMENTATION' folder there is my project report for the course, as well as a small documentation of the ARM instructions the processor supports. Unfortunately both these are in Greek language.
