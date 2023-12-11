program zad1;

type nizInteger = array of integer;

var a, b: array of integer;
    n, i: integer;

procedure ucitajNiz(var arr: array of integer; n: integer);
var i: integer;
begin  
    for i:=0 to n-1 do
        read(arr[i]);    
end;

function changeSign(arr: array of integer; n: integer):integer;
var i: integer;
begin
    changeSign := 0;

    for i := 0 to n-2 do
        if arr[i] * arr[i+1] < 0 then
            changeSign := changeSign + 1;    
end;

function oddSegments(arr: array of integer; n: integer): integer;
var i, m: integer;
begin
    m := 0;
    oddSegments := 0;

    for i:=0 to n-1 do
    begin
        if arr[i] mod 2 = 1 then
            m := m + 1
        else
            m := 0;

        if m > oddSegments then
            oddSegments := m;
    end;
end;

procedure stamajBroj(arr: array of integer);
var i: integer;
begin
    for i := arr[0] downto 1 do
        write(arr[i]);
end;

function mul2(arr: array of integer): nizInteger;
var i: integer;
begin 
    setlength(mul2, arr[0] + 2);

    for i := 0 to arr[0]+1 do
        mul2[i] := 0;

    for i := 1 to arr[0] do
        mul2[i] := arr[i] * 2;

    for i := 1 to arr[0] do
    begin
        mul2[i+1] := mul2[i+1] + mul2[i] div 10;
        mul2[i] := mul2[i] mod 10;
    end;

    mul2[0] := arr[0];

    if mul2[arr[0] + 1] <> 0 then
        mul2[0] := arr[0] + 1;
end;

function max(a, b: integer): integer;
begin
    max := a;
    if (max < b) then
        max := b;
end;

function zbir(a, b: nizInteger): nizInteger;
var i, nl: integer;
begin
    nl := max(a[0], b[0]) + 1;
    setlength(zbir, nl + 1);

    for i := 0 to nl do
        zbir[i] := 0;

    for i := 1 to a[0] do
        zbir[i] := zbir[i] + a[i];

    for i := 1 to b[0] do
        zbir[i] := zbir[i] + b[i];

    for i := 1 to nl-1 do
    begin
        zbir[i+1] := zbir[i+1] + zbir[i] div 10;
        zbir[i] := zbir[i] mod 10;
    end;

    zbir[0] := nl-1;

    if zbir[zbir[0] + 1] <> 0 then
        zbir[0] := zbir[0] + 1;

end; 

begin
    // readln(n);
    // setlength(arr, n);
    // ucitajNiz(arr, n);
    // writeln(oddSegments(arr, n));
    
    setlength(a, 4);
    setlength(b, 3);

    a[0] := 3;
    a[1] := 5;
    a[2] := 7;
    a[3] := 9;

    b[0] := 2;
    b[1] := 3;
    b[2] := 5;

    stamajBroj(a);
    write(' + ');
    stamajBroj(b);
    write(' = ');
    stamajBroj(zbir(a, b));

end.