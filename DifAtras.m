%Diferencia hacia atras
%Derivada de una Funcion
clc;
xo=3;%evaluado en 
h=0.1;%tamaño de paso

disp('Diferencias hacia atras primer orden');
        
        x1=xo;
        x2=xo-h;
        y1=x1^4;
        y2=x2^4;     
       y=(y1-y2)./(h);
   
fprintf('\n h=%5.2f',h);
fprintf('\n y=%5.8f',y);