module test ();
bit [4:0] result;
bit [4:0] sub_result;

//first ha;
initial begin
    //ha = new();
    result = add (4'b0100,4'b1001);
    sub_result = sub (4'd8,4'd2);

   
    $display("the sum is %d", result);
    $display("the sub is %d", sub_result);
    
end
    
endmodule

//class first
//bit [3:0] a;
//bit [3:0] b;
//endclass

function bit[4:0] add (input bit [3:0]a,b);
  $display("the value of a is %d",a);
    $display("the value of b is %d",b);
    return a+b; 
endfunction

function bit[4:0] sub (input bit [3:0]a,b);
  $display("the value of a is %d",a);
    $display("the value of b is %d",b);
    return a-b; 
endfunction

// outputs
Compiler version T-2022.06-SP1_Full64; Runtime version T-2022.06-SP1_Full64;  Apr  4 02:11 2024
the value of a is  4
the value of b is  9
the value of a is  8
the value of b is  2
the sum is 13
the sub is  6
           V C S   S i m u l a t i o n   R e p o r t
Time: 0
CPU Time:      0.190 seconds;       Data structure size:   0.0Mb
Thu Apr  4 02:11:57 2024
