program zad1;

var x, y: integer;

procedure stampaj(n: integer);
begin
    writeln(n);
end;

procedure swap(var a, b: integer);
var t: integer;
begin
    t := a;
    a := b;
    b := t;
end;

begin
    x := 5;
    y := 7;
    swap(x, y);
    writeln(x, ' ', y);
end.