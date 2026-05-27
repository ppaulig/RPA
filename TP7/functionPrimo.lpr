{Problema 3. Implementar una función para determinar si un número natural ingresado por parámetro, es
un número primo o no. La función debe respetar el siguiente encabezado:
function EsPrimo( numero: integer ):boolean;
{Objetivo: Determinar si un número es primo o no
Entrada: El parámetro “numero” recibe el numero que se desea analizar
Salida: Retornará un valor TRUE o FALSE dependiendo de si “numero” es primo o no.}
Ejemplos:
● Para numero = 7 debe devolver TRUE
● Para numero = 8 debe devolver FALSE}

Function EsPrimo(numero:integer):boolean;
VAR hayDivisor :Boolean; contador:Integer;
begin
  hayDivisor := false;
  contador := 2;

  if numero = 1 then
     EsPrimo := false
  else
      if numero = 2 then
         EsPrimo := true;
      else
        begin
          repeat
            if (numero mod contador = 0) then
               hayDivisor := true;
            contador := contador + 1;
          until (hayDivisor = true)  OR (contador = numero);
          if hayDivisor then
             EsPrimo := false
          else EsPrimo := true;
        end;
end;
