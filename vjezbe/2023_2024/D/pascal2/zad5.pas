//napisati program koji stampa sve brojeve 
//u intervau od 1 do n osim broja 5

program zad5;

var n, i: integer;

begin

    readln(n);

    i := 0;

    while i < n do
    begin

        i := i + 1;
        
        if i = 5 then
            continue;

        writeln(i);
    end;

end.