program verificarfecha;

{ 1. Primero pegamos la función que ya hicimos }
function ESBISIESTO (a: Integer): boolean;
begin
  ESBISIESTO := (((a mod 4) = 0) and ((a mod 100) <> 0)) or ((a mod 400) = 0);
end;

{ 2. Declaramos las variables para el programa }
var
  dia, mes, anio: Integer;
  diasMaximos: Integer;
  esValida: Boolean;

begin
  { Solicitar los datos al usuario }
  writeln('Ingrese una fecha (dia, mes y anio separados por espacios):');
  readln(dia, mes, anio);

  { Por defecto asumimos que es válida, y buscaremos errores }
  esValida := true;

  { Filtro 1: El mes debe ser correcto }
  if (mes < 1) or (mes > 12) then
    esValida := false
  else
    begin
      { Filtro 2: Averiguamos el tope de días según el mes }
      case mes of
        1, 3, 5, 7, 8, 10, 12: diasMaximos := 31;
        4, 6, 9, 11:           diasMaximos := 30;
        2: begin
             { ¡Aquí usamos tu función! }
             if ESBISIESTO(anio) then
               diasMaximos := 29
             else
               diasMaximos := 28;
           end;
      end;

      { Filtro 3: El día debe estar entre 1 y el máximo de ese mes }
      if (dia < 1) or (dia > diasMaximos) then
        esValida := false;
    end;

  { Mostrar el resultado final }
  if esValida then
    writeln('La fecha ', dia, '/', mes, '/', anio, ' es VALIDA.')
  else
    writeln('La fecha ingresada NO es valida.');

  readln; { Para que no se cierre la consola inmediatamente }
end.
