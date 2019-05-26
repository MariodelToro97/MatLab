function varargout = GregoryNewton(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GregoryNewton_OpeningFcn, ...
                   'gui_OutputFcn',  @GregoryNewton_OutputFcn, ...
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

function GregoryNewton_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = GregoryNewton_OutputFcn(hObject, eventdata, handles) 
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
x=str2num(get(handles.x,'String'));
y=str2num(get(handles.fx,'String'));

%Cuerpo del programa
xa=x;ya=y;
% Formacion de las diferencias divididas
d=zeros(length(y));
d(:,1)=y';
for k=2:length(x)
    for j=1:length(x)+1-k
        d(j,k)=(d(j+1,k-1)-d(j,k-1))/(x(j+k-1)-x(j));
    end
end
% Formacion del polinomio
for w=1:length(x)
    ds=num2str(abs(d(1,w)));
    if w>1
      if x(w-1)<0
          sg1='+';
    else
          sg1='-';
       end
    end
    if d(1,w)<0
       sg2='-';
    else
       sg2='+';
    end
    if w==1
       acum=num2str(d(1,1));
    elseif w==2
       polact=['(x' sg1 num2str(abs(x(w-1))) ')' ];
       actual=[ds '*' polact];
    acum=[acum sg2 actual];
    else
       polact=[polact '.*' '(x' sg1 num2str(abs(x(w-1))) ')' ];
       actual=[ds '*' polact];
    acum=[acum sg2 actual];
    end
end
 

set(handles.polinomio,'string',acum);
x=str2num(get(handles.buscar,'String'));
if x>max(xa)|x<min(xa)
   fprintf('t Punto fuera de rango. El resultado puede ser equivocado n');
end
xinterp=x;
yinterp=eval(acum);
set(handles.resultado,'string',yinterp);
xg=linspace(min(xa),max(xa));
x=xg;yg=eval(acum);
plot(xg,yg,xa,ya,'.r',xinterp,yinterp,'or');
grid

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

function Regresar_Callback(hObject, eventdata, handles)
close(GregoryNewton);
open(Unidad5);

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Gregory Newton.pdf');