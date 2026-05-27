{Problema 4. Utilizando la función EsPrimo implemente los siguientes incisos:
a) Escribir un programa en Pascal que muestre por pantalla todos los números primos entre dos
números naturales ingresados por el usuario. Indique casos de prueba significativos.
Por ejemplo,
Ingrese dos valores: 10 32
Los números primos entre 10 y 32 son: 11 13 17 19 23 29 31}

Program primosentrenumeros;
VAR numero1, numero2, i :Integer; esPrimo:Boolean;

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

Begin
  write('Ingrese el primero numero: ');
  readln(numero1);
  write('Ingrese el segundo numero: ');
  readln(numero2);

  if (numero1 > 0) AND (numero2 > 0) then
     if numero1 < numero2 then
        begin
          write('Los numeros primos entre ', numero1, ' y ', numero2, ' son: ');
          for i := numero1 to numero2 do
              begin
                esPrimo := EsPrimoOno(i);
                if esPrimo  then write(i, ' ');
              end;
        end
     else write('El primer numero debe ser mas chico que el segundo.')
  else write('Los numeros deben ser naturales.');
  readln;
end.
