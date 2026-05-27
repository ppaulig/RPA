{function ESBISIESTO (a: integer): boolean;
{Determina si el año a es bisiesto. (Un año es bisiesto si es múltiplo de 4 y no de 100; o es múltiplo de 400)}}

Function ESBISIESTO (a:Integer):boolean;
Begin
  if (((a mod 4) = 0) AND ((a mod 100) <> 0)) OR ((a mod 400) = 0) then
     ESBISIESTO := true
  else ESBISIESTO := false;
end;
