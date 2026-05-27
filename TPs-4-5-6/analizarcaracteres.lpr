Program analizarcaracteres;
{$codepage utf8}
VAR cantidad, contador :Integer; hayVocales:Boolean; caracter:Char;
Begin
  write('Ingrese la cantidad de caracteres que desea analizar: ');
  readln(cantidad);

  if cantidad > 0 then
     begin
     write('Ingrese la secuencia de caracteres: ');
      for contador := 1 to cantidad do
          begin
            read(caracter);
            if (caracter = 'a') OR (caracter = 'e') OR (caracter = 'i') OR (caracter = 'o') OR (caracter = 'u') then
               begin
                 write(caracter);
                 hayVocales := true;
               end
           end
      end;
  if hayVocales = false then write('La secuencia no tiene vocales minusculas.');
  readln;
  readln;

end.
