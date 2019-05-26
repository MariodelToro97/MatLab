function varargout = Lineal(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Lineal_OpeningFcn, ...
                   'gui_OutputFcn',  @Lineal_OutputFcn, ...
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

function Lineal_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Lineal_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function Regresar_Callback(hObject, eventdata, handles)
close(Lineal);
open (Unidad5);

function x_Callback(hObject, eventdata, handles)

function x_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function fx_Callback(hObject, eventdata, handles)

function fx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Calcular_Callback(hObject, eventdata, handles)
clc; 
xi = str2num(get(handles.x,'String'));
yi = str2num(get(handles.fx,'String'));
buscar = str2num(get(handles.buscar,'String'));

a = yi(1);
b = yi(2);
c = xi(1);
d = xi(2);

res = a + ((b-a) / (d-c)) * (buscar - c);

hold on
plot (xi,yi);
grid on
hold off

set(handles.resultado,'String',res);

function buscar_Callback(hObject, eventdata, handles)

function buscar_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultado_Callback(hObject, eventdata, handles)

function resultado_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda InterpolacionLineal.pdf');
