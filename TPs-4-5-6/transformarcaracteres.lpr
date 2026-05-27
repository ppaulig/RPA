
Program transformarcaracteres;
{$codepage utf8}
VAR contador:Integer; caracter:Char;
Begin
  write('Ingrese una secuencia de caracteres: ');
  for contador := 1 to 30 do
      begin
        read(caracter);
        // convertir a minuscula
        if (caracter >= 'A') AND (caracter <= 'Z') then
           write(chr(ord(caracter) + 32), ' ')  // ejemplo: A = 65, 65 + 32 = 97, 97 = a, chr(97) = a. Las mayusculas y minusculas tienen una distancia de 32 numeros.
        else
            if (caracter >= '0') AND (caracter <= '9') then //convertir en el número que corresponde a su posición en la tabla ASCII y mostrar entre corchetes.
               write('[', ord(caracter),'] ')
            else
                if caracter = ' ' then write('_')
                else write('$ ');
      end;
  readln;
  readln;
end.
