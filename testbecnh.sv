// testbench for 16 bit array multiplier

module tb;
  reg [15:0] a, b;
  wire [31:0] product;

  am dut(a, b, product);
  initial begin
    repeat(10) begin
      {a,b}=$random();
      #2;
    end
  end

  initial begin
    $monitor("[%0t] a=%0d b=%0d product=%0d", $time, a, b, product);
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
