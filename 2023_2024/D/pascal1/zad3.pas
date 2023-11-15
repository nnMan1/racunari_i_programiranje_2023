program zad3;
var x, j, d, s, z: Integer;

begin
    readln(x);

    j := x mod 10;
    d := x div 10 mod 10;
    s := x div 100;

    z := j + d + s;

    writeln(z);
end.