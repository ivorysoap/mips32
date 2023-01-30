# mips32

This is an FPGA implementation of a 32-bit MIPS pipelined microprocessor, described in VHDL.  This was made in Altera Quartus II and designed to run on an Altera DE2-115 FPGA board.  It features a five-stage instruction pipeline, 1KB instruction and data memories, a data forwarding unit, and a hazard detection/avoidance unit.

I'm not actively maintaining this project at this time.

## How to run

The `*.mif` files in this repo are memory initialization files for test programs written in MIPS assembly.  They can be used to initialize the data and instruction memories in Quartus II.

You can try this out in Quartus II.  Currently, the project can't be built and run on a CLI because a few components were instantiated as Quartus schematic files (.bdf / .bsf) instead of in VHDL.  At some point in the future, I'll convert these to VHDL so that the project can be built using GHDL or a similar tool. 

## Block diagrams

The vast majority of this was written in VHDL, but I did the top layer in the Quartus schematic editor, partly because I thought it would be less complicated that way, and partly because I wanted to make a really cool block diagram:

![Data buses in purple, pipeline control buses in brown, clock in green](MIPS_PROCESSOR.bmp)



These last two block diagrams are fromthe textbook *Computer Organization and Design: the Hardware/Software Interface* (Patterson, Hennessy) and show what a MIPS processor typically looks like:

Full block diagram of the MIPS processor, with the data path shown in black and the control path & control modules shown in blue.

![Full block diagram of the processor](https://raw.githubusercontent.com/ivorysoap/mips32/master/full_datapath.png)

Less detailed block diagram of the processor.  This one shows the hazard detection unit and forwarding unit.

![Less detailed block diagram of the processor.  This shows the hazard detection and forwarding units](https://raw.githubusercontent.com/ivorysoap/mips32/master/hdu_fu_datapath.png)

## Authors

* @ivorysoap
* @kadhidjah