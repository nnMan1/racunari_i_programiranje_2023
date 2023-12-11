program zad2;

uses math;

var a: array [5..10] of integer;
var b: array of integer; //kasnije cemo da alociramo memoriju
var n, i: integer;

procedure printArr(a: array of integer; n: integer);
begin
    for i:=0 to n-1 do
        write(a[i], ' ');

end;

procedure readArr(var a: array of integer; n: integer);
var i: integer;
begin
    for i := 0 to n-1 do
        read(a[i]);
end;

procedure incArr(var a: array of integer; n: integer);
var i: integer;
begin
    for i := 0 to n-1 do
        a[i] := a[i] + 1;
end;

function minArray(a: integer; b: array of integer; n: integer): integer;
var i: integer;
begin
    minArray := 32000;

    for i := 0 to n-1 do
        if (b[i] > a) and (b[i] < minArray) then
            minArray := b[i];
end;

function minArrayIndex(a: integer; b: array of integer; n: integer): integer;
var i: integer;
begin
    minArrayIndex := -1;

    for i := 0 to n-1 do
        if (b[i] > a) and ((minArrayIndex = -1) or (b[i] < b[minArrayIndex])) then
            minArrayIndex := i;
end;

procedure fillThirteenSeventeen(a: integer; var b: array of integer; n: integer);
var i:integer;
var pom:integer;
begin
    pom := a;
    for i := 0 to n-1 do
    begin  
        while (pom mod 13 <> 0) and (pom mod 17 <> 0) do
            pom := pom + 1;

        b[i] := pom;
        pom := pom + 1;
    end;
end;

function brojJedinica(n, b: integer): integer;
begin
    //za broj n provjerava koliko 
    //jedinica ima u brojnom sistemu sa odnovom b
    brojJedinica := 0;

    while n <> 0 do
    begin
        if n mod b = 1 then
            brojJedinica := brojJedinica + 1;
        
        n := n div b;
    end;

end;

procedure jedinice(a: array of integer; k, n, l: integer);
var i: integer;
begin
    for i:= 0 to l-1 do 
        if brojJedinica(a[i], k) > n then
            writeln(a[i]);
end;

function brojParnihCifara(a: integer): integer;
begin
    brojParnihCifara := 0;

    while a <> 0 do
    begin
        if a mod 2 = 0 then
            brojParnihCifara := brojParnihCifara + 1;

        a := a div 10;
    end;
end;

function parneCifre(a: array of integer; n, k: integer):integer;
begin
    parneCifre := 0;

    for i := 0 to n-1 do
        if brojParnihCifara(a[i]) > k then
        begin
            writeln(a[i]);
            parneCifre := parneCifre + 1;
        end;
end;

function zbirElemenata(a: array of integer; n: integer): integer;
var i: integer;
begin
    zbirElemenata := 0;

    for i:=0 to n-1 do
        zbirElemenata := zbirElemenata + a[i];
end;

function aritmetickaSredina(a: array of integer; n:integer): real;
begin   
    aritmetickaSredina := zbirElemenata(a, n) / n;
end;

function najbliziAS(a: array of integer; n: integer): integer;
var i: integer;
var as: real;
begin
    as := aritmetickaSredina(a, n);

    najbliziAS := a[0];

    for i := 0 to n-1 do
        if abs(as - a[i]) < abs(as - najbliziAS) then
            najbliziAS := a[i];

end;

begin

    readln(n);
    setlength(b, n);

    readArr(b, n);
    writeln(najbliziAS(b,n));

end.


