Program sumaypromedio;
{$codepage utf8}
VAR cantidad, suma, contador:integer; promedio:Real;
Begin
  suma := 0;
  write('Ingrese una cantidad en numeros naturales: ');
  readln(cantidad);

  if cantidad >= 0 then
     begin
       for contador := 1 to cantidad
           do
           begin
             suma := suma + contador;
             promedio := suma / contador;
           end;
       writeln('Suma: ', suma);
       write('Promedio: ', promedio:0:2);
     end
  else write('La cantidad ingresada no es un numero valido.');
  readln();
end.
