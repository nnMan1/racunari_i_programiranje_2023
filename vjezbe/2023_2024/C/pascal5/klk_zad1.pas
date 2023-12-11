program zad1;

uses math;

var x0, y0, x1, y1, x, y, d: real;

function rastojanje_dvije_tacke(x0, y0, x1, y1: real):real;
var dx, dy: real;
begin
    dx := x0 - x1;
    dy := y0 - y1;
    rastojanje_dvije_tacke := sqrt(dx*dx + dy*dy);
end;

begin
    readln(x0, y0, x1, y1, x, y);

    d := 10000;

    if (x<=x0) and (y<=y0) then
        d := rastojanje_dvije_tacke(x, y, x0, y0);

    if (x < x1) and (y1 < y) then
        d := rastojanje_dvije_tacke(x, y, x0, y1);

    if (x >= x1) and (y >= y1) then
        d := rastojanje_dvije_tacke(x, y, x1, y1);

    if (x >= x1) and (y < y0) then
        d := rastojanje_dvije_tacke(x, y, x1, y0);

    if (y0 <= y) and (y <= y1) then
        d := min(abs(x - x0), abs(x - x1));

    if (x0 <= x) and (x <= x1) then
    begin
        d := min(d, abs(y - y0));
        d := min(d, abs(y - y1));
    end;

    writeln(d:0:2);

end.