program zad7;

var a, b, c, d, x1, x2: real;

begin 

    readln(a, b, c);

    d := b * b - 4 * a * c; 

    if d < 0 then
        writeln('Jendancina nema rjesenja')
    else
        if d = 0 then
        begin
            x1 := -b / (2 * a);
            writeln(x1:0:5);
        end
        else 
        begin
            x1 := (-b - sqrt(d)) / (2 * a);
            x2 := (-b + sqrt(d)) / (2 * a);

            writeln(x1:0:5, ' ', x2:0:5);
        end;


end.