Program parpositivonegativo;
{$codepage utf8}
VAR cantidadPares, contador, paresNegPos ,numero, anterior :Integer;
Begin
  write('Ingrese la cantidad de pares/duplas: ');
  readln(cantidadPares);
  paresNegPos := 0;

  if cantidadPares > 0 then
     begin
       write('Ingrese la secuencia: ');
       for contador := 1 to cantidadPares * 2 do
           begin
             read(numero);

             if contador = 1 then anterior := numero
             else
               if (anterior > 0) and (numero  < 0) then
                  paresNegPos := paresNegPos + 1;
               anterior := numero;
           end;
       write('Hay ', paresNegPos, ' pares que tienen el primer número positivo y el segundo negativo.')
     end
  else write('No se puede realizar el analisis.');
  readln;
  readln;
end.
