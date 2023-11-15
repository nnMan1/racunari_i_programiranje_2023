//izračunava zbir svih 
//cijelih brojeva iz 
//intervala [a, b].
program zad3;

var a, b, s, i: integer;

begin
    readln(a, b);

    s := 0;
    i := a;

    while i <= b do
    begin
        s := s + i;
        i := i + 1;
    end;

    writeln(s);
end.