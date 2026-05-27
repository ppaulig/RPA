Program tablaascii;
{$codepage utf8}
VAR numero, fila, columna:integer; caracter:char;
Begin
     write('Ingrese la cantidad de filas y columnas: ');
     readln(numero);
     write('Ingrese el caracter: ');
     readln(caracter);

     if numero > 0 then
        for fila:= 1 to numero do
            begin
              for columna := 1 to numero do
                  begin
                       write(caracter:3);
                       caracter := succ(caracter);
                  end;
              writeln;
            end
     else write('El numero ingresado no es valido');
     readln;
end.

