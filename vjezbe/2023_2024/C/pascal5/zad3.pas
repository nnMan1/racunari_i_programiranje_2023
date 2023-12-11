program zad3;

var arr: array [-5..7] of integer;
var i: integer;

begin
    for i := -5 to 7 do
        arr[i] := i * i;

    for i := -5 to 7 do
        write(arr[i], ' ');
end.