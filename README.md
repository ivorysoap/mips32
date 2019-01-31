# mips32
This is an implementation of the 32-bit MIPS pipelined microcontroller, described using VHDL and designed to run on an Altera DE2-115 FPGA.  It features a five-stage instruction pipeline, 1KB instruction and data memories, a data forwarding unit, and a hazard detection/avoidance unit.

I'm not actively maintaining this project at this time.

## Block diagrams

![Full block diagram of the processor](https://raw.githubusercontent.com/ivorysoap/mips32/master/full_datapath.png)

![Less detailed block diagram of the processor.  This shows the hazard detection and forwarding units.](https://raw.githubusercontent.com/ivorysoap/mips32/master/hdu_fu_datapath.png)

*Images from taken from *Computer Organization and Design: the Hardware/Software Interface* (Patterson, Hennessy)*
