%Diferencia hacia Adelante
%Derivada de una Funcion
clc;
xo=3;%evaluado en 
h=0.1;%tamaño de paso
fun=x.^4;%Funcion a evaluar
disp('Diferencias hacia adelante primer orden');
  
        x1=xo;
        x2=xo+h;
        y1=x1^4;
        y2=x2^4;
        y=(y2-y1)/(h);
   
fprintf('\n h=%5.2f',h);
fprintf('\n y=%5.8f',y);
