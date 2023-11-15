program zad8;
var x0, x1, x, y, d, dx ,dy: real;
begin
    readln(x0, x1, x, y);

    if x < x0 then
    begin
        dx := x - x0;
        dy := y;
        d := sqrt(dx * dx + dy * dy);
        writeln(d:0:5);
    end;

    if (x >= x0) and (x <= x1) then
        writeln(y:0:5);
    
    if x > x1 then
    begin
        dx := x - x1;
        dy := y;
        d := sqrt(dx * dx + dy * dy);
        writeln(d:0:5);
    end;

end.