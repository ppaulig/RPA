{function ESVOCAL (car: char ): boolean;
{ Devuelve verdadero si car es vocal, caso contrario devuelve falso}}

Function ESVOCAL (car: char):Boolean;
Begin
  if car = 'A' OR car = 'a' OR car = 'E' OR car = 'e' OR car = 'I' OR car = 'i' OR car = 'O' OR car = 'o' OR car = 'U' OR car = 'u' then
     ESVOCAL := true;
  else ESVOCAL := false;
end;
