//1 + x + (x^2) / 2 + (x^3)/ 3! + ... + x^m / m!
program zad6;

var i, m: integer;
var x, p, s: real;

begin
    readln(x, m);
    p := 1;
    s := 0;

    for i := 0 to m do
    begin
        // writeln(br:0:0, ' ', im:0:0);

        s := s + p;

        p := p * x / (i + 1);
    end;

    writeln(s);

end.