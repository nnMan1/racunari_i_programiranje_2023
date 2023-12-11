program zad5;

var i, j ,n: integer;

begin
    readln(n);

    for i := 0 to 2*n-1 do
    begin
        for j := 0 to 2*n-1 do
            if (j = i div 2) or (j = 2*n - 1 - i div 2) then
                write('*')
            else
                write(' ');
        // break;
        writeln();
    end;
end.