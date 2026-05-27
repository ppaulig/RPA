{Problema 5. Se desea realizar un programa que solicite al usuario un número natural y como resultado muestre por
pantalla todos los divisores naturales de dicho número. Realice un algoritmo antes de escribir el programa, luego
implemente en Pascal. ¿Qué casos de prueba usaría? Mencione al menos tres casos significativos.
Ejemplo:
Ingrese un entero: 116
Los divisores de 116 son: 1 2 4 29 58 116}

Program divisores;
{$codepage utf8}
VAR contador, numero :Integer;
Begin
  write('Ingrese un numero natural: ');
  readln(numero);

  if numero >= 0 then
     begin
       write('Los divisores de ', numero, ' son: ');
       for contador := 1 to numero do
           if (numero mod contador) = 0 then
              write(' ', contador, ',');
     end
  else write('El numero ingresado no es natural.');
  readln;
end.
