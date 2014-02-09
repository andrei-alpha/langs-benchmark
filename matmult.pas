program mult;
 uses crt,dos;
 const
     N = 512;
 type
    matrix = array[1..N,1..N] of integer;

procedure matrixini(var a : matrix; var v : integer); {initializes the array}
    var
      row, col : integer;
    begin
      for row := 1 to N do
        for col := 1 to N do
          a[row,col] := v;
    end;

procedure multmatrix(var p : matrix;var q : matrix ; var r : matrix);
    var
      i, j, k : integer;
      sum : Int64;
    begin
      for i := 1 to N do
        for j := 1 to N do
          begin
            sum := 0;
              for k := 1 to N do
                sum := sum + p[i,k] * q[k,j];
              r[i,j] := sum;
          end;
    end;

function summatrix(var a:matrix): Int64;
var
       r:integer;
       c:integer;
       ret:Int64 = 0;
begin
  for r:=1 to N do
  begin
      for c := 1 to N do
      begin
           ret := ret + a[r,c];
      end;
      break;
  end;
  summatrix := ret
end;

VAR  {main}
a, c : matrix;
v0, v1: integer;
res: Int64;
begin
    v0 := 0;
    v1 := 1;
    matrixini(a, v1);
    matrixini(c, v0);
    multmatrix(a, a, c);
    res := summatrix(c);
    writeln(res);
 end.
