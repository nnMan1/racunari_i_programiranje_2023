//savrsen broj
program zad8;

var m, i, n, s: integer;

begin

    readln(m);

    for n := 1 to m do
    begin 
        s := 0;

        for i:=1 to n-1 do
            if n mod i = 0 then
                s := s + i;

        if s = n then
            writeln(n);
    end;
end.