//provjrava da li je broj prost
program zad4;

var n, i: integer;
var p: boolean;

begin
    readln(n);

    i := 2;
    p := true;

    while i < n do
    begin
        writeln(i);
        if n mod i = 0 then
        begin
            p := false;
            break;
        end;

        i := i + 1;
    end;

    if p then
        writeln('Broj ', n, ' je prost')
    else
        writeln('Broj ', n, ' nije prost.');

end.