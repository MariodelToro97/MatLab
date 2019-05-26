function varargout = GaussJordan(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GaussJordan_OpeningFcn, ...
                   'gui_OutputFcn',  @GaussJordan_OutputFcn, ...
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

function GaussJordan_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);

function varargout = GaussJordan_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

function matriz_Callback(hObject, eventdata, handles)

function matriz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Calcular_Callback(hObject, eventdata, handles)
A=get(handles.matriz,'String');
A=str2num(A);
tol=0;

Old_Format=get(0,'Format');
if nargin < 1

    A = [ 9     4     1     6    12     7
          4     0     4    15     1    14
          7     0     7     8    10     9
         16     0    16     3    13     2
          0     2    -4     0     0     0
          0     6   -12     0     0     0
          9     0     9     6    12     7
          5     0     5    10     8    11];
end
format rat
more off
clc
home
A

[m,n] = size(A);

if (nargin < 2), tol = max([m,n])*eps*norm(A,'inf'); end

i = 1;
j = 1;
k = 0;
while (i <= m) & (j <= n)
   [p,k] = max(abs(A(i:m,j))); k = k+i-1;
   if (p <= tol)
      home
      A(i:m,j) = zeros(m-i+1,1)
      j = j + 1;
   else
      if i ~= k
         home
         A([i k],:) = A([k i],:)
      end
      home
      A(i,j:n) = A(i,j:n)/A(i,j)
      home
      A
      for k = 1:m
         if k ~= i
            home
            A(k,j:n) = A(k,j:n) - A(k,j)*A(i,j:n)
         end
      end
      i = i + 1;
      j = j + 1;
   end
end
set(handles.table,'data',A);
set(0,'Format',Old_Format)

function Ayuda_Callback(hObject, eventdata, handles)
winopen('Ayuda Gauss Jordan.pdf');

function Regresar_Callback(hObject, eventdata, handles)
close(GaussJordan);
open(Unidad3);
