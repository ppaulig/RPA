{Escribir una función siguientePrimo que dado un número retorne el número primo siguiente
(inmediato mayor). Por ejemplo, el siguiente primo a 11 es 13 y el siguiente primo a 90 es 97.}

Function EsPrimoOno(numero:integer):boolean;
VAR hayDivisor :Boolean; contador:Integer;
begin
  hayDivisor := false;
  contador := 2;

  if numero = 1 then
     EsPrimoOno := false
  else
      if numero = 2 then
         EsPrimoOno := true
      else
        begin
          repeat
            if (numero mod contador = 0) then
               hayDivisor := true;
            contador := contador + 1;
          until (hayDivisor = true)  OR (contador = numero);
          if hayDivisor then
             EsPrimoOno := false
          else EsPrimoOno := true;
        end;
end;

Function SiguientePrimo(numero:integer):integer;
VAR siguiente:Integer; esPrimo:Boolean;
Begin
  repeat
    begin
        siguiente := numero + 1;
        esPrimo := EsPrimoOno(siguiente);
    end;
  until esPrimo = true;
  SiguientePrimo := siguiente;

end;

