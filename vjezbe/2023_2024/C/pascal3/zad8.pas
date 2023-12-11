program zad8;

var m, n: integer;
var x, s, p: real;

begin
    readln(x, m);
    s := 0;
    p := 1;

    for n:=1 to m do
    begin
        p := p * x;
        s := s + (2 * n + 1) * p / (n * n);
    end;

    writeln(s:0:5);

end.