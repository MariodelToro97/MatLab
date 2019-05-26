function varargout = unidad4(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @unidad4_OpeningFcn, ...
                   'gui_OutputFcn',  @unidad4_OutputFcn, ...
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

function unidad4_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = unidad4_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles)
clear all; close all; Trapecio_ventana;
clc;

function pushbutton2_Callback(hObject, eventdata, handles)
clear all; close all; Simpson13_ventana;
clc;

function pushbutton3_Callback(hObject, eventdata, handles)
clear all; close all;Simpson38_ventana;
clc;

function pushbutton4_Callback(hObject, eventdata, handles)
clear all; close all; SimpsonCompuesto_ventana;
clc;

function pushbutton5_Callback(hObject, eventdata, handles)
clear all; close all; cuad_gauss;
clc;

function pushbutton6_Callback(hObject, eventdata, handles)
clear all; close all; Derivada_F_D;
clc;

function pushbutton7_Callback(hObject, eventdata, handles)
clear all; close all; Derivada_F_I;
clc;

function pushbutton8_Callback(hObject, eventdata, handles)
clear all; close all; Derivada_F_C;
clc;

function pushbutton9_Callback(hObject, eventdata, handles)
clear all; close all; untitled;
clc;

function Ayuda_Callback(hObject, eventdata, handles)
winopen('U4.pdf');

function Romberg_Callback(hObject, eventdata, handles)
close(unidad4);
open(Romberg1);
clc;
