Program tablanumeros;
{$codepage utf8}
VAR filas, columnas, numero, suma :Integer;
Begin
  write('Ingrese un numero natural: ');
  readln(numero);

  for filas:= 1 to numero do
      begin
        suma := filas;
        for columnas := 1 to numero do
            begin
                 write(suma:3);
                 suma := suma + 1;
            end;
        writeln;
      end;
  readln;
end.
