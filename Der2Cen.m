%Diferencia hacia centradas 
% segunda Derivada de una Funcion
clc;
xo=1;%Evaluado en 
h=0.01;%tamaño de paso
disp('Diferencias hacia adelante primer orden');
  
        x1=xo;
        x2=xo+h;
        x3=xo-h;
        y1=3*x1^3+9*x1^2-x1-33;
        y2=3*x2^3+9*x2^2-x2-33;
        y3=3*x3^3+9*x3^2-x3-33;
        y=(y2-(2*y1)+y3)/(h^2);
   
fprintf('\n h=%5.2f',h);
fprintf('\n y=%5.8f',y);
