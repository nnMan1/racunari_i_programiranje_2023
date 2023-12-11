//nalazi NZS i NZD brojeva a i b
program zad7;

var a, b, ap, bp, q, i, NZD: integer;

begin
    readln(a, b);

    // i := 1;

    // while (i <= a) do
    // begin
    //     if (a mod i = 0) and (b mod i = 0) then
    //         NZD := i;

    //     i := i + 1;
    // end;

    // writeln('NZD = ', NZD);
    // writeln('NZS = ', a * b div NZD);
    
    ap := a;
    bp := b;

    while(b <> 0) do
    begin
        write('NZD(', a,',',b,')=');
        q := a mod b;
        a := b;
        b := q;
    end;

    writeln(a);
    writeln('NZS = ', ap * bp div a);
end.