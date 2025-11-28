# 16bit-array-multiplier

This design implements a 16-bit unsigned array multiplier using a structural, hardware-accurate approach. The multiplier generates 16 partial products by ANDing the multiplicand a with each bit of multiplier b.
Each partial product is shifted left according to its bit position to align it properly. All shifted partial products (s[0] to s[15]) are then summed together to produce the 32-bit final product. The use of generate loops simplifies the design by automatically creating the repeated AND and shift logic instead of writing them manually. The testbench applies random test vectors and prints the result for verification.
