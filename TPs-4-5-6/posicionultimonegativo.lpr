Program posicionultimonegativo;
{$codepage utf8}
VAR cantidad, contador, posicion :Integer; numero:Real; hayNegativo:Boolean;
Begin
     write('Ingrese la cantidas de numeros de la secuencia: ');
     readln(cantidad);
     hayNegativo := false;

     if cantidad > 0 then
        begin
          write('Ingrese la secuencia de numeros reales: ');
          for contador := 1 to cantidad do
              begin
                read(numero);
                if numero < 0 then
                   begin
                     posicion := contador;
                     hayNegativo := true;
                   end
              end;
          if not(hayNegativo) then write('0')
          else write('La posicion del ultimo numero negativo es: ', posicion)
        end
     else write('No es posible calcular la posicion.');
    readln;
    readln;
end.
