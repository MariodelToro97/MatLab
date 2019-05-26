function varargout = Jacobi(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Jacobi_OpeningFcn, ...
                   'gui_OutputFcn',  @Jacobi_OutputFcn, ...
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

function Jacobi_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Jacobi_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function matriz_Callback(hObject, eventdata, handles)

function matriz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultados_Callback(hObject, eventdata, handles)

function resultados_CreateFcn(hObject, eventdata, handles)
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
winopen('Ayuda Jacobi.pdf');

function Regresar_Callback(hObject, eventdata, handles)
close(Jacobi);
open(Unidad3);

function valores_Callback(hObject, eventdata, handles)

function valores_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Calcular_Callback(hObject, eventdata, handles)
A=str2num(get(handles.matriz,'string'));
b=str2num(get(handles.resultados,'string'));
x=str2num(get(handles.valores,'string'));
m=str2num(get(handles.iteraciones,'string'));
E=str2num(get(handles.error,'string'));

n=length(A);
X=x;
for k=1:m
    H = A * x';
    if abs(H - b') < E
        break
    end
        for i=1:n
        sum=0;
            for j=1:n
                if i~=j
                    sum=sum+A(i,j)*x(j);
                end
            end
        U(i)=(b(i)-sum)/A(i,i);
        end
    for i=1:n
        x(i)=U(i);
    end
    set(handles.tabla,'data',x);
    if abs(X-x)<E
        break
    end
    X=x;
     disp(k);
end
disp('La respuesta final es');
disp(x);
