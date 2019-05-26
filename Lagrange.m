function varargout = Lagrange(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Lagrange_OpeningFcn, ...
                   'gui_OutputFcn',  @Lagrange_OutputFcn, ...
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

function Lagrange_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Lagrange_OutputFcn(hObject, eventdata, handles) 
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
xi=str2num(get(handles.x,'String'));
yi=str2num(get(handles.fx,'String'));
n=length(xi);
x=sym('x'); %esta funcion nos permite dejar la variable  'x' como simbolica
% y asi poder trabajar con ella, sin tener que asignarle un valor.
for j=1:n
    producto=1;
    for i=1:j-1
        producto=producto*(x-xi(i)); %calculo del producto 1 superior de L
    end
    producto2=1;
    for i=j+1:n
        producto2=producto2*(x-xi(i)); %calculo del producto 2 superior de L
    end
    producto3=1;
    for i=1:j-1
        producto3=producto3*(xi(j)-xi(i)); %calculo del producto 3 inferior de L
    end
    producto4=1;
    for i=j+1:n
        producto4=producto4*(xi(j)-xi(i)); %calculo del producto 4 inferior de L
    end
    L(j)=(producto*producto2)/(producto3*producto4); %calculos de las L para
end
pn=0;
for j=1:n
    pn=pn+L(j)*yi(j); %calculo del polinomio interpolante
end
   %simplicar la expresion
   pn = simplify(pn); %este comando nos permite simplificar toda la expresion
   set(handles.funcion,'String',char(pn));
   
x=str2num(get(handles.buscar,'String'));
y=eval(pn); %evaluar el punto en el polinomio
set(handles.resultado,'String',y);

function funcion_Callback(hObject, eventdata, handles)

function funcion_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function resultado_Callback(hObject, eventdata, handles)

function resultado_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Regresar_Callback(hObject, eventdata, handles)
close(Lagrange);
open(Unidad5);

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Lagrange.pdf');
