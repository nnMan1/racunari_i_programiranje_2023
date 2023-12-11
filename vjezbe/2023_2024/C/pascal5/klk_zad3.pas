program zad3;

var M, s, sabirak: real;
var n: integer;

begin
    readln(M);

    s := 0;
    n := 1;
    sabirak := 1;

    while True do
    begin
        sabirak := sabirak * 3;
        sabirak := sabirak / (2*n - 1) / (2 * n);

        if (n+1) * sabirak < M then
            break;

        s := s + (n+1) * sabirak;
        n := n + 1;
    end;

    writeln(s:0:5);
end.