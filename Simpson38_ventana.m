function varargout = Simpson38_ventana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Simpson38_ventana_OpeningFcn, ...
                   'gui_OutputFcn',  @Simpson38_ventana_OutputFcn, ...
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

function Simpson38_ventana_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Simpson38_ventana_OutputFcn(hObject, eventdata, handles) 
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

function calcular_Callback(hObject, eventdata, handles)
f=get(handles.fun,'string');
a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
c=str2num(get(handles.seg,'string'));

h=(b-a)/c;
qqqqq=0;
if (-1)^c==-1
b=b-(3*h);
c=c-3;
e=b+h;
ff=b+2*h;
g=b+3*h;
ee=g-b;
x=b;
q=eval(f);
x=e;
qq=eval(f);
x=ff;
qqq=eval(f);
x=g;
qqqq=eval(f);
qqqqq=(ee)*((q+3*qq+3*qqq+qqqq)/8);
end
z=0;
x=a;
for i=1:c;
if (-1)^i==1
k=eval(f);
z=z+k;
end
x=h*i;
end 
zz=0;
x=a;
for i=2:c;
if (-1)^i==-1
k=eval(f);
zz=zz+k;
end
x=h*i;
end
x=a;
if x==a
d=eval(f);
end
x=b;
if x==b
eee=eval(f);
end
 z=z*4;
v=zz*2;
z=z+v+d+eee;
z=z/(3*c);
z=z*(b-a);
z=(z+qqqqq)/4
set(handles.r,'string',z);

function r_Callback(hObject, eventdata, handles)

function r_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function seg_Callback(hObject, eventdata, handles)

function seg_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton2_Callback(hObject, eventdata, handles)
clear all; close all;clc; unidad4;

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Simpson 38.pdf'),