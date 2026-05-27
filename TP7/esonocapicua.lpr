Program esonocapicua;
{$codepage utf8}
VAR entradaNumero, numeroInvertido:Integer;

  function Invertir ( num: integer ):integer;
    var invertido, ultimo: integer;
    begin
      invertido := 0;
      while num > 0 do
        begin
          ultimo := num mod 10;
          num := num div 10;
          invertido := invertido * 10 + ultimo;
        end;
      Invertir := invertido;
    end;

Begin
  write('Ingrese el numero: ');
  readln(entradaNumero);

  numeroInvertido := Invertir(entradaNumero);
  if numeroInvertido = entradaNumero then
     write('El numero ', entradaNumero, ' es capicua.')
  else write('El numero ', entradaNumero, ' no es capicua.');

  readln;

end.
