function varargout = Simpson13_ventana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Simpson13_ventana_OpeningFcn, ...
                   'gui_OutputFcn',  @Simpson13_ventana_OutputFcn, ...
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

function Simpson13_ventana_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Simpson13_ventana_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function fun_Callback(hObject, eventdata, handles)

function fun_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function a_Callback(hObject, eventdata, handles)

function a_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function b_Callback(hObject, eventdata, handles)

function b_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Calcular_Callback(hObject, eventdata, handles)
fun=get(handles.fun,'string');
f=inline(fun);
a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
n=1;
h=(b-a)/n;
sumai=0;
sumap=0;
for i=1:2:n-1
    sumai=sumai+feval(f,h*i+a);
end
for i=2:2:n-2
    sumap=sumap+feval(f,h*i+a);
end

int=(h/3)*(feval(f,a)+4*sumai+2*sumap+feval(f,b));
set(handles.r,'string',int);

function r_Callback(hObject, eventdata, handles)

function r_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton2_Callback(hObject, eventdata, handles)
clear all; close all;clc; unidad4;

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Simpson 13.pdf');