function varargout = Unidad5(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Unidad5_OpeningFcn, ...
                   'gui_OutputFcn',  @Unidad5_OutputFcn, ...
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

function Unidad5_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Unidad5_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function Lineal_Callback(hObject, eventdata, handles)
close(Unidad5);
open(Lineal);
clc;

function Cuadratica_Callback(hObject, eventdata, handles)
close(Unidad5);
open(InterpolacionCuadratica);
clc;

function Lagrange_Callback(hObject, eventdata, handles)
close(Unidad5);
open(Lagrange);
clc;

function Newton_Callback(hObject, eventdata, handles)
close(Unidad5);
open(GregoryNewton);
clc;

function Regresar_Callback(hObject, eventdata, handles)
close(Unidad5);
open(untitled);
clc;

function ayuda_Callback(hObject, eventdata, handles)
winopen('U5.pdf');