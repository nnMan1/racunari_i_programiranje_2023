program zad1;

uses math;

type niz_int = array of integer;
     niz_double = array of double;

var n, i: integer;
    arr, arr1, arr2: niz_int;
    rez: niz_double;

procedure ucitaj_niz(var arr: array of integer; n: integer);
var i: integer;
begin
    for i := 0 to n-1 do
        read(arr[i]);
end;

procedure stamaj_niz(arr: array of integer; n: integer);
var i: integer;
begin
    for i := 0 to n-1 do
        write(arr[i], ' ');
end;

procedure zamijeni_vrijednosti(var a, b: integer);
var t: integer;
begin
    t := a;
    a := b;
    b := t;
end;

procedure sortiraj_niz(var arr: array of integer; n: integer);
var i, j, idx: integer;
begin
    //insertion sort
    for i := 0 to n-1 do
    begin
        idx := i;

        for j := i+1 to n-1 do
            if arr[idx] > arr[j] then
                idx := j;

        zamijeni_vrijednosti(arr[idx], arr[i]);
    end;
    
end;

function aritmeticka_sredina(arr: niz_int; n: integer): double;
var i: integer;
begin
    aritmeticka_sredina := 0;

    for i:=0 to n-1 do
        aritmeticka_sredina := aritmeticka_sredina + arr[i];
    
    aritmeticka_sredina := aritmeticka_sredina  / n;
end;

function novi_niz(arr: niz_int; n: integer): niz_double;
var as: double;
    i : integer;
begin
    setlength(novi_niz, n);

    as := aritmeticka_sredina(arr, n);

    for i := 0 to n-1 do
        novi_niz[i] := abs(as - arr[i]);


end;

function broj_pojavljivanja(k: integer; arr: niz_int; n: integer): integer;
var i: integer;
begin
    broj_pojavljivanja := 0;

    for i:= 0 to n-1 do
        if arr[i] = k then
            broj_pojavljivanja := broj_pojavljivanja + 1;
end;

procedure frekvencije(arr: niz_int; n:integer);
var i: integer;
begin
    for i:=0 to n-1 do
        write(broj_pojavljivanja(arr[i], arr, n), ' ');
end;

procedure frekvencije2(arr: niz_int; n:integer);
var i: integer;
    f: array [0..110] of integer;
begin
    for i:=0 to 109 do
        f[i] := 0;

    for i:=0 to n-1 do  
        f[arr[i]] := f[arr[i]] + 1;

    for i:= 0 to n-1 do
        write(f[arr[i]], ' ');
end;

procedure stampaj_broj(arr: niz_int);
var i: integer;
begin
    for i := arr[0] downto 1 do
        write(arr[i]);
end;

procedure mul2(var arr: niz_int);
var i: integer;
begin
    for i := 1 to arr[0] do
        arr[i] := arr[i] * 2;
  
    arr[arr[0] + 1] := 0;
  

    for i := 1 to arr[0] do
    begin
        arr[i+1] := arr[i+1] + arr[i] div 10;
        arr[i] := arr[i] mod 10;
    end;

    if arr[arr[0] + 1] > 0 then
        arr[0] := arr[0] + 1;
end;

procedure zbir(a, b: niz_int; var c: niz_int);
var i: integer;
begin

    for i:=0 to max(a[0], b[0]) + 1 do
        c[i] := 0;

    for i:=1 to a[0] do
        c[i] := a[i];
    
    for i:=1 to b[0] do
        c[i] := c[i] + b[i];

    c[0] := max(a[0], b[0]);

    for i := 1 to c[0] do
    begin
        c[i+1] := c[i+1] + c[i] div 10;
        c[i] := c[i] mod 10;
    end;

    if c[c[0] + 1] <> 0 then
        c[0] := c[0] + 1;


end;

begin

    // readln(n);

    // setlength(arr, n);
    // ucitaj_niz(arr, n);

    // frekvencije2(arr, n);
    // rez := novi_niz(arr, n);
    setlength(arr, 50);
    setlength(arr1, 50);
    setlength(arr2, 50);
    arr[0] := 1;
    arr[1] := 1;

    for i:=1 to 7 do
        mul2(arr);

    arr1[0] := 5;
    arr1[1] := 5;
    arr1[2] := 1;
    arr1[3] := 9;
    arr1[4] := 7;
    arr1[5] := 9;

    zbir(arr, arr1, arr2);

    stampaj_broj(arr);  writeln();
    stampaj_broj(arr1); writeln();
    stampaj_broj(arr2);
    
end.