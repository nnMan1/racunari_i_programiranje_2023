program zad4;

var n, a, i: integer;
var arr: array of integer;

procedure stampaj_niz(arr: array of integer; n: integer);
var i: integer;
begin
    for i:=0 to n-1 do
        write(arr[i], ' ');
end;

procedure uvecaj_niz(arr: array of integer; n: integer);
var i: integer;
begin
    for i:=0 to n-1 do
        arr[i] := arr[i] + 1;
end;

procedure ucitaj_niz(var arr: array of integer; n: integer);
var i: integer;
begin
    for i := 0 to n-1 do
        read(arr[i]);
end;

procedure updateArray(a: integer; var b: array of integer; n: integer);
var i: integer;
begin
    for i := 0 to n-1 do
        if b[i] > 0 then
            b[i] := b[i] - a
        else
            b[i] := b[i] + a;
end;

function minArray(a: integer; arr: array of integer; n: integer): integer;
var i: integer;
begin
    minArray := 32767;

    for i := 0 to n-1 do
        if (arr[i] > a) and (arr[i] < minArray) then
            minArray := arr[i];
end;

begin
    readln(a, n);
    setlength(arr, n);

    ucitaj_niz(arr, n);
    writeln(minArray(a, arr, n));

    // stampaj_niz(arr, n);
    // writeln();

    // uvecaj_niz(arr, n);
    // stampaj_niz(arr, n);

end.