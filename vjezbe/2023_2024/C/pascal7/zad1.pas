program zad1;

var ime: array [0..50] of char;
    prezime: array [0..50] of char;
    imeIprezime: array [0..50] of char;
    i: integer;

function brojSamoglasnika(s: array of char):integer;
var i: integer;
begin
    brojSamoglasnika := 0;

    i := 0;
    while ord(s[i]) <> 0 do
    begin
        if  (s[i] = 'a') or (s[i] = 'e') or (s[i] = 'u') or (s[i] = 'i') or (s[i] = 'o') or
            (s[i] = 'A') or (s[i] = 'E') or (s[i] = 'U') or (s[i] = 'I') or (s[i] = 'O') then
            brojSamoglasnika := brojSamoglasnika + 1;

        i := i + 1;
    end;
end;

procedure uppercase(var s: array of char);
var i: integer;
begin
    i := 0;

    while ord(s[i]) <> 0 do
    begin
        if ('a' <= s[i]) and (s[i] <= 'z') then
            s[i] := chr(ord(s[i]) - ord('a') + ord('A'));

        i := i + 1;
    end;
end;

function strlen(s: array of char): integer;
begin
    strlen := 0;

    while(ord(s[strlen]) <> 0) do
        strlen := strlen + 1;
end;

//napisati funkciju koja provjerava da li je string palindrom.
//string je palindrom ako se isto cita s lijeva i s desna.

function palindrom(s: array of char): boolean;
var i, l: integer;
begin   
    l := strlen(s);

    palindrom := true;

    for i := 0 to l div 2 do
        if s[i] <> s[l - 1 - i] then
            palindrom := false;
end;

begin
    readln(ime);
    readln(prezime);
    imeIprezime := ime + prezime;
    writeln(imeIprezime);

    //provjeriti da li se jedan string nalazi kao podstring drugog stringa
    //provjeriti koliko puta se jedan string javlja kao podstring drugog 
    //naci najmanju duzinu ciklusa u stringu (strng se sasatoji od nekoliko ponavljanja ciklusa)
    

    // writeln(ime);
    // writeln(ord('a'));
    // writeln(chr(97));
end. 