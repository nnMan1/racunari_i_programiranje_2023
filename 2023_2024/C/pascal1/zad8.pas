program zad8;

var x0, x1, x, y, dx, dy, d: real;

begin

    readln(x0, x1, x, y);

    if x < x0 then //tacka se nalazi sa lijeve strane duzi
    begin
        dx := x - x0;
        dy := y;
        d := sqrt(dx * dx + dy * dy);
        writeln(d);
    end
    else
    begin
        if x < x1 then //tacka se nalazi ispod / iznad duzi
        begin
            d := abs(y);
            writeln(d);
        end
        else
        begin //tacka se nalazi sa desne strane duzi
            dx := x - x1;
            dy := y;
            d := sqrt(dx * dx + dy * dy);
            writeln(d);
        end;
    end;
end.