<<<<<<< HEAD
module HA_design(
    input A,
    input B,
    output Sum,
    output Carry
);

    xor(Sum, A, B);
    and(Carry, A, B); 

=======
module HA_design(
    input A,
    input B,
    output Sum,
    output Carry
);

    xor(Sum, A, B);
    and(Carry, A, B); 

>>>>>>> 3e3c4830248ac0eb2b91db77ea6c2fab36e4a912
endmodule