function varargout = Unidad3(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Unidad3_OpeningFcn, ...
                   'gui_OutputFcn',  @Unidad3_OutputFcn, ...
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

% --- Executes just before Unidad3 is made visible.
function Unidad3_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = Unidad3_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on button press in Regresar.
function Regresar_Callback(hObject, eventdata, handles)
close(Unidad3);
open(untitled);
clc;

% --- Executes on button press in Ayuda.
function Ayuda_Callback(hObject, eventdata, handles)
winopen('U3.pdf');
clc;

% --- Executes on button press in Jacobi.
function Jacobi_Callback(hObject, eventdata, handles)
close(Unidad3);
open(Jacobi);
clc;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close(Unidad3);
open(GaussJordan);
clc;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
close(Unidad3);
open(GaussSeidel);
clc;

% --- Executes on button press in LU.
function LU_Callback(hObject, eventdata, handles)
close(Unidad3);
open(LU);
clc;
