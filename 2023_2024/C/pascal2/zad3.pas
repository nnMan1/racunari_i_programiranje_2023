//izračunava zbir svih cijelih brojeva 
//iz intervala [a, b].
program zad3;

var a, b, i, z: integer;

begin
    readln(a, b);

    i := a;
    z := 0;

    while i <= b do
    begin
        z := z + i;
        i := i + 1;
    end;

    writeln(z);
end.