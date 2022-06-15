module tb_3to8decoder();
    reg a,b,c,en;
    wire [0:7] y;
    //instantiate ports with DUT
    design_3to8decoder dut (en,a,b,c,y);
initial begin

    $monitor ("y= %b, a = %b, b = %b, c= %b, en= %b",y,a,b,c,en);
// inputs are given as per the truth table
    en = 1; a = 1'bx; b = 1'bx; c = 1'bx;
    en = 0; a = 0; b= 0; c =0; #5
    en = 0; a = 1; b= 0; c =0; #5
    en = 0; a = 0; b= 1; c =0; #5
    en = 0; a = 1; b= 1; c =0; #5
    en = 0; a = 0; b= 0; c =1; #5
    en = 0; a = 1; b= 0; c =1; #5
    en = 0; a = 0; b= 1; c =1; #5
    en = 0; a = 1; b= 1; c =1; #5
    $finish;
end

endmodule