# mips32
This is an implementation of the 32-bit MIPS pipelined microcontroller.  It features a five-stage instruction pipeline, 1KB instruction and data memories, a forwarding unit, and a hazard detection unit.  This was designed using VHDL and Quartus II's native block diagrams, and was originally designed to run on an ALTERA DE2-115 development board.

I'm not actively maintaining this project at this time.

## Block diagrams

![Full block diagram of the processor](https://raw.githubusercontent.com/ivorysoap/mips32/master/full_datapath.png)

![Less detailed block diagram of the processor.  This shows the hazard detection and forwarding units.](https://raw.githubusercontent.com/ivorysoap/mips32/master/hdu_fu_datapath.png)
