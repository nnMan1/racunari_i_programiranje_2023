{Stampa sve brojeve od 1 do n}
program zad1;
var n, i: integer;

begin
    readln(n);

    i := 1;

    while i <= n do 
    begin
        write(i, ' ');
        i := i + 1;
    end;

    writeln()

end.