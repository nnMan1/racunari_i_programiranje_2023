program zad6;

var br, j, d, s, z: Integer;

begin
    readln(br);

    j := br mod 10;
    d := br div 10 mod 10;
    s := br div 100;

    z := j * j * j + d * d * d + s * s * s;

    if z = br then
        writeln('Broj je Armstrongov')
    else
        writeln('Broj nije Armstrongov');
end.