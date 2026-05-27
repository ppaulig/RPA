{c) Escriba un programa que determine si un número N es o no especial. Un número N es especial si
cada dígito que está en N aparece tantas veces como su propia magnitud.}

Program numeroespecial;
VAR numero, cifra, veces :Integer;

Function CANTVECES(d, nro :Integer):Integer;
  VAR contador, digito:Integer;
  Begin
    contador := 0;

    while nro > 0 do
       begin
            digito := nro mod 10;
            nro := nro div 10;
            if digito = d then
               contador := contador + 1;
       end;
    CANTVECES := contador;
  end;

Begin
  write('Ingrese el numero: ');
  readln(numero);
  write('Ingrese el numero de 1 cifra a buscar: ');
  readln(cifra);

  veces := CANTVECES(cifra, numero);
  if veces = cifra then
     write('Es un numero especial.')
  else write('No es un numero especial.');

  readln;
end.

