function varargout = falsaposicion_ventana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @falsaposicion_ventana_OpeningFcn, ...
                   'gui_OutputFcn',  @falsaposicion_ventana_OutputFcn, ...
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

function falsaposicion_ventana_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = falsaposicion_ventana_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function funcion_Callback(hObject, eventdata, handles)

function funcion_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function x0_Callback(hObject, eventdata, handles)

function x0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function x1_Callback(hObject, eventdata, handles)

function x1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function tol_Callback(hObject, eventdata, handles)

function tol_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function raiz_Callback(hObject, eventdata, handles)

function raiz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function calcular_Callback(hObject, eventdata, handles)
Fx=get(handles.funcion,'string');
a=str2num(get(handles.x0,'string'));
c=str2num(get(handles.x1,'string'));
e=str2num(get(handles.tol,'string'));

x=a;
Fa=eval(Fx);
x=c;
Fc=eval(Fx);
%Vectores para imprimir raices e intervalos
v=[];
vx0=[];
vx1=[];
n=1;
while abs(c-a)>e
    b=(c*Fa-a*Fc)/(Fa-Fc);
    x=b;
    v(n)=b;
    vx0(n)=a;
    vx1(n)=c;
    Fb=eval(Fx);
    if abs(Fc)<e
        break;
    else    
        if Fa*Fb<=0
            c=b;
            Fc=Fb;
        else
            a=b;
            Fa=Fb;
        end
    end
    n=n+1;
end
set(handles.raiz,'string',b);
m=[v;vx0;vx1];
set(handles.uitable2,'Data',m);

if a~=b
    hold off;
    ezplot(Fx);
    grid on;
    hold on;
    plot(b,subs(Fx,b),'or');
    zoom on;
else
    hold off;
    ezplot(Fx);
    grid on;
    hold on;
    zoom on;
end

function cerrar_Callback(hObject, eventdata, handles)
clear all; close all;clc; Unidad2;

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Falsa Posicion.pdf');