{
    za date prave 
    y = a1 x + b1 ,
    y = a2 x + b2 i 
    y = a3 x + b3 
     ispituje da li obrazuju trougao. 
     Ako je to tačno trba da štampa površinu trougla.
}

// a1x + b1 = a2 x + b2
// (a1 - a2) x = b2 - b1
// x = (b2 - b1) / (a1 - a2)
// y = a1 x + b1

program zad1;
var a1, b1, a2, b2, a3, b3: real;
var x1, y1, x2, y2, x3, y3: real;
var a, b, c: real;

procedure presjekPravih(a1, b1, a2, b2:real; var x, y: real);
begin
    x := (b2 - b1) / (a1 - a2);
    y := a1 * x + b1;
end;

function rastojaneTacaka(x1, y1, x2, y2: real):real;
var dx, dy: real;
begin
    dx := x1 - x2;
    dy := y1 - y2;
    rastojaneTacaka := sqrt(dx*dx + dy*dy);
end;

function povrasina(a, b, c: real): real;
var s:real;
begin
    s := (a + b + c) / 2;
    povrasina := sqrt(s * (s-a) * (s-b) * (s-c));
end;

begin
    readln(a1, b1);
    readln(a2, b2);
    readln(a3, b3);

    if (a1 = a2) or (a1 = a3) or (a2 = a3) then
        writeln('Prave su paralelne')
    else 
    begin
        presjekPravih(a1, b1, a2, b2, x1, y1);
        presjekPravih(a1, b1, a3, b3, x2, y2);
        presjekPravih(a2, b2, a3, b3, x3, y3);

        a := rastojaneTacaka(x1, y1, x2, y2);
        b := rastojaneTacaka(x1, y1, x3, y3);
        c := rastojaneTacaka(x2, y2, x3, y3);

        writeln(povrasina(a, b, c):0,2);
    end;
end.