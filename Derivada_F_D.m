function varargout = Derivada_F_D(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Derivada_F_D_OpeningFcn, ...
                   'gui_OutputFcn',  @Derivada_F_D_OutputFcn, ...
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

function Derivada_F_D_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = Derivada_F_D_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function pushbutton1_Callback(hObject, eventdata, handles)
clear all; close all ;clc; Primera_D;

function pushbutton2_Callback(hObject, eventdata, handles)
clear all; close all ;clc; Segunda_D;

function pushbutton3_Callback(hObject, eventdata, handles)
clear all; close all ;clc ;unidad4;
