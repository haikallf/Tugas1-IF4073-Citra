function varargout = Soal2(varargin)
% SOAL2 MATLAB code for Soal2.fig
%      SOAL2, by itself, creates a new SOAL2 or raises the existing
%      singleton*.
%
%      H = SOAL2 returns the handle to a new SOAL2 or the handle to
%      the existing singleton*.
%
%      SOAL2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SOAL2.M with the given input arguments.
%
%      SOAL2('Property','Value',...) creates a new SOAL2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Soal2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Soal2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Soal2

% Last Modified by GUIDE v2.5 20-Sep-2022 05:46:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Soal2_OpeningFcn, ...
                   'gui_OutputFcn',  @Soal2_OutputFcn, ...
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


% --- Executes just before Soal2 is made visible.
function Soal2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Soal2 (see VARARGIN)

% Choose default command line output for Soal2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Soal2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Soal2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in soal2__uploadBtn.
function soal2__uploadBtn_Callback(hObject, eventdata, handles)
[rawname, rawpath] = uigetfile(('*.jpg'), 'Select Image');
fullname = [rawpath rawname];
set(handles.soal2__directory, 'String', fullname);
set(handles.soal2__directory, 'enable', 'off');

% --- Executes on button press in soal2__goToHomeBtn.
function soal2__goToHomeBtn_Callback(hObject, eventdata, handles)
close(Soal2);
Home;

function soal2__directory_Callback(hObject, eventdata, handles)
% hObject    handle to soal2__directory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soal2__directory as text
%        str2double(get(hObject,'String')) returns contents of soal2__directory as a double


% --- Executes during object creation, after setting all properties.
function soal2__directory_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soal2__directory (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function soal2__inputA_Callback(hObject, eventdata, handles)
% hObject    handle to soal2__inputA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soal2__inputA as text
%        str2double(get(hObject,'String')) returns contents of soal2__inputA as a double


% --- Executes during object creation, after setting all properties.
function soal2__inputA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soal2__inputA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function soal2__inputB_Callback(hObject, eventdata, handles)
% hObject    handle to soal2__inputB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of soal2__inputB as text
%        str2double(get(hObject,'String')) returns contents of soal2__inputB as a double


% --- Executes during object creation, after setting all properties.
function soal2__inputB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soal2__inputB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in soal2__brightenBtn.
function soal2__brightenBtn_Callback(hObject, eventdata, handles)
fullname = get(handles.soal2__directory, 'String');
img = imread(fullname);
grayscale_img = im2gray(img);

idx = get(handles.soal2__dropdown,'Value');
items = get(handles.soal2__dropdown,'String');
selectedItem = items{idx};

axes(handles.soal2__inputImg);
imshow(img);

a = get(handles.soal2__inputA, 'String');
a = str2double(a);

b = get(handles.soal2__inputB, 'String');
b = str2double(b);

axes(handles.soal2__outputImg);

switch selectedItem
    case "Image Brightening"
        outputImage = imageBrightening(img, a, b);
    case "Log Transformation"
        outputImage = logTransform(img, a);
    case "Power Transformation"
        outputImage = powerTransform(img, a, b);
    case "Contrast Stretching"
        outputImage = contrastStretching(img);
    otherwise
        outputImage = imageBrightening(img, a, b);
end

imshow(outputImage, []);

axes(handles.soal2__inputHistR);
RGBHistogram(img(:, :, 1));
title('R Histogram');

axes(handles.soal2__inputHistG);
RGBHistogram(img(:, :, 2));
title('G Histogram');

axes(handles.soal2__inputHistB);
RGBHistogram(img(:, :, 3));
title('B Histogram');

axes(handles.soal2__outputHistR);
RGBHistogram(outputImage(:, :, 1));
title('Output R Histogram');

axes(handles.soal2__outputHistG);
RGBHistogram(outputImage(:, :, 2));
title('Output G Histogram');

axes(handles.soal2__outputHistB);
RGBHistogram(outputImage(:, :, 3));
title('Output B Histogram');


% --- Executes on selection change in soal2__dropdown.
function soal2__dropdown_Callback(hObject, eventdata, handles)
    idx = get(handles.soal2__dropdown,'Value');
    items = get(handles.soal2__dropdown,'String');
    selectedItem = items{idx};
    
    switch selectedItem
        case "Image Brightening"
            set(handles.soal2__inputATxt,'String','A:');
            set(handles.soal2__inputATxt,'visible','on');
            set(handles.soal2__inputA,'visible','on');
            set(handles.soal2__inputBTxt,'String','B:');
            set(handles.soal2__inputBTxt,'visible','on');
            set(handles.soal2__inputB,'visible','on');
        case "Log Transformation"
            set(handles.soal2__inputATxt,'String','C:');
            set(handles.soal2__inputBTxt,'visible','off');
            set(handles.soal2__inputB,'visible','off');
        case "Power Transformation"
            set(handles.soal2__inputATxt,'String','C:');
            set(handles.soal2__inputATxt,'visible','on');
            set(handles.soal2__inputA,'visible','on');
            set(handles.soal2__inputBTxt,'String','G:');
            set(handles.soal2__inputBTxt,'visible','on');
            set(handles.soal2__inputB,'visible','on');
        case "Contrast Stretching"
            set(handles.soal2__inputATxt,'visible','off');
            set(handles.soal2__inputA,'visible','off');
            set(handles.soal2__inputBTxt,'visible','off');
            set(handles.soal2__inputB,'visible','off');
        otherwise
            set(handles.soal2__inputATxt,'String','A:');
            set(handles.soal2__inputATxt,'visible','on');
            set(handles.soal2__inputA,'visible','on');
            set(handles.soal2__inputBTxt,'String','B:');
            set(handles.soal2__inputBTxt,'visible','on');
            set(handles.soal2__inputB,'visible','on');
    end


% --- Executes during object creation, after setting all properties.
function soal2__dropdown_CreateFcn(hObject, eventdata, handles)
% hObject    handle to soal2__dropdown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end