program zad3;

var m: integer;

function max(a, b: integer):integer;
begin
    if a > b then
        max := a
    else
        max := b;
end;

function pow(a: real; n :integer):real;
var i: integer;
begin
    pow := 1;

    for i:= 1 to n do
        pow := pow * a;
end;

function uvecaj(a :integer):integer;
begin
    a := a + 1;
end;

function suma_djelilaca(n :integer):integer;
var i: integer;
begin
    suma_djelilaca := 0;

    for i:=1 to n do
        if n mod i = 0 then
            suma_djelilaca := suma_djelilaca + i;
end;

function prost(n :integer):boolean;
var i:integer;
begin
    prost := true;
    i := 2;

    while i <= sqrt(n) do
    begin
        if n mod i = 0 then
            prost := false;

        i := i + 1;
    end;
end;

///napisati funkciju koja nalazi nzd dva broja
function NZD(a, b:integer):integer;
var q: integer;
begin
    while b <> 0 do
    begin
        q := a mod b;
        a := b;
        b := q;
    end;

    NZD := a;
end;
///u prvom redu standardnog ulaza nalazic se cio broj n >= 2;
///u drugom redu nalazi se n cijelih brojeva a1, a2, a3, ..., an
///Stampati NZD(a1, a2, a3, ..., an) = NZD(NZD(a1, a2), a3, ..., an).


// funckiju sjenka koja uzima dva realna broja koji predstavljaju 
// koordinate tecke X. Provjeriti da li se tacka X nalazi u osjencenoj oblasti
function sjenka(x, y: real): boolean;
begin
    sjenka := true;

    if x * x + y * y > 9 then
        sjenka := false;
    
    if (x > 0) and (y < 0) then
        sjenka := false;

    if (x > 0) and (y > 0) and (2*x - 2*y - 3 < 0) then
        sjenka := false;

    if (x < 0) and (y < 0) and (y*y - 2*x - 1 > 0) and (2*x - 2*y - 3 < 0) then
        sjenka := false;

    if (x < 0) and (y > 0) and (y*y - 2*x - 1 < 0) then
        sjenka := false;
end;

//Napisati funckiju koja provjerava da li je godina prstupna
//godina je prestupna ako je djevljivas sa 400, 
//ili je djeliva sa 4 a nije dljeliva sa 100

function prestupna(d: integer): boolean;
begin
    prestupna := false;
    if (d mod 400 = 0) or (d mod 4 = 0) and (d mod 100 <> 0) then

        prestupna := true;
end;

//Napisati funkciju koja uzima tri 
//argimenta d, m, g koji prrdstavljaju dan, mjesec i godinu
//i nalazi broj dana od pocetka godine
//Voditi racuna o prestupnim godinama

function br_dana_od_pocetka_godine(d, m ,g: integer):integer;
begin
    br_dana_od_pocetka_godine := d;

    if m > 1 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 31;

    if m > 2 then
        if prestupna(g) then
            br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 29
        else
            br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 28;

    if m > 3 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 31;

    if m > 4 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 30;

    if m > 5 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 31;
    
    if m > 6 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 30;

    if m > 7 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 31;

    if m > 8 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 31;

    if m > 9 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 30;

    if m > 10 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 31;

    if m > 11 then
        br_dana_od_pocetka_godine := br_dana_od_pocetka_godine + 30;
end;

///napisati funkciju koja nalazi broj dana od 1,1,1.
function br_dana_od_111(d, m, g: integer):longint;
begin
    br_dana_od_111 := br_dana_od_pocetka_godine(d, m, g);
    br_dana_od_111 := br_dana_od_111 + 365 * (g - 1);
    br_dana_od_111 := br_dana_od_111 + (g - 1) mod 4;
    br_dana_od_111 := br_dana_od_111 - (g - 1) mod 100;
    br_dana_od_111 := br_dana_od_111 + (g - 1) mod 400;    
end;

///napisati funckiju koja nalazi razliku dva datuma
function razlika_datuma(d1, m1, g1, d2, m2, g2: integer):longint;
begin
    razlika_datuma := br_dana_od_111(d2, m2, g2) - br_dana_od_111(d1, m1, g1);
end;

begin
    writeln(br_dana_od_111(1, 2, 1));
end. 