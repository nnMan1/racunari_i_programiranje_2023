program zad1;

var str: array [0..25] of char;
    i: integer;

//Napisati funckiju koja tekst pretvara iz malih slova u velika slova
procedure uppercase(var str: array of char);
var i: integer;
begin
    i := 0;

    while ord(str[i]) <> 0 do
    begin
        if (str[i] >= 'a') and (str[i] <= 'z') then
            str[i] := chr(ord(str[i]) - 32);
        
        i := i + 1;
    end;
end;

//Napisati funkciju koja nalazi broj rijeci u nekom stringu
function brojRijeci(var str: array of char):integer;
var i: integer;
    tmp: boolean;
begin
    brojRijeci := 0;
    tmp := false;
    i := 0;

    while ord(str[i]) <> 0 do
    begin
        if str[i] <> ' ' then
        begin
            if (str[i] >= 'a') and (str[i] <= 'z') or (str[i] >= 'A') and (str[i] <= 'Z') then
                tmp := true;
        end
        else
        begin
            if tmp then
                brojRijeci := brojRijeci + 1;
            
            tmp := false;
        end;

        i := i + 1;
    end;

    if tmp then
        brojRijeci := brojRijeci + 1;
end;

//Napisati funckiju koja tekst pretvara iz velikih slova u mala slova
procedure lowercase(var str: array of char);
var i: integer;
begin
    i := 0;

    while ord(str[i]) <> 0 do
    begin
        if (str[i] >= 'A') and (str[i] <= 'Z') then
            str[i] := chr(ord(str[i]) + 32);
        
        i := i + 1;
    end;
end;

function strlen(str: array of char): integer;
begin
    strlen := 0;
    while(ord(str[strlen]) <> 0) do
        strlen := strlen + 1;
end;

//napisati fukciju koja provjerava da li je string palindrom.
//string je palindrom ako se cita isto sa lijeva u desno i sa desna u lijevo
function palindrom(str: array of char):boolean;
var i, l: integer;
begin
    l := strlen(str);

    palindrom := true;

    for i := 0 to l div 2 do
        if str[i] <> str[l - 1 - i] then
            palindrom := false;
end;

//napisati funckiju koja broji koliko neka rijec sadrzi samoglasnika
function brojSamoglasnika(str: array of char):integer;
var i: integer;
begin
    brojSamoglasnika := 0;
    i := 0;

    while ord(str[i]) <> 0 do
    begin
        if (str[i] = 'a') or (str[i] = 'e') or (str[i] = 'i') or (str[i] = 'o') or (Str[i] = 'u') or
           (str[i] = 'A') or (str[i] = 'E') or (str[i] = 'I') or (str[i] = 'O') or (Str[i] = 'U') then
            brojSamoglasnika := brojSamoglasnika + 1;

        i := i + 1;
    end; 
end; 

procedure ukloniBjeline(var str: array of char);
var i, j: integer;
begin

    i := 0;
    j := 0;

    while ord(str[j]) <> 0 do 
    begin
        if str[j] <> ' ' then
        begin
            str[i] := str[j];
            i := i + 1;
        end 
        else
        begin
            if (i <> 0) and (str[i-1] <> ' ') then
            begin
                str[i] := str[j];
                i := i + 1;
            end;
        end;

        j := j + 1;
    end;

    while i <= j do
    begin
        str[i] := chr(0);
        i := i + 1;
    end;
        
end;

begin
    readln(str);
    ukloniBjeline(str);
    writeln(str);

end.