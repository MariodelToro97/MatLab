function varargout = Segunda_C(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Segunda_C_OpeningFcn, ...
                   'gui_OutputFcn',  @Segunda_C_OutputFcn, ...
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

function Segunda_C_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Segunda_C_OutputFcn(hObject, eventdata, handles) 
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

function pushbutton1_Callback(hObject, eventdata, handles)
xo=str2num(get(handles.edit2,'string'));
h=str2num(get(handles.edit3,'string'));
f=inline(get(handles.edit1,'string'));
        x1=xo;
        x2=xo+h;
        x3=xo-h;
        x4=xo+2*h;
        x5=xo-2*h;
        y1=f(x1);
        y2=f(x2);
        y3=f(x3);
        y4=f(x4);
        y5=f(x5);
        y=(-y4+(16*y2)-30*y1+16*y3-y5)/(12*h^2);
        set(handles.r,'string',y);

function pushbutton2_Callback(hObject, eventdata, handles)
clear all; close all ;clc; Derivada_F_C;

function pushbutton3_Callback(hObject, eventdata, handles)
winopen('Ayuda Diferiencias Finitas.pdf');