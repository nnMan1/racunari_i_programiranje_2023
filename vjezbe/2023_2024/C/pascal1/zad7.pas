program zad7;

var g: Integer;

begin
    readln(g);

    if (g mod 400 = 0) or (g mod 100 <> 0) and (g mod 4 = 0) then
        writeln('Godina je prestupna')
    else
        writeln('Godina nije prestupna');
end.