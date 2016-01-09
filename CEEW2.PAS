program ceew2; {CeeW wersja 2}
uses crt;
function znaki(znak : integer) : char; {funkcja usuwa specjalne znaki} 
begin
if (znak = 13) or (znak = 10) then znaki:= char(znak - 1) {usuwa dla znaków entera}
else znaki:= char(znak);
end;
begin
randomize; {inicjacja losowania}
repeat {powtarzaj do - until}
textcolor(random(32)); {losowy kolor dla znaków - maksymalna paleta kolorów od 0 do 32}
textbackground(random(32)); {losowy kolor w tle znaku (równierz maksymalna paleta kolorów)}
write(znaki(random(255))); {losowy znak - maksymalny zestaw znaków od 0 do 255}
sound(random(12000) + 200); {losowy impuls kwadratowy speakera od 200hz do 12khz}
delay(random(20) + 1); {przerwa czasowa od 1ms do 20ms}
until keypressed; {oczekiwanie na pobór znaku z klawiatury (z bufora)}
nosound; {wyciszenie speakera}
end.
