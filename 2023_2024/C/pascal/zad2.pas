program zad2;

var x, y, x1, y1, x2, y2: real;
var a, b, c: real;

begin

    writeln('Unesite tacku X');
    readln(x, y);
    writeln('Unesite tacky X1');
    readln(x1, y1);
    writeln('Unesite tacku X2');
    readln(x2, y2);

    a := y1 - y2;
    b := -x1 + x2;
    c := x1*y2 - x2*y1;

    if a*x + b*y + c = 0 then
        writeln('Tacak pripada pravoj')
    else 
        writeln('Tacka ne pripada pravoj');




end.