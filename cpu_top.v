module cpu_top(
    input clk,
    input reset
);

wire [3:0] pc;
wire [7:0] instruction;

program_counter pc_unit(
    .clk(clk),
    .reset(reset),
    .pc(pc)
);

instruction_memory imem(
    .address(pc),
    .instruction(instruction)
);

endmodule
