{Problema 10. Implementar un procedimiento que reciba dos parámetros de tipo char, y muestre en
pantalla todos los símbolos ASCII que hay entre ellos (sin importar el orden en que fueron ingresados), y
cuántos son.
Ejemplos:
Ingrese dos elementos ASCII: @J
A B C D E F G H I (son 9 caracteres)
Ingrese dos elementos ASCII: J@
A B C D E F G H I (son 9 caracteres)
Ingrese dos elementos ASCII: GG
(son 0 caracteres)
}

Procedure mostrarAscii(c1,c2 :Char);
VAR contador:Integer; i:Char;
Begin
     for i := c1 to c2 do
         begin
           write(i, ' ');
           contador := contador + 1;
         end;
     write('(son ', contador, ' caracteres)');
     readln;
end;
