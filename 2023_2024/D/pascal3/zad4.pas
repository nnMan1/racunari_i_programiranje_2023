//stampati sve dvocifrene brojeve cije su cifre izmedju k i n.

program zad4;

var k, n, i: integer;

begin
    readln(k, n);

    for i := 1 to 100 do
        if (k <= i mod 10) and (k <= i div 10) 
        and (i mod 10 <=n) and (i div 10 <= n) then
            writeln(i);
end.