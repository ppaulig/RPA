{Problema 9. Considere la siguiente declaración de procedimiento:
Realice un programa de prueba para este procedimiento que permita ingresar dos fracciones y luego
mostrar el resultado de su multiplicación en pantalla de alguna manera adecuada.}

Program productofracciones;

uses Unit1;

procedure MultiplicarFracciones( N1,D1,N2,D2: integer; VAR N,D: integer);
  begin
  N := N1 * N2; {calcula el numerador}
  D := D1 * D2; {calcula el denominador}
  end;

VAR n1,n2,d1,d2,n3,d3 :Integer;
Begin
  write('Ingrese 2 fracciones, primero el numerador y separado por un espacio el denominador: ');
  readln(n1, d1, n2, d2);
  MultiplicarFracciones(n1, d1, n2, d2, n3, d3);

  write('Resultado: ', n3, '/', d3);
  readln;

end.
