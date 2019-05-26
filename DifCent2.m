%Diferencia hacia Adelante
%Derivada de una Funcion
clc;
xo=3;%evaluado en 
h=0.10;%tamaño de paso

disp('Diferencias hacia adelante segundo orden');
        x0=xo-(2*h);
        x1=xo+h;
        x3=xo-h;
        x2=xo+(2*h);
        y1=sin(x1);
        y2=sin(x2);
        yy1=sin(x3);
        yy2=sin(x0);
        y=(-y2+8*y1-8*yy1+yy2)./(12*h);
   
fprintf('\n h=%5.2f',h);
fprintf('\n y=%5.8f',y);