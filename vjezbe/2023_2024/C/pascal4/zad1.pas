{
    provjeriti da li tacka (x, y) 
    lezi na pravoj ax + by + c = 0
}

program zad1;

var x, y, a, b, c: real;

begin
    readln(x, y, a, b, c);

    if a*x + b*y + c = 0 then
        writeln('Tacka pripada pravoj')
    else
        writeln('Tacka ne pripada pravoj');
end.