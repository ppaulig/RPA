{Problema 5.
Un número natural tiene dígitos repetidos cuando alguno de sus dígitos aparece más de una vez.
Ejemplos:
Tienen dígitos repetidos 808, 33 y 100.
No tienen dígitos repetidos 102, 12 y 3
Implementar un programa que muestre todos los números naturales que tengan dígitos repetidos hasta un
valor N > 100. El valor N debe ser ingresado por el usuario y validado por el programa.
Por ejemplo:
El programa debe estar dividido en sub-problemas (funciones:Repetidos y Pertenece, procedimiento:
ValidarEntrada)
}

Program digiosrepetidos:
VAR numero, i:Integer;

Function RepiteDigitos(num:Integer):Boolean;  // usar la funcion pertenece para ver si se repite
VAR digito,
Begin
end;

Begin
  write('Ingrese un numero: ');
  readln(numero);
  if numero > 0 then
     for i := 1 to numero do
         Begin
           tieneRepetidos := RepiteDigitos(i);
           if tieneRepetidos then
              write(tieneRepetidos, ', ');
         end.
  else
    write('El numero ingresado no es natural.');
  readln;

end.

