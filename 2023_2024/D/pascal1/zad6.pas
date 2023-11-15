program zad6;

var a, b, c, t: Integer;

begin
    readln(a, b, c);

    if a > b then
    begin
        t := a;
        a := b;
        b := t;
    end;

    if a > c then
    begin
        t := a;
        a := c;
        c := t;
    end;

    if b > c then
    begin
        t := b;
        b := c;
        c := t;
    end;

    writeln(a,' ', b, ' ', c);
end.