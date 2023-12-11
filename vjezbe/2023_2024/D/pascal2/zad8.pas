//napisati program koji za unijeto n
//stampa piramidu po primjeru sa slike
//5
//1 *
//2 **
//3 ***
//4 ****
//5 *****
//1 ****
//2 ***
//3 **
//4 *

{
Za domaci
5
    *
   **
  ***
 ****
*****
}

{
5
*****
 ****
  ***
   **
    *
}

program zad8;

var n, i, j: integer;
begin 
    readln(n);

    i := 1;

    while i <= n do
    begin   
        //istampamo vrstu i
        j := 1;
        while j <= i do
        begin
            write(j, ' ');
            j := j + 1;
        end;

        writeln();

        i := i + 1;
    end;

    i := 1;
    while i <= n-1 do
    begin
        j := 1;

        while j <= n - i do
        begin
            write(j, ' ');
            j := j + 1;
        end;
        writeln();
        i := i + 1;
    end;
end.