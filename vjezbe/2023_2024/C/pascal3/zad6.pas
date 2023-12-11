program zad6;

var n, i, p, s: integer;

begin
    readln(n);

    s := 0;
    p := 2;

    for i:=2 to n do
    begin   
        p := p * 2;
        s := s + p;
    end;

    writeln(s);
end.