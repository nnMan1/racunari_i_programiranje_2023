program zad2;
var a, b, n, se, sc: int64;   //64 -bit cio broj

begin
    readln(a, b, n);

    b := b + a * 100;
    sc := b * n;
    se := sc div 100;
    sc := sc mod 100;

    writeln(se, ' ', sc);
end.