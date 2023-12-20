program zad1;

var matr: array [0..10,0..10] of integer;
    n, m, i, j, d, br: integer;
    s: integer;

function min(x, y: integer): integer;
begin
    if x < y then 
        min := x
    else
        min := y;
end;

function max(x, y: integer): integer;
begin
    if x > y then 
        max := x
    else
        max := y;
end;

begin
    readln(n, m);

    // for i := 0 to n-1 do
    //     for j := 0 to m-1 do
    //         read(matr[i][j]);

    br := 0;

    for d := 0 to m+n-1 do
    begin
        i := 0;
        j := d;

        while (j >= 0) and (i < n) do
        begin
            if (i >= 0) and (j < m) then
            begin
                 matr[i][j] := br;
                 br := br + 1;
            end;
            
            i := i + 1;
            j := j - 1;
        end;
    end;

    // for d := 0 to min(n-1, m-1) do
    // begin
    //     i := 0;
    //     j := d;

    //     while (j >= 0) and (i < n) do
    //     begin
    //         matr[i][j] := br;

    //         br := br + 1;
    //         i := i + 1;
    //         j := j - 1;
    //     end;
    // end;

    // for d := n to m-1 do
    // begin
    //     i := 0;
    //     j := d;

    //     while(i<n) and (j>=0) do
    //     begin
    //         matr[i][j] := br;
    //         br := br + 1;
    //         i := i + 1;
    //         j := j - 1;
    //     end;
    // end;

    // for d := 1 to min(n-1, m-1) do
    // begin
    //     i := d;
    //     j := m-1;
    //     while (i<n) and (j>=0) do
    //     begin
    //         matr[i][j] := br;
    //         br := br + 1;
    //         i := i + 1;
    //         j := j - 1;
    //     end;
    // end;

    // for d := m to n-1 do
    // begin
    //     j := m-1;
    //     i := d;
    //     while (i<n) and (j>=0) do
    //     begin
    //         matr[i][j] := br;
    //         br := br + 1;
    //         i := i + 1;
    //         j := j - 1;
    //     end;
    // end;

    // for j := 0 to m - 1 do
    // begin
    //     s := 0;

    //     for i := 0 to n-1 do
    //         s := s + matr[i][j];

    //     write(s, ' ');
    // end;

    // s := 0;

    // for i := 0 to n-1 do
    //     s := s + matr[i][n-1-i];

    // writeln(s);

    //zbir elemenata iznad glavne dijagonale
    // s := 0;

    // for i := 0 to n-1 do
    //     for j := i+1 to n-1 do
    //         s := s + matr[i][j];

    // writeln(s);

    //zbir elemenata na glavnoj dijagonali
    // s := 0;
    // for i := 0 to n-1 do
    //     s := s + matr[i][i];

    // writeln(s);

    //stampa matrice
    // writeln();
    
    for i := 0 to n-1 do
    begin
        for j := 0 to m-1 do
            write(matr[i][j], ' ');

        writeln();
    end;


end.