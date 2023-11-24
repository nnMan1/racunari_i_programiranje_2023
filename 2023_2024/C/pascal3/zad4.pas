program zad4;

var a, b ,k, i, t: integer;

begin
    readln(a, b, k);

    for i:=1 to k do
    begin
        writeln(i-1, ' ', a);
        t := -2*b-a;
        a := b;
        b := t;
    end;

    writeln(k, ' ', a);
end.