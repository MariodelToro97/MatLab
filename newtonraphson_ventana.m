function varargout = newtonraphson_ventana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newtonraphson_ventana_OpeningFcn, ...
                   'gui_OutputFcn',  @newtonraphson_ventana_OutputFcn, ...
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

function newtonraphson_ventana_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = newtonraphson_ventana_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function definicion_Callback(hObject, eventdata, handles)

function definicion_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function x0_Callback(hObject, eventdata, handles)

function x0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function c_Callback(hObject, eventdata, handles)

function c_CreateFcn(hObject, eventdata, handles)
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
def=get(handles.definicion,'string');
x0=str2num(get(handles.x0,'string'));
c=str2num(get(handles.c,'string'));
tol=str2num(get(handles.tol,'string'));

syms x
f=sym(def);
df=diff(f);
fx=inline(char(f));
dfx=inline(char(df));
k=1;
v=[];
vx0=[];
kv=[];

while abs(fx(x0))>tol | k>c
    vx0(k)=x0;
    x0=x0-fx(x0)/dfx(x0);
    v(k)=x0;
    kv(k)=k;
    k=k+1;
end

if k>c
    r='No converge';
else
    r=x0;
end

m=[v;vx0;kv];
set(handles.uitable1,'Data',m);

set(handles.raiz,'string',r);
hold off;
ezplot(def);
grid on;
hold on;
plot(r,subs(def,r),'or');
zoom on;

function pushbutton2_Callback(hObject, eventdata, handles)
clear all; close all;clc; Unidad2;

function pushbutton3_Callback(hObject, eventdata, handles)
winopen('Ayuda Newton Raphon.pdf');