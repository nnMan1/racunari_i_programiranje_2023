program zad3;
uses math;

var a, b ,c, f: real;
var p, q, r, s: real;
var pov, n:real;

begin
    readln(a, b, c, f);
    readln(p, q, r, s);

    p := p / 100;
    q := q / 100;
    r := r / 100;
    s := s / 100;   

    pov := 2 * a * c + 2 * b * c + a * b;
    pov := pov - p * q - 2 * r * s;

    n := pov / f;

    writeln(ceil(n));
end.