{Problema 8. Escriba un programa que dados como entrada un número Nun y un caracter Car, muestre Nun filas por
Num columnas con los caracteres de la tabla ASCII comenzando desde el caracter Car ingresado por el usuario.
Por ejemplo,
Ingrese la cantidad de filas y columnas: 5
Ingrese un caracter: A
A B C D E
F G H I J
K L M N O
P Q R S T
U V W X Y
}

Program tablaASCII;
{$codepage utf8}
VAR numero, fila, columna:integer; caracter:char;
Begin
     write('Ingrese la cantidad de filas y columnas: ');
     readln(numero);
     write('Ingrese el caracter: ');
     readln(caracter);

     if numero > 0 then
        for fila:= 1 to numero do
            begin
              for columna := 1 to numero do
                  begin
                       write(caracter:3);
                       caracter := succ(caracter);
                  end;
              writeln;
            end
     else write('El numero ingresado no es valido');
     readln;
end.

