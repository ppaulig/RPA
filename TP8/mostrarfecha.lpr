{Problema 4. Realice un programa que solicite tres números D, M y A, que representan una fecha (día,
mes y año), y además una opción de formato:
1. TEXTO
2. ABREVIADO
3. NUMÉRICO
Por ejemplo, si la fecha es 14 7 2020
en formato texto 14 de julio de 2020,
en formato abreviado 14 / 7 / 2020,
y en formato numérico 20200714
El programa debe determinar si la fecha es válida y en ese caso mostrar en pantalla la fecha con el
formato solicitado.
}

Program mostrarfecha;
{$codepage utf8}
VAR dia, mes, anio, formato :Integer; esValida:Boolean;

Function EsFechaValida(dia, mes, anio :Integer):Boolean;
  begin
    { 1. Inicializamos en false por defecto }
    EsFechaValida := false;

    { 2. Filtro general de rangos }
    if (anio > 0) AND (anio <= 2026) AND (mes >= 1) AND (mes <= 12) AND (dia >= 1) then
       begin
         CASE mes of
              1, 3, 5, 7, 8, 10, 12:
                 if (dia <= 31) then EsFechaValida := true;

              4, 6, 9, 11:
                 if (dia <= 30) then EsFechaValida := true;

              2:
                 { Agrupamos con begin/end para evitar líos de sintaxis }
                 if (((anio mod 4) = 0) AND ((anio mod 100) <> 0)) OR ((anio mod 400) = 0) then
                    begin
                      if dia <= 29 then EsFechaValida := true; { <-- Corregido 'dia' }
                    end  { <-- Sin punto y coma aquí porque sigue un ELSE }
                 else
                    begin
                      if dia <= 28 then EsFechaValida := true; { <-- Corregido 'dia' }
                    end;
         end; { Fin del CASE }
       end; { Fin del IF principal }

    { Si no entró a ningún caso verdadero, saldrá con el 'false' del principio }
end;

Procedure MostrarConFormato(dia, mes, anio :Integer);
Begin
  write('La fecha ingresada es: ', dia, ' de ');
  CASE mes of
       1: write('enero ');
       2: write(' febrero ');
       3: write(' marzo ');
       4: write(' abril ');
       5: write(' mayo ');
       6: write(' junio ');
       7: write(' julio ');
       8: write(' agosto ');
       9: write(' septiembre ');
       10: write(' octubre ');
       11: write(' noviembre ');
       12: write(' diciembre ');
  end;
  write('de ', anio);
end;

Begin

  write('Ingrese 3 numeros separados con espacio (dia, mes y anio): ');
  readln(dia, mes, anio);
  writeln('Formatos: ');
  writeln('1. TEXTO, 2. ABREVIADO, 3. NUMÉRICO. ');
  write('Ingrese un formato para mostrar la fecha: ');
  readln(formato);

  esValida := EsFechaValida(dia, mes, anio);
  if esValida AND ((formato >= 0) AND (formato <= 3)) then
     CASE formato of
          1: MostrarConFormato(dia, mes, anio);
          2: write(dia,'/',mes,'/',anio);
          3: write((((anio * 100) + mes) * 100) + dia);
     end
  else
      write('No es una fecha valida.');
  readln;

end.
