//[-2^(n-1), 2^(n-1) - 1]
//za dati cio broj izračunava sumu cifara.
program zad7;

//shortint - 8 bit 2pc
//integer - 16bit 2pc
//longint - 32bit 2pc ~ [-2*10^9, 2*10^9]
//int64   - 64bin 2pc ~ [-4*10^18, 4 * 10^18]

var n: shortint;
var s: integer = 0;

begin
    readln(n);

    while n<>0 do
    begin   
        s := s + n mod 10;
        n := n div 10;
    end;

    writeln(s);
end.