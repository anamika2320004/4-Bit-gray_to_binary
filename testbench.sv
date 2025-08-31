// Code your testbench here
// or browse Examples
module tb_gray_to_binary;
    reg  [3:0] gray;
    wire [3:0] binary;

    // DUT instantiation
    gray_to_binary dut (.gray(gray), .binary(binary));

    integer i;

    initial begin
        $dumpfile("wave.vcd");   // for GTKWave / EPWave
        $dumpvars(0, tb_gray_to_binary);

        $display("Gray   ->  Binary");
        $display("-----------------");

        // Test all 4-bit combinations
        for (i = 0; i < 16; i = i + 1) begin
            gray = i;
            #5; // wait for output
            $display("%b  ->  %b", gray, binary);
        end

        $finish;
    end
endmodule