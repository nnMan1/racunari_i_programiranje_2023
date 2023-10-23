program zad5;
var a, b, c: real;
    s, p: real;

begin
    readln(a, b, c);
    s := (a + b + c) / 2;

    p := sqrt(s * (s - a) * (s - b) * (s - c));
    writeln(p);
end.