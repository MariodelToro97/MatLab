function varargout = cuad_gauss(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cuad_gauss_OpeningFcn, ...
                   'gui_OutputFcn',  @cuad_gauss_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function cuad_gauss_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = cuad_gauss_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function edit1_Callback(hObject, eventdata, handles)

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit2_Callback(hObject, eventdata, handles)

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit4_Callback(hObject, eventdata, handles)

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton1_Callback(hObject, eventdata, handles)
mb=[1,-0.577350269;...
    1,0.577350269];

 mc=[ 0.5555556,-0.774596669;...
    0.8888889,0.0;...
    0.5555556,0.774596669];
    
  md=[ 0.3478548,-0.861136312;...
    0.6521452,-0.339981044;...
    0.6521452,0.339981044;...
    0.3478548,0.861136312];
    
  me=[0.2369269,-0.906179846;...
    0.4786287,-0.538469310;...
    0.5688889,0.0;...
    0.4786287,0.538469310;...
    0.2369269,0.906179846];
    
   mf=[ 0.1713245,-0.932469514;...
    0.3607616,-0.661209386;...
    0.4679139,-0.238619186;...
    0.4679139,0.238619186;...
    0.3607616,0.661209386;...
    0.1713245,0.932469514];
syms  x xd;
%OBTENCION DE LA FUNCION A INTEGRAR
fx=sym(get(handles.edit1,'String'));
findsym(fx);
%OBTENCION DE LOS LIMITES DE INTEGRACION 
a=str2num(get(handles.edit2,'String'));
b=str2num(get(handles.edit3,'String'));
%OBTENCION DEL NUMERO DE PUNTOS  
n=str2num(get(handles.edit4,'String'));
%Se procede a realizar un cambio de variable.
u=((b+a)+((b-a)*xd))/2;
du=diff(u,xd,1);
fxu=(subs(fx,x,u))*du;
findsym(fxu);
valaprox=0;
mresp=zeros(1,1);
mrespreal=zeros(1,1);

if(n==2)    
  for i=1:2
  ci=mb(i,1);
  fi=mb(i,2);
  valaprox=valaprox+ci*(subs(fxu,xd,fi))
  end
  mresp(1,1)=valaprox;  
end
if(n==3)
  for i=1:n
  ci=mc(i,1);
  fi=mc(i,2);
  valaprox=valaprox+ci*(subs(fxu,xd,fi));
  end
  mresp(1,1)=valaprox;  
end
if(n==4)
  for i=1:n
  ci=md(i,1);
  fi=md(i,2);
  valaprox=valaprox+ci*(subs(fxu,xd,fi));
  end
  mresp(1,1)=valaprox;  
end
if(n==5)
  for i=1:n
  ci=me(i,1);
  fi=me(i,2);
  valaprox=valaprox+ci*(subs(fxu,xd,fi));
  end
  mresp(1,1)=valaprox;  
end
if(n==6)
  for i=1:n
  ci=mf(i,1);
  fi=mf(i,2);
  valaprox=valaprox+ci*(subs(fxu,xd,fi));
  end
  mresp(1,1)=valaprox;  
end
n=n-1;
valorreal=int(fx,x,a,b);
mrespreal(1,1)=valorreal;  
set(handles.text19,'string',mresp(1,1));
set(handles.text18,'string',mrespreal(1,1));

%REALIZACION DE LA GRAFICA DE LA FUNCION  
ezplot(fx, [a-3,b+3]);grid on;
legend((get(handles.edit1,'String')));
hold on
m=str2num(get(handles.edit4,'String'));
plot(1,'--rs','LineWidth',2, 'color','m');
plot(-1,-1:1,'--rs','LineWidth',2, 'color','m');
    if m==2
        for i=1:m
            fi=mb(i,2)
            z=subs(fx,x,fi)
            plot(fi,z, 'or')
        end
    else
        if m==3
        for i=1:m
            fi=mc(i,2)
            z=subs(fx,x,fi)
            plot(fi,z, 'or')
        end
        else
            if m==4
            for i=1:m
            fi=md(i,2)
            z=subs(fx,x,fi)
            plot(fi,z, 'or')
        end
            else
                if m==5
                for i=1:m
            fi=me(i,2)
            z=subs(fx,x,fi)
            plot(fi,z, 'or')
                end
                else
                    if m==6
                    for i=1:m
            fi=mf(i,2)
            z=subs(fx,x,fi)
            plot(fi,z, 'or')
        end
                    end
                end
            end
        end
    end
hold off

function edit5_Callback(hObject, eventdata, handles)

function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit6_Callback(hObject, eventdata, handles)

function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit7_Callback(hObject, eventdata, handles)

function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function figure1_CreateFcn(hObject, eventdata, handles)

function text1_CreateFcn(hObject, eventdata, handles)

function figure1_CloseRequestFcn(hObject, eventdata, handles)
delete(hObject);

function Regresar_Callback(hObject, eventdata, handles)
clear all; close all;clc; unidad4;

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda  Cuadraturas de Gauss.pdf');