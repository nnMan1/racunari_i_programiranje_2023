//Armstrongov broj
program zad9;

var n, i: integer;

function armstronov(n :integer):boolean;
var s, np, c: integer;
begin
    s := 0;
    np := n;

    while n <> 0 do
    begin
        c := n mod 10;
        s := s + c * c * c;
        n := n div 10;
    end;

    //writeln(s);
    if s = np then
        armstronov := true
    else
        armstronov := false;
end;

begin
    readln(n);

    for i:= 1 to n do
        if armstronov(i) then
            writeln(i);
end.