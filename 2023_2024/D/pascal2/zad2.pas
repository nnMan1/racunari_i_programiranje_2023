//štampa sve neparne brojeve 
//iz intervala [a, b], 
//od najmanjeg ka najvećem

program zad2;

var a, b, i: Integer;

begin
    readln(a, b);

    i := a;

    while i<=b do
    begin
        if i mod 2 = 1 then
            writeln(i);

        i := i + 1;
    end;
end.