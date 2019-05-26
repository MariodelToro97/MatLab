function varargout = GaussSeidel(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GaussSeidel_OpeningFcn, ...
                   'gui_OutputFcn',  @GaussSeidel_OutputFcn, ...
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

function GaussSeidel_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = GaussSeidel_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function matriz_Callback(hObject, eventdata, handles)

function matriz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultado_Callback(hObject, eventdata, handles)

function resultado_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function iteraciones_Callback(hObject, eventdata, handles)

function iteraciones_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function error_Callback(hObject, eventdata, handles)

function error_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Gauss Seidel.pdf');

function Regresar_Callback(hObject, eventdata, handles)
close(GaussSeidel);
open(Unidad3);

function Calcular_Callback(hObject, eventdata, handles)
clc;

A=str2num(get(handles.matriz,'String'));
b=str2num(get(handles.resultado,'String'));
es=str2num(get(handles.error,'String'));
maxit=str2num(get(handles.iteraciones,'String'));
maxit=maxit*3;

if nargin<4, maxit=50; end
if nargin<3, es=0.01; end
[m,n] = size(A);
if m~=n, error('La matriz no es cuadrada'); end
C = A;
for i = 1:n
  C(i,i) = 0;
  x(i) = 0;
end
x = x';
for i = 1:n
  C(i,1:n) = C(i,1:n)/A(i,i);
end
for i = 1:n
  d(i) = b(i)/A(i,i);
end
iter = 0;
while (1)
  xold = x;
  for i = 1:n
    x(i) = d(i)-C(i,:)*x;
    disp(iter);
    disp(x);
    if x(i) ~= 0
      ea(i) = abs((x(i) - xold(i))/x(i)) * 100;
    end
  end
  iter = iter+1;
   set(handles.table,'data',x);
  if max(ea)<=es || iter >= maxit, break, end
end