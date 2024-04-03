exersice 1


module test ();

int d, result;
int a = 2, b = 3;

function automatic mult (input int a, input int b, output int c);
c = (a*b) +2;
$display("inside function");
$display("@time t = %0d: a= %0d and b = %0d and c = 0d", $time, a,b, c) ;
endfunction

initial 
   fork
    begin
        #1;
        mult(2,3,d);
        $display("begin block 1");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
    begin
          #2;
        mult(2,4,d);
        $display("begin block 2");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
   join
endmodule



Excersie 2:


module test ();

int d, result;
int a = 2, b = 3;

function automatic mult (ref int a, ref int b, output int c);
c = (a*b) +2;
a++;
$display("inside function");
$display("@time t = %0d: a= %0d and b = %0d and c = 0d", $time, a,b, c) ;
endfunction

initial 
   fork
    begin
        #1;
        mult(a,b,d);
        $display("begin block 1");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
    begin
          #2;
        mult(a,b,d);
        $display("begin block 2");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
   join
endmodule



Excersie 3 :

module test ();

int d, result;
int a = 2, b = 3;

function  mult (input int a, input int b, output int c);
c = (a*b) +2;
a++;
$display("inside function");
$display("@time t = %0d: a= %0d and b = %0d and c = 0d", $time, a,b, c) ;
endfunction

initial 
   fork
    begin
        #1;
        mult(a,b,d);
        $display("begin block 1");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
    begin
          #2;
        mult(a,b,d);
        $display("begin block 2");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
   join
endmodule



Excersie 4:

module test ();

int d, result;
int a = 2, b = 3;

task automatic mult (input int a, input int b, output int c);
#5;
c = (a*b) +2;
a++;
$display("inside function");
$display("@time t = %0d: a= %0d and b = %0d and c = 0d", $time, a,b, c) ;
endtask

initial 
   fork
    begin
        #1;
        mult(a,b,d);
        $display("begin block 1");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
    begin
          #2;
        mult(a,b,d);
        $display("begin block 2");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
   join
endmodule



Excersie 5:

module test ();

int d, result;
int a = 2, b = 3;

task automatic mult (input int a, input int b, output int c);
#5;
c = (a*b) +2;
a++;
$display("inside function");
$display("@time t = %0d: a= %0d and b = %0d and c = 0d", $time, a,b, c) ;
endtask

initial 
   fork
    begin
        #1;
        mult(2,3,d);
        $display("begin block 1");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
    begin
          #2;
        mult(2,4,d);
        $display("begin block 2");
        $display("@time t = %0d: a= %0d and b = %0d and d = 0d", $time, a,b, d) ;
    end
   join
endmodule



exersice 6:

class pass_by_ref;
int refr =2;
int val = 2;
    function  automatic int cheque_refer (ref int r);
    $display("\n pass by ref \n");
    $display("initial value of refr = %d",r);
    r++;
    $display("value of refr after increment %d",r);
        
    endfunction 
    
    function int check_val (int v);
    $display("\n pass by val \n");
    $display("initial value of val = %d",v);
    v++;
    $display("value of refr after increment %d",v);  
    endfunction
endclass 

pass_by_ref h1;

module test;
initial begin
    h1 = new();
    h1.cheque_refer(h1.refr);
    h1.check_val(h1.val);
    $display("\n in memory \n");
    $display("val of refr afte incrmenting %d",h1.refr);
    $display("value of va; after incremetnig %d",h1.val);
end
endmodule



excersie 7:

module test ();
    
    task dummy_task(input int x, string str);
    fork
        begin
            #x;
        end
        begin
            #10;
        end
        
    join_any
    disable fork;
    $display("%s is disable at t = %t",str,$time);
    endtask

    initial 
        fork
            begin
                #2;
                dummy_task (5, "call_1");
            end
            begin
                #1;
                dummy_task (15 ,"call_2");
            end
        join
        


endmodule








