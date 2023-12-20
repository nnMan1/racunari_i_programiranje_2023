program zad1;

var matr: array[0..10,0..10] of integer;
    n, m, i, j, s: integer;

begin
    readln(n, m);

    for i := 0 to n-1 do
        for j := 0 to m-1 do
            read(matr[i][j]);

    //napisati program koji nalazi zbir elemenata koji se nalaze u dijagonalama 
    //oko glavne dijagonale
    
    s := 0;

    for i:=0 to n-1 do
    begin
        if(i -1 >= 0) then
            s := s + matr[i][i-1];
        
        if(i+1 <= m-1) then
            s := s + matr[i][i+1];
    end;

    writeln(s);

    //zbir elemenata iznad sporedne dijagonale
    // s := 0;
    // for i := 0 to n-1 do
    //     for j := 0 to m - 2 -i do
    //         s := s + matr[i][j];

    // writeln(s);

    
    //zbir iznad glavne dijagonale
    // s := 0;
    // for i:=0 to n-1 do
    //     for j:=i+1 to m-1 do
    //         s := s + matr[i][j];

    // writeln(s);

    //brir elemenata po vrstama
    // for i := 0 to n-1 do
    // begin
    //     s := 0;

    //     for j := 0 to m-1 do
    //         s := s + matr[i][j];

    //     writeln(s);
    // end;
    
    //zbir elemenata po kolonama
    // for j := 0 to m-1 do
    // begin
    //     s := 0;

    //     for i := 0 to n-1 do
    //         s := s + matr[i][j];

    //     writeln(s, ' ');
    // end;

    // stampa transponovane matrice
    // for j := 0 to m-1 do
    // begin
    //     for i := 0 to n-1 do
    //         write(matr[i][j], ' ');
        
    //     writeln();
    // end;

    //stampa matrice

    // for i := 0 to n-1 do
    // begin
    //     for j := 0 to m-1 do
    //         write(matr[i][j], ' ');

    //     writeln();
    // end;
end.