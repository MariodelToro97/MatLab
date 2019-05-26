function varargout = Trapecio_ventana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Trapecio_ventana_OpeningFcn, ...
                   'gui_OutputFcn',  @Trapecio_ventana_OutputFcn, ...
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

function Trapecio_ventana_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Trapecio_ventana_OutputFcn(hObject, eventdata, handles) 
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

function seg_Callback(hObject, eventdata, handles)

function seg_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function r_Callback(hObject, eventdata, handles)

function r_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function calcular_Callback(hObject, eventdata, handles)
f=get(handles.fun,'string');
a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
c=str2num(get(handles.seg,'string'));
    h=(b-a)/c; 
  z=0; 
for x=a:h:b
k=eval(f);
disp(k);
    if x==a,d=k;
    end
    if x==b,e=k;
    end
z=z+k;
disp(z);
end 
  z=z-d-e; 
  disp(z);
    z=z*2;
    disp(z);
      z=z+d+e; 
      disp(z);
     z=z/(2*c); 
     disp(z);
   z=z*(b-a)
   disp(z);
set(handles.r,'string',z);

function pushbutton3_Callback(hObject, eventdata, handles)
close(Trapecio_ventana);
clc;
open(unidad4);

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Trapecios.pdf');