function varargout = iteracionsimpledepuntofijo_ventana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @iteracionsimpledepuntofijo_ventana_OpeningFcn, ...
                   'gui_OutputFcn',  @iteracionsimpledepuntofijo_ventana_OutputFcn, ...
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

function iteracionsimpledepuntofijo_ventana_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = iteracionsimpledepuntofijo_ventana_OutputFcn(hObject, eventdata, handles) 
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

function edit8_Callback(hObject, eventdata, handles)

function edit8_CreateFcn(hObject, eventdata, handles)
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
f=get(handles.funcion,'string');
xf=str2num(get(handles.x0,'string'));
tol=str2num(get(handles.tol,'string'));

syms x;
r=0;
i=1;
v=[];
ea(1)=100;
while abs(ea(i))>=tol,
    xf(i+1) = subs(f,x,xf(i));
    v(i)=xf(i);
    ea(i+1) = abs((xf(i+1)-xf(i))/xf(i+1))*100;
    i=i+1;
end
r=xf(i);

set(handles.raiz,'string',r);
set(handles.uitable2,'Data',v);

hold off;
ezplot(f);
grid on;
hold on;
plot(r,subs(f,r),'or');
zoom on;

function cerrar_Callback(hObject, eventdata, handles)
clear all; close all;clc; Unidad2;

function pushbutton5_Callback(hObject, eventdata, handles)
winopen('Ayuda Punto Fijio.pdf');