//nalazi sve djelioce broja n
program zad5;

var n, i, p: integer;

begin 
    readln(n);
    i := 1;
    
    while i <= n do
    begin
        if n mod i = 0 then
            writeln(i);

        i := i + 1;
    end;

end.