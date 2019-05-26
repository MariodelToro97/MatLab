%Diferencia hacia atras
%segunda Derivada de una Funcion
clc;
xo=3;%evaluado en 
h=0.1;%tamaño de paso
disp('Diferencias hacia adelante primer orden');
  
        x1=xo;
        x2=xo-h;
        x3=xo-2*h;
        x4=xo-3*h;
        y1=x1^4;
        y2=x2^4;
        y3=x3^4;
        y4=x4^4;
        y=(-y4+4*y3-5*y2+2*y1)/(h^2);
   
fprintf('\n h=%5.2f',h);
fprintf('\n y=%5.8f',y);