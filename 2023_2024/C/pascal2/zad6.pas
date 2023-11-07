//stampati sve brojeve iz intervala od 1 do 10
//osim broj 5
//i zbir istampanih brojeva
program zad6;

var i: integer = 0;
var s: integer = 0;

begin 
    while(i < 10) do
    begin
        i := i + 1;

        if i = 5 then
            continue;

        writeln(i);
        s := s + i;
    end;

    writeln(s);
end.