{function CANTVECES (d, Nro: integer): integer;
{ Calcula la cantidad de veces que aparece el dígito d en el número Nro}.}

Function CANTVECES(d, nro :Integer):Integer;
VAR contador, digito:Integer;
Begin
  contador := 0;

  while nro > 0 do
     begin
          digito := nro mod 10;
          nro := nro div 10;
          if digito = d then
             contador := contador + 1;
     end;
  CANTVECES := contador;
end;

