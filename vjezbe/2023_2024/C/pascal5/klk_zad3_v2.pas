program zad3;

var M, s: real;
var n, p, f: integer;

begin
    readln(M);

    s := 0;
    p := 1;
    f := 1;
    n := 1;

    while True do
    begin
        p := p * 3;
        f := f * (2*n - 1) * (2 * n);

        if ((n+1) * p) / f < M then
            break;

        s := s + ((n+1) * p) / f;
        // writeln(s:0:5, ' ', n, ' ', ((n+1) * p) / f:0:5);
        n := n + 1;
    end;

    writeln(s:0:5);
end.