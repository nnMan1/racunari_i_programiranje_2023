program zad2;

var a1, b1, a2, b2, a3, b3: real;
var x1, y1, x2, y2, x3, y3: real;
var a, b, c: real;

procedure presjek_pravih(a1, b1, a2, b2: real; var x, y: real);
begin
    x := (b2-b1) / (a1-a2);
    y := a1 * x + b1;
end;

function rastojanje_tacaka(x1, y1, x2, y2: real):real;
var d1, d2: real;
begin
    d1 := x1 - x2;
    d2 := y1 -y2;
    rastojanje_tacaka := sqrt(d1*d1 + d2*d2);
end;

function povrsina(a, b, c: real): real;
var s: real;
begin
    s := (a + b + c) / 2;
    povrsina := sqrt(s * (s-a) * (s-b) * (s-c));
end;

begin
    readln(a1, b1, a2, b2, a3, b3);

    if (a1 = a2) or (a1 = a3) or (a2 = a3) then
        writeln('Prave ne obrazuju trougao')
    else 
    begin
        presjek_pravih(a1, b1, a2, b2, x1, y1);
        presjek_pravih(a1, b1, a3, b3, x2, y2);
        presjek_pravih(a3, b3, a2, b2, x3, y3);

        a := rastojanje_tacaka(x1, y1,  x2, y2);
        b := rastojanje_tacaka(x1, y1,  x3, y3);
        c := rastojanje_tacaka(x3, y3,  x2, y2);

        writeln(povrsina(a, b, c):0:5);
    end;

end.