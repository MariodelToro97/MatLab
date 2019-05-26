function varargout = Unidad2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Unidad2_OpeningFcn, ...
                   'gui_OutputFcn',  @Unidad2_OutputFcn, ...
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

function Unidad2_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Unidad2_OutputFcn(hObject, eventdata, handles)
varargout{1} = handles.output;

function BI_Callback(hObject, eventdata, handles)
clear all; close all;biseccion_ventana;
clc;

function NR_Callback(hObject, eventdata, handles)
clear all; close all; newtonraphson_ventana;
clc;

function pushbutton3_Callback(hObject, eventdata, handles)

function PF_Callback(hObject, eventdata, handles)
clear all; close all; iteracionsimpledepuntofijo_ventana;
clc;

function R_Callback(hObject, eventdata, handles)
clear all; close all; untitled;
clc;

function FA_Callback(hObject, eventdata, handles)
clear all; close all;falsaposicion_ventana;
clc;

function pushbutton7_Callback(hObject, eventdata, handles)
winopen('U2.pdf');
clc;
