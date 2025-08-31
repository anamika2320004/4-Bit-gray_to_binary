// Code your design here
// 4-bit Gray to Binary Converter
module gray_to_binary (
    input  [3:0] gray,
    output [3:0] binary
);

    // MSB remains same
    assign binary[3] = gray[3];
    // Each next bit is XOR of previous binary bit and current gray bit
    assign binary[2] = binary[3] ^ gray[2];
    assign binary[1] = binary[2] ^ gray[1];
    assign binary[0] = binary[1] ^ gray[0];

endmodule
