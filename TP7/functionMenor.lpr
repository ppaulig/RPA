{Problema 2. Implemente una función que reciba dos números como parámetros y retorne como resultado
el menor de ellos (si son iguales retorna cualquiera de los dos).
function el_menor( num1,num2: integer ): integer;}
Function el_menor(num1,num2 :Integer):Integer;
Begin
  if num1 > num2 then
     el_menor := num2
  else
    if num2 > num1 then
       el_menor := num1
    else el_menor := num1;
end;
