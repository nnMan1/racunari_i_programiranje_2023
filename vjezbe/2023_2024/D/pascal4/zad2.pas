{
    Za zadati obim k. 
    Naci sve trouglove sa cejlobrojnim duzinama 
    stranica ciji je obim k.
}

program zad2;

var o, a, b ,c: integer;

begin   
    readln(o);

    for a := o div 3 to (o - 1) div 2 do
    begin
        for b := a downto (o - a + 1) div 2 do
            writeln(a, ' ', b, ' ', o - a - b);
    end;

    for a := 1 to o do
        for b := 1 to a do
        begin
            c := o - a - b;
            if (b >= c) and (c > 0) and (b + c > a) then
                writeln(a, ' ', b,' ', c);
        end;

end.