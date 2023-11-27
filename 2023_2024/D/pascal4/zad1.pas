{
    Dat je cio broj k(1 <=k <= 180), i niz cifara
    10111213...99
    Koji se dobija kada se svi dvocifreni brojevi 
    redom zapisu jedan iza drugog.
    Za datko k, odrediti dvocifreni broj koji sadrzi k-tu cifru
    Primjer:
    k=7
    13
}

program zad1;

var k, n: integer;

begin
    readln(k);
    writeln(10 + (k - 1) div 2);
end.
