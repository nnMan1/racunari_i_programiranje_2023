//program koji stampa prvih n brojeva
program zad1;

var n, i: Integer;

begin
    readln(n);

    i := 1;

    while i <= n do
    begin   
        write(i, ' ');
        i := i + 1;
    end;

    writeln();

end.