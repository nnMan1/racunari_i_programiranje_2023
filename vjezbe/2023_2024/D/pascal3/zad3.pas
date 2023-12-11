//stampati sve dvocifrene brojeve cije su cifre izmedju k i n.

program zad3;

var k, n, d, j, br: integer;

begin
    readln(k, n);

    for d := k to n do
    begin
        for j := k to n do
        begin
            br := 10 * d + j;
            writeln(br);
        end;
    end;
end.