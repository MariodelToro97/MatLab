function varargout = LU(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LU_OpeningFcn, ...
                   'gui_OutputFcn',  @LU_OutputFcn, ...
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

function LU_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = LU_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function matriz_Callback(hObject, eventdata, handles)

function matriz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Resultado_Callback(hObject, eventdata, handles)

function Resultado_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Filas_Callback(hObject, eventdata, handles)

function Filas_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Columna_Callback(hObject, eventdata, handles)

function Columna_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda LU.pdf');

function Calcular_Callback(hObject, eventdata, handles)
i=str2num(get(handles.Filas,'String'));%fila
j=str2num(get(handles.Columna,'String'));%columna
a=str2num(get(handles.matriz,'String'));
nn=i; 

for i=1:nn

L(i,i)=1;
end
for j=1:nn

u(1,j)=a(1,j);
end
for i=2:nn

L(i,1)=a(i,1)/u(1,1);
end
for n=2:nn

for j=n:nn
h=0;
for k=1:n-1

h=h+L(n,k)*u(k,j);
end
u(n,j)=a(n,j)-h;
end

for i=n+1:nn

h=0;
for k=1:n-1

h=h+L(i,k)*u(k,n);
end
L(i,n)=(a(i,n)-h)/u(n,n);

end
end
u

L 

y=str2num(get(handles.Resultado,'String'));
for zz=1:i

z(zz,1)=0;
end
z(1,1)=y(1,1);

for i=2:nn

h=0;
for j=1:i-1

h=h+L(i,j)*z(j,1);
j=j+1;

end
z(i,1)=y(i,1)-h;

i=i+1;

end 

x(nn,1)=z(nn,1)/u(nn,nn);

for i=nn-1:-1:1

h=0;
for j=i+1:nn

h=h+u(i,j)*x(j,1);
j=j+1;

end
x(i,1)=(z(i,1)-h)/u(i,i);

end

for i=1:nn

fprintf('x %d:\n',i);
x(i,1)
i=i+1;
end

set(handles.table,'Data',x);

function Regresar_Callback(hObject, eventdata, handles)
close(LU);
open(Unidad3);
