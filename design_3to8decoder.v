module design_3to8decoder (en,a,b,c,y); //defining the module
    input en,a,b, c; //inputs 
    output wire [0:7]y; // out will be in 'reg' need to store 8digit #

    // As this is the Data flow modeling we will need to design it 

    wire nen, na, nb,nc;

    //extra connection required
    assign nen = ~en;
    assign na = ~a;
    assign nb = ~b;
    assign nc = ~c;

    //deciding the out values as per the logic diagram
    
        assign y[0] = nen&na&nb&nc;
        assign y[1] = nen&a&nb&nc;
        assign y[2] = nen&na&b&nc;
        assign y[3] = nen&a&b&nc;
        assign y[4] = nen&na&nb&c;
        assign y[5] = nen&a&nb&c;
        assign y[6] = nen&na&b&c;
        assign y[7] = nen&a&b&c;



endmodule