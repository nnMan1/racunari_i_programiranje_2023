program zad7;

var i, m: integer;
var p, x, s: real;

begin
    readln(x, m);

    s := 1;
    p := 1;

    for i:=1 to m do
    begin
        p := p * x / i;
        s := s+p;
    end;

    writeln(s);

end.