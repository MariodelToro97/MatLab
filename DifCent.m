%Diferencia hacia Adelante
%Derivada de una Funcion
clc;
xo=3;%evaluado en 
h=0.1;%tamaño de paso

disp('Diferencias hacia adelante primer orden');
  
        x1=xo-h;
        x2=xo+h;
        y1=x1^4;
        y2=x2^4;
        y=(y2-y1)/(2*h);
   
fprintf('\n h=%5.2f',h);
fprintf('\n y=%5.8f',y);
