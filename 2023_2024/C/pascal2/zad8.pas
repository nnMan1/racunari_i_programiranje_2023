//stampa tablicu mnozenja
program zad8;

var n: integer = 10;
var i, j: integer;

begin
    readln(n);
    i := 1;

    write('* |');

    while i <= n do
    begin
        write(i:3, ' ');
        i := i + 1;
    end;

    writeln();

    i := 1;

    while i <= n do
    begin
        write('----');
        i := i + 1;
    end;

    writeln('--');

    i := 1;

    while i<= n do //petlja po vrstama (govori nam koju vrstu stampamo)
    begin
        j := 1;

        write(i:2, '|');

        while j <= n do
        begin
            write((i * j):3, ' ');
            j := j + 1;
        end;

        writeln();
        i := i + 1;
    end;
end.