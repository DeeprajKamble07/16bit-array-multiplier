// design for 16 bit array multiplier

module am(input [15:0] a, b, output [31:0] product);
  wire [15:0] pp[15:0];
  wire [31:0] s[15:0];

  genvar i;
  generate
    for(i=0;i<16;i=i+1) begin
      assign pp[i]=a&{16{b[i]}};
    end
  endgenerate
   /*
  assign pp[0]  = a & {16{b[0]}};
  assign pp[1]  = a & {16{b[1]}};
  assign pp[2]  = a & {16{b[2]}};
  assign pp[3]  = a & {16{b[3]}};
  assign pp[4]  = a & {16{b[4]}};
  assign pp[5]  = a & {16{b[5]}};
  assign pp[6]  = a & {16{b[6]}};
  assign pp[7]  = a & {16{b[7]}};
  assign pp[8]  = a & {16{b[8]}};
  assign pp[9]  = a & {16{b[9]}};
  assign pp[10] = a & {16{b[10]}};
  assign pp[11] = a & {16{b[11]}};
  assign pp[12] = a & {16{b[12]}};
  assign pp[13] = a & {16{b[13]}};
  assign pp[14] = a & {16{b[14]}};
  assign pp[15] = a & {16{b[15]}};
*/

  assign s[0]  = pp[0];
  genvar j;
  generate
    for(j=0;j<16;j=j+1) begin

      assign s[j]  = pp[j]  << j;
    end
  endgenerate
  /*
  assign s[0]  = pp[0];
  assign s[2]  = pp[2]  << 2;
  assign s[3]  = pp[3]  << 3;
  assign s[4]  = pp[4]  << 4;
  assign s[5]  = pp[5]  << 5;
  assign s[6]  = pp[6]  << 6;
  assign s[7]  = pp[7]  << 7;
  assign s[8]  = pp[8]  << 8;
  assign s[9]  = pp[9]  << 9;
  assign s[10] = pp[10] << 10;
  assign s[11] = pp[11] << 11;
  assign s[12] = pp[12] << 12;
  assign s[13] = pp[13] << 13;
  assign s[14] = pp[14] << 14;
  assign s[15] = pp[15] << 15;
*/
  // Final product
  assign product = s[0] + s[1] + s[2] + s[3] + s[4] + s[5] + s[6] + s[7] +
                   s[8] + s[9] + s[10] + s[11] + s[12] + s[13] + s[14] + s[15];
endmodule
