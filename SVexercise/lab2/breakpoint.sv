module breakpoint1;

int val1;
int val2;

int result;
function int incr_static(input int a);
  result = a + 1;
  return result;
endfunction

function automatic int incr_dynamic(input int a);
  int result;
  result = a + 1;
  return result;
endfunction

initial begin
  val1 = 0;
  val1 = incr_static(val1);
  val1 = incr_static(val1);  // breakpoint line8 result == ?
end

initial begin
  val2 = 0;
  val2 = incr_dynamic(val2);
  val2 = incr_dynamic(val2); // breakpoint line14 result == ? 
end

endmodule



