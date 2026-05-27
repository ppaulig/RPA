Program contarparesiguales;
{$codepage utf8}
VAR cantidadPares, contador, paresIguales, numero, anterior :Integer;
Begin
  write('Ingrese la cantidad de pares/duplas: ');
  readln(cantidadPares);
  paresIguales := 0;

  if cantidadPares > 0 then
     begin
       write('Ingrese la secuencia: ');
       for contador := 1 to cantidadPares * 2 do
           begin
             read(numero);

             if contador = 1 then anterior := numero
             else
               if (numero = anterior) and ((contador mod 2 ) = 0) then
                  paresIguales := paresIguales + 1;
               anterior := numero;
           end;
       write('Hay ', paresIguales, ' par de numeros iguales.')
     end
  else write('No se puede realizar el analisis.');
  readln;
  readln;
end.
