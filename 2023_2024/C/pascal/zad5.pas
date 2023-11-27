program zad6;

var n: integer;

//Napisati funkciju koja provjerava da li je broj a manji od broja b
function uporedi(a, b: integer):boolean;
begin
    if a < b then
        uporedi := true
    else
        uporedi := false;
end;

function sadrziCifru(n, c: integer): boolean;
begin
    sadrziCifru := false;

    while n <> 0 do
    begin
        if n mod 10 = c then
            sadrziCifru := true;
        
        n := n div 10;
    end;
end;

//Napisati funkciju koja provjerava koliko razlicitih 
//cifara sadrzi predati arguement
function brojCifara(n: integer):integer;
var i: integer;
begin
    brojCifara := 0;

    for i := 0 to 9 do
        if sadrziCifru(n, i) then
            brojCifara := brojCifara + 1;
end;

//napisati funkciju koja provjerava da li je predati argument prost broj
function prost(n:integer):boolean;
var i: integer;
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

function prestupna(g: integer):boolean;
begin
    prestupna := (g mod 400 = 0) or (g mod 100 <> 0) and (g mod 4 = 0);
end;

function brojDanaOdPocetkaGodine(d, m ,g: integer): integer;
begin
    brojDanaOdPocetkaGodine := d;

    if m > 1 then
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 31;

    if m > 2 then
        if prestupna(g) then
            brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 29
        else
            brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 28;

    if m > 3 then
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 31;
    
    if m > 4 then
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 30;

    if m > 5 then
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 31;

    if m > 6 then
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 30;

    if m > 7 then 
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 31;

    if m > 8 then 
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 31;

    if m > 9 then
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 30;

    if m > 10 then 
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 31;
    
    if m > 11 then
        brojDanaOdPocetkaGodine := brojDanaOdPocetkaGodine + 30;
end;

function brojDanaOd111(d, m, g: integer): longint;
begin
    brojDanaOd111 := brojDanaOdPocetkaGodine(d, m, g);

    brojDanaOd111 := brojDanaOd111 + (g-1) * 365
                                   + (g-1) div 4
                                   - (g-1) div 100
                                   + (g-1) div 400;
                        
end;

function razlikaDatuma(d1, m1, g1, d2, m2, g2: integer):longint;
begin
    razlikaDatuma := brojDanaOd111(d1, m1, g1) - brojDanaOd111(d2, m2, g2);
end;

function NZD(a, b: integer): integer;
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

function NZDRec(a, b: integer): integer;
begin
    if b = 0 then
        NZDRec := a
    else
        NZDRec := NZDRec(b, a mod b);
end;

begin

    writeln(NZDRec(116, 64))
    // readln(a, b);

    // for i := a to b do
    // begin
    //     j := i mod 10;
    //     d := i div 10 mod 10;
    //     s := i div 100 mod 10;
    //     h := i div 1000;

    //     if (j = d) and (d = s) and (s <> h) then
    //         writeln(i);
        
    //     if (j = d) and (d = h) and (h <> s) then
    //         writeln(i);

    //     if (j = s) and (s = h) and (h <> d) then
    //         writeln(i);

    //     if (d = s) and (s = h) and (h <> j) then
    //         writeln(i);
    //  end;
end.