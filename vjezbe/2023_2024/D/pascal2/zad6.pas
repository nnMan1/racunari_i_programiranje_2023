program zad6;
// NZS(a, b) = a * b / NZD(a, b)

var a, b, ap, bp, q: integer;

begin
    readln(a, b);

    ap := a;
    bp := b;
    
    while b <> 0 do
    begin   
        writeln('NZD(', a, ', ', b, ') = ');

        q := a mod b;
        a := b;
        b := q;
    end;

    writeln('NZD(', a, ', ', b, ') = ', a);
    writeln('NZS(', ap, ', ', bp, ') = ', ap * bp div a);

end.