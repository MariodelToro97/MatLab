function varargout = Euler6(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Euler6_OpeningFcn, ...
                   'gui_OutputFcn',  @Euler6_OutputFcn, ...
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

function Euler6_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Euler6_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function fx_Callback(hObject, eventdata, handles)

function fx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function inferior_Callback(hObject, eventdata, handles)

function inferior_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function superior_Callback(hObject, eventdata, handles)

function superior_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function inicial_Callback(hObject, eventdata, handles)

function inicial_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function puntos_Callback(hObject, eventdata, handles)

function puntos_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultado_Callback(hObject, eventdata, handles)

function resultado_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Calcular_Callback(hObject, eventdata, handles)
f=get(handles.fx,'string');
x0=str2num(get(handles.inferior,'string'));
x1=str2num(get(handles.superior,'string'));
y0=str2num(get(handles.inicial,'string'));
n=str2num(get(handles.puntos,'string'));

h=(x1-x0)/n;
xs=x0:h:x1;
y1=y0;
%fprintf('\n''it x0 x1 y1');

for i=1:n
it=i-1;
x0=xs(i);
x=x0;
x1=xs(i+1);
y=y0;
y1=y0+h*eval(f);
%fprintf('\n%2.0f%10.6f%10.6f%10.6f\n',it,x0,x1,y1);
set(handles.resultado,'string',num2str(y1));
y0=y1;
end

function Regresar_Callback(hObject, eventdata, handles)
close(Euler6);
open(Unidad6);

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Euler.pdf');