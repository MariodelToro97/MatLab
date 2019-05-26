function varargout = Romberg1(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Romberg1_OpeningFcn, ...
                   'gui_OutputFcn',  @Romberg1_OutputFcn, ...
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

function Romberg1_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Romberg1_OutputFcn(hObject, eventdata, handles) 
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

function calcular_Callback(hObject, eventdata, handles)
funcion = get(handles.fx,'string');
a = str2num(get(handles.a,'string'));
b = str2num(get(handles.b,'string'));
n = str2num(get(handles.int,'string'));

 h=(b-a); 
 M=1; 
 J=0; 
 R=zeros(n,n); 
 x=a;  f1=eval(funcion); 
 x=b; 
 f2=eval(funcion); 
 R(1,1)=h*(f1+f2)/2; 
 while (J<(n-1)) 
 J=J+1; 
 h=h/2; 
 s=0; 
 for p=1:M 
 x=a+h*(2*p-1); 
 f3=eval(funcion); 
 s=s+f3; 
 end 
 R(J+1,1)=(1/2)*(R(J,1))+h*s; 
 M=2*M; 
 for k =1:J 
 R(J+1,k+1)=R(J+1,k)+(R(J+1,k)-R(J,k))/(4^k-1); 
 end 
 end 
R 
set(handles.r,'string',R(J+1,J+1));
clc;

function r_Callback(hObject, eventdata, handles)

function r_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function int_Callback(hObject, eventdata, handles)

function int_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function regresar_Callback(hObject, eventdata, handles)
close(Romberg1);
open(unidad4);

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Romberg.pdf');