//provjeriti da li je broj n prost
program zad4;

var n, i, p: integer;

begin 
    readln(n);
    i := 2;
    p := 1;

    while i <= n-1 do
    begin

        writeln(i);

        if n mod i = 0 then
        begin
            p := 0;
            break;
        end;

        i := i + 1;
    end;

    if p = 1 then
        writeln('Broj je prost')
    else
        writeln('Broj nije prost');

end.