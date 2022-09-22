function varargout = Soal4(varargin)
% SOAL4 MATLAB code for Soal4.fig
%      SOAL4, by itself, creates a new SOAL4 or raises the existing
%      singleton*.
%
%      H = SOAL4 returns the handle to a new SOAL4 or the handle to
%      the existing singleton*.
%
%      SOAL4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOAL4.M with the given input arguments.
%
%      SOAL4('Property','Value',...) creates a new SOAL4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Soal4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Soal4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Soal4

% Last Modified by GUIDE v2.5 21-Sep-2022 00:20:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Soal4_OpeningFcn, ...
                   'gui_OutputFcn',  @Soal4_OutputFcn, ...
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


% --- Executes just before Soal4 is made visible.
function Soal4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Soal4 (see VARARGIN)

% Choose default command line output for Soal4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Soal4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Soal4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in soal4__uploadBtn.
function soal4__uploadBtn_Callback(hObject, eventdata, handles)
[rawname, rawpath] = uigetfile(({'*.png';'*.jpg';'*.tiff'}), 'Select Image');
fullname = [rawpath rawname];
set(handles.soal4__directoryInput, 'String', fullname);
set(handles.soal4__directoryInput, 'enable', 'off');

% --- Executes on button press in soal4__goToHomeBtn.
function soal4__goToHomeBtn_Callback(hObject, eventdata, handles)
close(Soal4);
Home;

function soal4__directoryInput_Callback(hObject, eventdata, handles)
% hObject    handle to soal4__directoryInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soal4__directoryInput as text
%        str2double(get(hObject,'String')) returns contents of soal4__directoryInput as a double


% --- Executes during object creation, after setting all properties.
function soal4__directoryInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soal4__directoryInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in soal4__histogramSpesificationBtn.
function soal4__histogramSpesificationBtn_Callback(hObject, eventdata, handles)
set(handles.soal4__histogramSpesificationBtn,'Enable','off');
set(handles.soal4__histogramSpesificationBtn,'String','0%');
fullname = get(handles.soal4__directoryInput, 'String');
fullnameRef = get(handles.soal4__directoryRef, 'String');

img = imread(fullname);
grayscaleImg = im2gray(img);
set(handles.soal4__histogramSpesificationBtn,'String','10%');

axes(handles.soal4__inputImg);
imshow(grayscaleImg);
set(handles.soal4__histogramSpesificationBtn,'String','20%');

refImg = imread(fullnameRef);
grayscaleRefImg = im2gray(refImg);
set(handles.soal4__histogramSpesificationBtn,'String','30%');

axes(handles.soal4__refImg);
imshow(grayscaleRefImg);
set(handles.soal4__histogramSpesificationBtn,'String','40%');

outputImage = histogramSpecification(grayscaleImg, grayscaleRefImg);
set(handles.soal4__histogramSpesificationBtn,'String','50%');
axes(handles.soal4__outputImg);
imshow(outputImage, []);
set(handles.soal4__histogramSpesificationBtn,'String','60%');

axes(handles.soal4__inputHist);
grayscaleHistogram(grayscaleImg);
set(handles.soal4__histogramSpesificationBtn,'String','70%');
title('Histogram');

axes(handles.soal4__refHist);
grayscaleHistogram(grayscaleRefImg);
set(handles.soal4__histogramSpesificationBtn,'String','80%');
title('Histogram');

axes(handles.soal4__outputHist);
grayscaleHistogram(outputImage);
title('Output Histogram');
set(handles.soal4__histogramSpesificationBtn,'String','100%');
set(handles.soal4__histogramSpesificationBtn,'String','Specification');
set(handles.soal4__histogramSpesificationBtn,'Enable','on');


% --- Executes on button press in soal4__uploadRefBtn.
function soal4__uploadRefBtn_Callback(hObject, eventdata, handles)
[rawname, rawpath] = uigetfile(({'*.png';'*.jpg';'*.tiff'}), 'Select Image');
fullname = [rawpath rawname];
set(handles.soal4__directoryRef, 'String', fullname);
set(handles.soal4__directoryRef, 'enable', 'off');



function soal4__directoryRef_Callback(hObject, eventdata, handles)
% hObject    handle to soal4__directoryRef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soal4__directoryRef as text
%        str2double(get(hObject,'String')) returns contents of soal4__directoryRef as a double


% --- Executes during object creation, after setting all properties.
function soal4__directoryRef_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soal4__directoryRef (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
