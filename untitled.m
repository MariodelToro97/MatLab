function varargout = untitled(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
clear all;
winopen('Importancia.pdf');
clc;

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
close all;clc; Unidad2;
clc;

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
close(untitled);
open(Unidad3);
clc;

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
close all;clc; unidad4;
clc;

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
close(untitled);
open(Unidad5);
clc;

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
close(untitled);
open(Unidad6);
clc;

% --- Executes on button press in Salir.
function Salir_Callback(hObject, eventdata, handles)
close(untitled);
msgbox('Gracias por usar la aplicación                                                    Lo esperamos de vuelta pronto                                                     Creado por:                                                                 Mario Josue del Toro Morales                                                            Alejandro García Álvarez');
clc;

% --- Executes on button press in Ayuda.
function Ayuda_Callback(hObject, eventdata, handles)
close(untitled);
open(AyudaP);
clc;

% --- Executes on button press in acercade.
function acercade_Callback(hObject, eventdata, handles)
winopen('Acercade.pdf');
clc;
