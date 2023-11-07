//Napisati program koji stampa sve 
//neparne brojeve iz interava [a-b]
program zad2;

var a, b, i: integer;

begin

    readln(a, b);

    i := a;

    while i <= b do
    begin
        if i mod 2 = 1 then
            writeln(i);
        
        i := i + 1;
    end;

end.
