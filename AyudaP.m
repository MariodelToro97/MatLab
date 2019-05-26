function varargout = AyudaP(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AyudaP_OpeningFcn, ...
                   'gui_OutputFcn',  @AyudaP_OutputFcn, ...
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

function AyudaP_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = AyudaP_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function regresar_Callback(hObject, eventdata, handles)
close(AyudaP);
open(untitled);

function Chapra_Callback(hObject, eventdata, handles)
winopen('Chapra.pdf');

function Matlab_Callback(hObject, eventdata, handles)
winopen('matlab.pdf');