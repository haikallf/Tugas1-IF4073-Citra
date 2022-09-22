function varargout = Soal1(varargin)
% SOAL1 MATLAB code for Soal1.fig
%      SOAL1, by itself, creates a new SOAL1 or raises the existing
%      singleton*.
%
%      H = SOAL1 returns the handle to a new SOAL1 or the handle to
%      the existing singleton*.
%
%      SOAL1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOAL1.M with the given input arguments.
%
%      SOAL1('Property','Value',...) creates a new SOAL1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Soal1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Soal1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Soal1

% Last Modified by GUIDE v2.5 20-Sep-2022 02:15:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Soal1_OpeningFcn, ...
                   'gui_OutputFcn',  @Soal1_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before Soal1 is made visible.
function Soal1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Soal1 (see VARARGIN)

% Choose default command line output for Soal1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Soal1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Soal1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in soal1__uploadBtn.
function soal1__uploadBtn_Callback(hObject, eventdata, handles)
[rawname, rawpath] = uigetfile(('*.jpg'), 'Select Image');
fullname = [rawpath rawname];
set(handles.soal1__directory, 'String', fullname);

img = imread(fullname);
grayscale_img = im2gray(img);

axes(handles.soal1__histogram);
% imshow(grayscale_img);
grayscaleHistogram(grayscale_img);

axes(handles.axes2);
[counts, grayLevels] = imhist(grayscale_img);
bar(grayLevels, counts, 'BarWidth', 0.5);


function soal1__directory_Callback(hObject, eventdata, handles)
% hObject    handle to soal1__directory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soal1__directory as text
%        str2double(get(hObject,'String')) returns contents of soal1__directory as a double


% --- Executes during object creation, after setting all properties.
function soal1__directory_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soal1__directory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in soal1__goToHomeBtn.
function soal1__goToHomeBtn_Callback(hObject, eventdata, handles)
close(Soal1);
Home;

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
