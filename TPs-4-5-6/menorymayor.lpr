Program menorymayor;
{$codepage utf8}
VAR mayor, menor, posicionMayor, posicionMenor, contador, num :Integer;
Begin
  mayor := 0;
  posicionMayor := 1;
  posicionMenor := 1;
  for contador := 1 to 5 do
      begin
           write('Ingrese un numero natural: ');
           readln(num);

           if contador = 1 then menor:= num;

           if num >= mayor then
             begin
                  mayor := num;
                  posicionMayor := contador;
             end;

           if num <= menor then
             begin
                  menor := num;
                  posicionMenor := contador;
             end;
      end;
   writeln('El menor es ', menor, ' y esta en la posicion ', posicionMenor);
   write('El mayor es ', mayor, ' y esta en la posicion ', posicionMayor);
   readln;
end.
