//sum_{i=1}^{m} (2*i+1)x^i / i^2

program zad7;
var i, m: integer;
var x, p, s: real;

begin

    readln(x, m);

    s := 0;
    p := 1;

    for i := 1 to m do
    begin
        p := p * x;
        s := s + (2*i+1) * p / (i * i);
        writeln(i, ' ', (2*i+1), ' ' , p:0:0, ' ' , i * i)
    end;

    writeln(s:0:5);

end.