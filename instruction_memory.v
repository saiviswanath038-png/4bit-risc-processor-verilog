module instruction_memory(
    input [3:0] address,
    output [7:0] instruction
);

reg [7:0] memory [15:0];

initial begin
    memory[0] = 8'b00010001;
    memory[1] = 8'b00100010;
    memory[2] = 8'b01000011;
    memory[3] = 8'b01100100;
end

assign instruction = memory[address];

endmodule
