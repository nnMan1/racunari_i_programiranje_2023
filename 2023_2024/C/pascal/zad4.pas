program zad4;

var i, j, i1, j1, br: integer;

begin
    readln(i, j);
    br := 2 * (i-1) + (j-1);
    i1 := br div 3 + 1;
    j1 := br mod 3 + 1;

    writeln(i1, ' ' ,j1);
end.