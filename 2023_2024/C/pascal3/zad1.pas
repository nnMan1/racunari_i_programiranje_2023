//stampati sve brojeve od 1 do 10 osim broja 5
program zad1;
var i: integer;

begin
    for i := 10 downto 1 do 
    begin
        if i = 5 then
            break;

        write(i, ' ');
    end;  
end.