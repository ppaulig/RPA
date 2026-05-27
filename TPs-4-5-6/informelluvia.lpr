{Problema 10. A partir del ingreso por teclado de 12 números enteros, donde cada número representa el registro de
lluvia medido en milímetros de un mes, escribir un programa para indicar por pantalla cuál fue el trimestre más
lluvioso y el total de milímetros caídos en el año.
Por ejemplo:
Si la secuencia ingresada es:
3 3 6 8 10 0 7 0 13 11 6 5
Por pantalla se deberá mostrar:
El trimestre más lluvioso registrado es el cuarto
El total de lluvia caída en el año es de 72 milímetros.}

Program informelluvia;
{$codepage utf8}
VAR lluvia1, lluvia2, lluvia3, lluvia4, lluvia5, lluvia6, lluvia7, lluvia8, lluvia9,
  lluvia10, lluvia11, lluvia12, total :Integer;
Begin
  write('Ingrese el registro de lluvia medido en milimetro de cada mes: ');
  readln(lluvia1, lluvia2, lluvia3, lluvia4, lluvia5, lluvia6, lluvia7, lluvia8, lluvia9, lluvia10, lluvia11, lluvia12);

  for contador := 1 to 12 do
      sumaTrimestre := sumaTrimestre +
end.

