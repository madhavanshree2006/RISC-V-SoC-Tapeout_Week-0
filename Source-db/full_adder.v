module full_adder(
    input a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;                // Sum = XOR of all inputs
    assign cout = (a & b) | (b & cin) | (a & cin); // Carry = majority function
endmodule
