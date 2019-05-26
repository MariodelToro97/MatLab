function varargout = SimpsonCompuesto_ventana(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SimpsonCompuesto_ventana_OpeningFcn, ...
                   'gui_OutputFcn',  @SimpsonCompuesto_ventana_OutputFcn, ...
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

function SimpsonCompuesto_ventana_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = SimpsonCompuesto_ventana_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function fx_Callback(hObject, eventdata, handles)

function fx_CreateFcn(hObject, eventdata, handles)
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

function tol_Callback(hObject, eventdata, handles)

function tol_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function calcular_Callback(hObject, eventdata, handles)
fx=get(handles.fx,'string');
a=str2num(get(handles.a,'string'));
b=str2num(get(handles.b,'string'));
tol=str2num(get(handles.tol,'string'));
%Condiciones iniciales
err(1)=100;ns=2;exito=0;
%Calculo de la integral
while exito==0
    h=(b-a)/ns;
    x=a:h:b;
    y=eval(fx);
    if (rem(ns,3)==0) %simpson 3/8
        Iaprox(ns-1)=3*h/8*(y(1)+y(ns+1)+3*sum(y(2:3:ns-1))+3*sum(y(3:3:ns))+2*sum(y(4:3:ns-2)));
    elseif (rem(ns,2)==0) %simpson 1/3
        Iaprox(ns-1)=h/3*(y(1)+y(ns+1)+4*sum(y(2:2:ns))+2*sum(y(3:2:ns-1)));
    else % combinacion 3/8 + 1/3
        Iaprox(ns-1)=h/3*(y(1)+y(ns-2)+4*sum(y(2:2:ns-3))+2*sum(y(3:2:ns-4)))+3*h/8*(y(ns-2)+3*y(ns-1)+3*y(ns)+y(ns+1));
    end 
    if ns>2 % calculo del error
        err(ns-1)=abs((Iaprox(ns-1)-Iaprox(ns-2))/Iaprox(ns-1))*100;
        if err(ns-1)<tol
            exito=1;
            break;
        end
    end
    ns=ns+1;
end
n=2:ns;
set(handles.r,'string',Iaprox(ns-1));

function r_Callback(hObject, eventdata, handles)

function r_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function pushbutton2_Callback(hObject, eventdata, handles)
clear all; close all;clc; unidad4;

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Simpson Compuesto.pdf');