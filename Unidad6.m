function varargout = Unidad6(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Unidad6_OpeningFcn, ...
                   'gui_OutputFcn',  @Unidad6_OutputFcn, ...
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

function Unidad6_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Unidad6_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function Kutta2_Callback(hObject, eventdata, handles)
close(Unidad6);
open(Runge2);
clc;

function Kutta4_Callback(hObject, eventdata, handles)
close(Unidad6);
open(Runge4);
clc;

function Euler_Callback(hObject, eventdata, handles)
close(Unidad6);
open(Euler6);
clc;

function Regresar_Callback(hObject, eventdata, handles)
close(Unidad6);
open(untitled);
clc;

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ecuaciones-Dferenciales.pdf');