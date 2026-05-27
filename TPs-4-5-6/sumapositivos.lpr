Program sumapositivos;
{$codepage utf8}
VAR cantidad, contador :Integer; numero, suma :Real;
Begin
  write('Ingrese la cantidad de numeros de la secuencia: ');
  readln(cantidad);
  write('Ingrese la secuencia de numeros reales: ');
  suma := 0;

  if cantidad > 0 then
     begin
       for contador := 1 to cantidad do
           begin
                read(numero);
                if numero > 0 then suma := suma + numero;
           end;
       write('Suma: ', suma:0:2);
     end
  else write('No es posible realizar la suma.');
 readln;
 readln;
end.
