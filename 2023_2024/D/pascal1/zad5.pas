program zad5;

var x, j, d, s, z: Integer;

begin
    readln(x);

    j := x mod 10;
    d := x div 10 mod 10;
    s := x div 100;

    z := j * j * j + d * d * d + s * s * s;

    if z = x then
        writeln('Broj je Armstrongov')
    else
        writeln('Broj nije Armstrongov');

end.