function varargout = InterpolacionCuadratica(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InterpolacionCuadratica_OpeningFcn, ...
                   'gui_OutputFcn',  @InterpolacionCuadratica_OutputFcn, ...
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

function InterpolacionCuadratica_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = InterpolacionCuadratica_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

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

function buscar_Callback(hObject, eventdata, handles)

function buscar_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Calcular_Callback(hObject, eventdata, handles)
clc;
x = str2num(get(handles.x,'String'));
y = str2num(get(handles.fx,'String'));
buscar = str2num(get(handles.buscar,'String'));

bo = y(1);
bi = (y(2) - y(1)) / (x(2) - x(1));
bd= (((y(3) - y(2)) / (x(3) - x(2))) - bi) / (x(3) - x(1));

res = bo + bi * (buscar - x(1)) + bd * (buscar - x(1)) * (buscar - x(2));

set(handles.resultado,'String',res);

hold on
plot (x,y);
grid on
hold off

function Regresar_Callback(hObject, eventdata, handles)
close(InterpolacionCuadratica);
open(Unidad5);

function polinomio_Callback(hObject, eventdata, handles)

function polinomio_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultado_Callback(hObject, eventdata, handles)

function resultado_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Interpolacion Cuadratica.pdf');