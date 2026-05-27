{Problema 11. Escriba una primitiva en Pascal para que dado un número entero N, retorne el mayor y el
menor dígito del número.
Por ejemplo:
Si el número N es 2436400, se deberá retornar 6 y 0.
Si el número N es 382, se deberá retornar 8 y 2.
Si el número N es 8, se deberá retornar 8 y 8.}

Procedure mayorYmenor(numero:Integer; VAR mayor, menor :Integer);
VAR digito, numeroManipulado, contador :Integer;
Begin
  contador := 0;
  numeroManipulado := numero;
  while (numeroManipulado > 0) do
        begin
          contador := contador  + 1;
          digito := numeroManipulado mod 10;
          numeroManipulado := numeroManipulado div 10;

          if contador = 1 then
             begin
               mayor := digito;
               menor := digito;
             end
          else
              begin
                if digito > mayor then
                   mayor := digito;
                if digito < menor then
                   menor := digito;
              end;
        end;
end;
