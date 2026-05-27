Program productopares;
{$codepage utf8}
VAR contador,cantidad, producto :Integer;
Begin
     producto := 1;
     write('Ingrese una cantidad en numeros naturales: ');
     readln(cantidad);

     if cantidad >= 0 then
        begin
             for contador := 1 to cantidad do
                   if (contador mod 2) = 0 then
                      producto := producto * contador;
             write('El producto es: ', producto)
        end
     else write('El numero ingresado debe ser natural.');
     readln;
end.

