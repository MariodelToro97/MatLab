function varargout = biseccion_ventana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @biseccion_ventana_OpeningFcn, ...
                   'gui_OutputFcn',  @biseccion_ventana_OutputFcn, ...
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

function biseccion_ventana_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = biseccion_ventana_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function def_Callback(hObject, eventdata, handles)

function def_CreateFcn(hObject, eventdata, handles)
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

function tolerancia_Callback(hObject, eventdata, handles)

function tolerancia_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function raiz_Callback(hObject, eventdata, handles)

function raiz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function calcular_Callback(hObject, eventdata, handles)
x0=str2num(get(handles.x0,'string'));
x1=str2num(get(handles.x1,'string'));
tol=str2num(get(handles.tolerancia,'string'));

f=inline(get(handles.def,'string'));
if f(x0)*(x1)<0
    x=0;
    n=2;  
    v=[];
    vx0=[];
    vx1=[];
    
    vx0(1)=x0;
    vx1(1)=x1;
    
    while abs(f(x))>tol
        x=(x0+x1)/2;
        if f(x0)*f(x)<0
            
            vx1(n)=x1;
            x1=x;
            vx0(n)=x;
            v(n)=x;
            
        else
            
            vx0(n)=x0;            
            x0=x;
            vx1(n)=x;
            v(n)=x;

        end
        n=n+1;
    end
    set(handles.raiz,'string',x);
    set(handles.uitable2, 'Data', v);
    m=[vx1;vx0];
    set(handles.uitable3, 'Data', m);
    
    
else
    set(handles.raiz,'string','No hay cambio de signo.');
end

f=inline(get(handles.def,'string'));
if x0~=x1
    ezplot(f,[x0,x1]),grid on;
    zoom on;
else
    ezplot(f), grid on;
end

function RE_Callback(hObject, eventdata, handles)
clear all; close all;clc; Unidad2;

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Biseccion.pdf');p