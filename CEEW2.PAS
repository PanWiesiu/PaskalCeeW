program ceew2;
uses crt;
function znaki(znak : integer) : char;
begin
if (znak = 13) or (znak = 10) then znaki:= char(znak - 1)
else znaki:= char(znak);
end;
begin
randomize;
repeat
textcolor(random(32));
textbackground(random(32));
write(znaki(random(255)));
sound(random(12000)+200);
delay(random(20)+1);
until keypressed;
nosound;
end.
