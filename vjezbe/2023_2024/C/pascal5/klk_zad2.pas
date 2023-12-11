program zad2;

var k, o, min1, min2, max, i, s: integer;

begin
    readln(k);

    min1 := 25;
    min2 := 25;
    max := 0;
    s := 0;

    for i := 1 to k do
    begin
        readln(o);

        if o < min1 then //trenutna ocjena manja od do sad najmanje ocjene
        begin
            min2 := min1;
            min1 := o;
        end
        else 
        if o < min2 then
            min2 := o;

        if o > max then 
            max := o;

        s := s + o;

    end;

    writeln((s - min1 - min2 - max) / (k - 3):0:2);
end.