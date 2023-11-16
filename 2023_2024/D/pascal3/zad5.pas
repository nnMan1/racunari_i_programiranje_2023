//napisati program koji ucitava n i racuna
//2^2 + 2^3 + 2^4 + ... + 2^n
program zad5;
var n, i, s, p: integer;

begin
    readln(n);

    s := 0;
    p := 2;

    for i:=2 to n do
    begin 
        p := p * 2;
        s := s + p;
    end;

    writeln(s);
end.