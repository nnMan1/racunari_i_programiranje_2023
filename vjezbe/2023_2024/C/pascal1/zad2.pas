program zbir_brojeva;
var x, j, d, s, z: Integer;
{Naci zbir cifara trocifrenog broja}

begin
    readln(x);

    j := x mod 10;
    d := x div 10 mod 10;
    s := x div 100;

    z := j + d + s;

    writeln('Zbir cifara je :', z);
end.