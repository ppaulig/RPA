{b) Escriba un programa que determine si hay al menos dos vocales consecutivas.
Ejemplo: sdfFFaOuuuccuoudues# hay al menos 2 vocales juntas
}

Program hayvocalesconsecutivas;
VAR caracter:Char; esVocalAnterior, esVocalAhora, vocalesConsecutivas :Boolean;

Function ESVOCAL (car: char):Boolean;
Begin
  if (car = 'A') OR (car = 'a') OR (car = 'E') OR (car = 'e') OR (car = 'I') OR (car = 'i') OR (car = 'O') OR (car = 'o') OR (car = 'U') OR (car = 'u') then
     ESVOCAL := true
  else ESVOCAL := false;
end;

Begin
  esVocalAnterior := false;
  vocalesConsecutivas := false;
  write('Ingrese una secuencia de caracteres (# para finalizar): ');

  repeat
    read(caracter);

    if caracter <> '#' then
       begin
         esVocalAhora := ESVOCAL(caracter);
         if esVocalAhora AND esVocalAnterior then
            vocalesConsecutivas := true;
         esVocalAnterior := esVocalAhora;
       end;
  until (caracter = '#') OR vocalesConsecutivas;

  if vocalesConsecutivas then
     write('Hay al menos 2 vocales juntas.')
  else write('No hay vocales juntas.');
  readln;
  readln;
end.



