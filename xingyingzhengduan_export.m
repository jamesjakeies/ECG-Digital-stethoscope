function varargout = xingyingzhengduan_export(varargin)
% XINGYINGZHENGDUAN_EXPORT M-file for xingyingzhengduan_export.fig
%      XINGYINGZHENGDUAN_EXPORT, by itself, creates a new XINGYINGZHENGDUAN_EXPORT or raises the existing
%      singleton*.
%
%      H = XINGYINGZHENGDUAN_EXPORT returns the handle to a new XINGYINGZHENGDUAN_EXPORT or the handle to
%      the existing singleton*.
%
%      XINGYINGZHENGDUAN_EXPORT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in XINGYINGZHENGDUAN_EXPORT.M with the given input arguments.
%
%      XINGYINGZHENGDUAN_EXPORT('Property','Value',...) creates a new XINGYINGZHENGDUAN_EXPORT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before xingyingzhengduan_export_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to xingyingzhengduan_export_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help xingyingzhengduan_export

% Last Modified by GUIDE v2.5 21-Feb-2020 19:24:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @xingyingzhengduan_export_OpeningFcn, ...
                   'gui_OutputFcn',  @xingyingzhengduan_export_OutputFcn, ...
                   'gui_LayoutFcn',  @xingyingzhengduan_export_LayoutFcn, ...
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


% --- Executes just before xingyingzhengduan_export is made visible.
function xingyingzhengduan_export_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to xingyingzhengduan_export (see VARARGIN)

% Choose default command line output for xingyingzhengduan_export
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes xingyingzhengduan_export wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = xingyingzhengduan_export_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Help_Callback(hObject, eventdata, handles)
% hObject    handle to Help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Guide_Callback(hObject, eventdata, handles)
% hObject    handle to Guide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function About_Callback(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function New_Callback(hObject, eventdata, handles)
% hObject    handle to New (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[FileName PathName]=uiputfile('*.*','文件另存为');%创建一个保存文件的对话框，并返回路径。
[s ,mess ,messid] = mkdir(PathName,FileName);%创建用户文件夹

while s~=1
    errordlg( mess , '新建文件出错');
    pause(2);
    helpdlg('请重新选择路径或更改文件名','提示');
    pause(2);
    [FileName PathName]=uiputfile('*.*','文件另存为');
    [s ,mess ,messid] = mkdir(PathName,FileName);
end
pathName = strcat(PathName , '\');
pathName = strcat(pathName , FileName);

handles.pathName = pathName;%定义PathName为全局变量

guidata(hObject , handles);%更新数据


% --------------------------------------------------------------------
function Open_Callback(hObject, eventdata, handles)
% hObject    handle to Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName pathName]=uiputfile({'*.dat' , '*.txt'},'打开文件路径');

handles.fileName = fileName;%定义FileName为全局变量
handles.PathName = PathName;

guidata(hObject , handles);


% --------------------------------------------------------------------
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function SaveAs_Callback(hObject, eventdata, handles)
% hObject    handle to SaveAs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

clc
clear all
close(gcf);%u关闭当前GUI


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Title_Callback(hObject, eventdata, handles)
% hObject    handle to Title (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Title as text
%        str2double(get(hObject,'String')) returns contents of Title as a double


% --- Executes during object creation, after setting all properties.
function Title_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Title (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function filename_Callback(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filename as text
%        str2double(get(hObject,'String')) returns contents of filename as a double


% --- Executes during object creation, after setting all properties.
function filename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in OriginalWave.
function OriginalWave_Callback(hObject, eventdata, handles)
% hObject    handle to OriginalWave (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)  
if(get(hObject,'Value')==get(hObject,'Max'))
    
    set(findobj('Tag','Threshold'),'enable','off');
    set(findobj('Tag','DownThreshold'),'enable','off');
    set(findobj('Tag','ChangeThreshold'),'enable','off');
    hold off;
    plot(handles.axes1,handles.HeartSoundsOriginalCutT ,handles.HeartSoundsOriginalCut);
    axis([0,max(handles.HeartSoundsOriginalCutT) ,min(handles.HeartSoundsOriginalCut)*1.1, max(handles.HeartSoundsOriginalCut)*1.1]);
    title('初始波形');
else
    set(findobj('Tag','Threshold'),'enable','on');
    set(findobj('Tag','DownThreshold'),'enable','on');
    set(findobj('Tag','ChangeThreshold'),'enable','on');
end

% Hint: get(hObject,'Value') returns toggle state of OriginalWave


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in fileopen.
function fileopen_Callback(hObject, eventdata, handles)
% hObject    handle to fileopen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[fileNameWav pathNameWav]=uigetfile('*.wav' ,'打开wav文件路径');
if fileNameWav == 0
    errordlg('wrong file' , 'open file error');
    return;
end

set(handles.filename , 'string' , fileNameWav);
pathName = strcat(pathNameWav , '\');
pathName = strcat(pathName ,fileNameWav);

[temp,fs,bits,info] =  wavread(pathName);

handles.bits = bits;

if info.fmt.nChannels == 2
    temp = (temp(:,1)+temp(:,2))./2;
end
HeartSoundsOriginal = temp(:,1);


longHeartSoundsOriginal = length(HeartSoundsOriginal);
if longHeartSoundsOriginal > (5*fs)
      HeartSoundsOriginalCut = HeartSoundsOriginal((longHeartSoundsOriginal/2-floor(2.5.*fs)):(longHeartSoundsOriginal/2+floor(2.5.*fs)),1);
else
     HeartSoundsOriginalCut =  HeartSoundsOriginal;
end

handles.HeartSoundsOriginalCutT = (1:1:length( HeartSoundsOriginalCut))/fs;
handles.HeartSoundsOriginalCut = HeartSoundsOriginalCut;

low = 15/2265;
high= 1125/1140;
wp=[low,high];
ws=[0.001,0.999];
[N,wc]=buttord(wp,ws,3,18);%巴特沃斯滤波 通带最大衰减3 和组带最小衰减18(dB),提取巴特沃斯录波器的阶数。 
[b,a]=butter(N,wc,'bandpass'); 
HeartSounds=filter(b,a,HeartSoundsOriginal);%一维数字录波器 输入x为滤波前序列，y为滤波结果序列，b/a 提供滤波器系数

PathNoiseDownFile = [pathNameWav '巴特沃斯滤波.wav'];

wavwrite(HeartSounds,fs,handles.bits,PathNoiseDownFile);


HeartSoundsOriginalT = (1:1:length(HeartSoundsOriginal))./fs;
plot(handles.axes1,HeartSoundsOriginalT,HeartSoundsOriginal);%在波形显示区绘出波形
axis([0,max(HeartSoundsOriginalT) ,min(HeartSoundsOriginal)*1.1, max(HeartSoundsOriginal)*1.1]);
title('初始波形');

handles.fs = fs;
handles.HeartSoundsOriginalT = HeartSoundsOriginalT;
handles.HeartSoundsOriginal = HeartSoundsOriginal;
handles.fileNameWav = fileNameWav;
handles.pathNameWav = pathNameWav;

guidata(hObject , handles);








% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over fileopen.
function fileopen_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to fileopen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object deletion, before destroying properties.
function filename_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to filename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function uipushtool5_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)[FileName PathName]=uiputfile('*.*','文件另存为');%创建一个保存文件的对话框，并返回路径。
[FileName PathName]=uiputfile('*.*','文件另存为');%创建一个保存文件的对话框，并返回路径。
[s ,mess ,messid] = mkdir(PathName,FileName);%创建用户文件夹

while s~=1
    errordlg( mess , '新建文件出错');
    pause(2);
    helpdlg('请重新选择路径或更改文件名','提示');
    pause(2);
    [FileName PathName]=uiputfile('*.*','文件另存为');
    [s ,mess ,messid] = mkdir(PathName,FileName);
end
pathName = strcat(PathName , '\');
pathName = strcat(pathName , FileName);

handles.pathName = pathName;%定义PathName为全局变量

guidata(hObject , handles);%更新数据



% --------------------------------------------------------------------
function uipushtool6_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to uipushtool6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fileName pathName]=uiputfile({'*.dat' , '*.txt'},'打开文件路径');

handles.fileName = fileName;%定义FileName为全局变量
handles.pathName = pathName;

guidata(hObject , handles);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in soundcard.
function soundcard_Callback(hObject, eventdata, handles)
% hObject    handle to soundcard (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(findobj('Tag','recordtime'),'enable','on');%
h=findobj('Tag','filename');                   %设置选择声卡是，不同的选项选择情况
set(h,'enable','off');
set(handles.fileopen,'enable','off');
set(handles.startrecord,'enable','on');
% Hint: get(hObject,'Value') returns toggle state of soundcard


% --- Executes on button press in WAVfile.
function WAVfile_Callback(hObject, eventdata, handles)
% hObject    handle to WAVfile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(findobj('Tag','WAVfile'),'enable','on');
h=findobj('Tag' , 'recordtime');
set(h , 'enable' , 'off');
h=findobj('Tag','filename');
set(h,'enable','on');
set(handles.fileopen,'enable','on');
set(handles.startrecord,'enable','off');

% Hint: get(hObject,'Value') returns toggle state of WAVfile



function recordtime_Callback(hObject, eventdata, handles)
% hObject    handle to recordtime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of recordtime as text
%        str2double(get(hObject,'String')) returns contents of recordtime as a double


% --- Executes during object creation, after setting all properties.
function recordtime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to recordtime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startrecord.
function startrecord_Callback(hObject, eventdata, handles)
% hObject    handle to startrecord (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

pathNameWav = uigetdir; %设置保存路径
fs = str2double(get(findobj('Tag','samplerate'),'String'));%获得设定的采样频率Fs值
HeartSoundsOriginal = wavrecord(str2double(get(handles.recordtime,'String'))*fs, fs,1, 'double');%根据设定的录音时长进行录音，将其存入handles.y中
handles.bits = 8;
fileNameWav = '新建心音文件.wav';
pathName = strcat(pathNameWav , '\');
pathName = strcat(pathName ,fileNameWav);
wavwrite(HeartSoundsOriginal,fs,handles.bits,pathName);

HeartSoundsOriginalT = (1:1:length(HeartSoundsOriginal))./fs;
plot(handles.axes1,HeartSoundsOriginalT,HeartSoundsOriginal);%在波形显示区绘出波形
axis([0,max(HeartSoundsOriginalT) ,min(HeartSoundsOriginal)*1.1, max(HeartSoundsOriginal)*1.1]);
title('初始波形');

HeartSoundsOriginalSize = size(HeartSoundsOriginal);               %
set(handles.samplenum,'string',num2str(HeartSoundsOriginalSize(1)));%将所采到的点的数量输出在“采样点数”中

longHeartSoundsOriginal = length(HeartSoundsOriginal);
if longHeartSoundsOriginal > (5*fs)
      HeartSoundsOriginalCut = HeartSoundsOriginal((longHeartSoundsOriginal/2-floor(2.5*fs)):(longHeartSoundsOriginal/2+floor(2.5*fs)),1);
else
     HeartSoundsOriginalCut =  HeartSoundsOriginal;
end

handles.HeartSoundsOriginalCutT = (1:1:length( HeartSoundsOriginalCut))/fs;
handles.HeartSoundsOriginalCut = HeartSoundsOriginalCut;


low = 15/2265;
high= 1125/1140;
wp=[low,high];
ws=[0.001,0.999];
[N,wc]=buttord(wp,ws,3,18);%巴特沃斯滤波 通带最大衰减3 和组带最小衰减18(dB),提取巴特沃斯录波器的阶数。 
[b,a]=butter(N,wc,'bandpass'); 
HeartSounds=filter(b,a,HeartSoundsOriginal);%一维数字录波器 输入x为滤波前序列，y为滤波结果序列，b/a 提供滤波器系数

PathNoiseDownFile = [pathNameWav '巴特沃斯滤波.wav'];

wavwrite(HeartSounds,fs,handles.bits,PathNoiseDownFile);

handles.fs = fs;
handles.HeartSoundsOriginalT = HeartSoundsOriginalT;
handles.HeartSoundsOriginal = HeartSoundsOriginal;
handles.fileNameWav = fileNameWav;
handles.pathNameWav = pathNameWav;

guidata(hObject,handles);



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function samplerate_Callback(hObject, eventdata, handles)
% hObject    handle to samplerate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of samplerate as text
%        str2double(get(hObject,'String')) returns contents of samplerate as a double


% --- Executes during object creation, after setting all properties.
function samplerate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to samplerate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function samplenum_Callback(hObject, eventdata, handles)
% hObject    handle to samplenum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of samplenum as text
%        str2double(get(hObject,'String')) returns contents of samplenum as a double


% --- Executes during object creation, after setting all properties.
function samplenum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to samplenum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Threshold_Callback(hObject, eventdata, handles)
% hObject    handle to Threshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Threshold as text
%        str2double(get(hObject,'String')) returns contents of Threshold as a double


% --- Executes during object creation, after setting all properties.
function Threshold_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Threshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ChangeThreshold.
function ChangeThreshold_Callback(hObject, eventdata, handles)
% hObject    handle to ChangeThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function HeartRateNum_Callback(hObject, eventdata, handles)
% hObject    handle to HeartRateNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of HeartRateNum as text
%        str2double(get(hObject,'String')) returns contents of HeartRateNum as a double


% --- Executes during object creation, after setting all properties.
function HeartRateNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to HeartRateNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S1Range_Callback(hObject, eventdata, handles)
% hObject    handle to S1Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S1Range as text
%        str2double(get(hObject,'String')) returns contents of S1Range as a double


% --- Executes during object creation, after setting all properties.
function S1Range_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S1Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S2Range_Callback(hObject, eventdata, handles)
% hObject    handle to S2Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S2Range as text
%        str2double(get(hObject,'String')) returns contents of S2Range as a double


% --- Executes during object creation, after setting all properties.
function S2Range_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S2Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S1AndS2Range_Callback(hObject, eventdata, handles)
% hObject    handle to S1AndS2Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S1AndS2Range as text
%        str2double(get(hObject,'String')) returns contents of S1AndS2Range as a double


% --- Executes during object creation, after setting all properties.
function S1AndS2Range_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S1AndS2Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S1ToS1Range_Callback(hObject, eventdata, handles)
% hObject    handle to S1ToS1Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S1ToS1Range as text
%        str2double(get(hObject,'String')) returns contents of S1ToS1Range as a double


% --- Executes during object creation, after setting all properties.
function S1ToS1Range_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S1ToS1Range (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function describe_Callback(hObject, eventdata, handles)
% hObject    handle to describe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of describe as text
%        str2double(get(hObject,'String')) returns contents of describe as a double


% --- Executes during object creation, after setting all properties.
function describe_CreateFcn(hObject, eventdata, handles)
% hObject    handle to describe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function advise_Callback(hObject, eventdata, handles)
% hObject    handle to advise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of advise as text
%        str2double(get(hObject,'String')) returns contents of advise as a double


% --- Executes during object creation, after setting all properties.
function advise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to advise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function channel_Callback(hObject, eventdata, handles)
% hObject    handle to channel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of channel as text
%        str2double(get(hObject,'String')) returns contents of channel as a double


% --- Executes during object creation, after setting all properties.
function channel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to channel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in replaybefore.
function replaybefore_Callback(hObject, eventdata, handles)
% hObject    handle to replaybefore (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sound(handles.HeartSoundsOriginal);

% --- Executes on button press in playafter.
function playafter_Callback(hObject, eventdata, handles)
% hObject    handle to playafter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in START.


% --- Executes on button press in START.
function START_Callback(hObject, eventdata, handles)
% hObject    handle to START (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%=========================================================================%
%==========================巴特沃斯滤波,小波滤波============================%

if handles.fs>11025
    if length(handles.HeartSoundsOriginal)>90000
       HeartSoundsFreDiv =handles.HeartSoundsOriginal(1:90000 , 1);
    else
       HeartSoundsFreDiv = handles.HeartSoundsOriginal(:,1);
    end
else
    if length(handles.HeartSoundsOriginal)>50000
      HeartSoundsFreDiv = handles.HeartSoundsOriginal(1:50000 , 1);
    else
      HeartSoundsFreDiv = handles.HeartSoundsOriginal(:,1);
    end
end

low = 15/2265;
high= 2250/2265;
wp=[low,high];
ws=[0.001,0.999];
[N,wc]=buttord(wp,ws,3,18);%巴特沃斯滤波 通带最大衰减3 和组带最小衰减18(dB),提取巴特沃斯录波器的阶数。 
[b,a]=butter(N,wc,'bandpass'); 
HeartSounds=filter(b,a,HeartSoundsFreDiv);%一维数字录波器 输入x为滤波前序列，y为滤波结果序列，b/a 提供滤波器系数

TN = round(handles.fs/2205);
HeartSoundsFreDiv = HeartSounds(1:TN:length(HeartSounds),1);  %TN分频
handles.fs = 2205;


%===========================三层小波分解得到局部信息========================%
wavename = 'db6';%Daubechies小波
[c,l]=wavedec(HeartSoundsFreDiv,3,wavename);
cd1 = detcoef(c,l,1);
cd2 = detcoef(c,l,2);
cd3 = detcoef(c,l,3);
ca3 = appcoef(c,l,wavename,3);
td1 = 1:length(cd1);
td1 = td1./(handles.fs/2);
td2 = 1:length(cd2);
td2 = td2./(handles.fs/2/2);
td3 = 1:length(cd3);
td3 = td3./(handles.fs/2/2/2);
ta3 = 1:length(ca3);
ta3 = ta3./(handles.fs/2/2/2);
cmax = max(c)+0.2;

handles.cd1 = cd1; 
handles.cd2 = cd2;
handles.cd3 = cd3;
handles.ca3 = ca3;
handles.td1 = td1;
handles.td2 = td2;
handles.td3 = td3;
handles.ta3 = ta3;
handles.cmax = cmax;

dd3=zeros(1,length(cd3));dd2=zeros(1,length(cd2));dd1=zeros(1,length(cd1));
c1 = [ca3' dd3 dd2 dd1];
y = waverec(c1' , l , wavename);

z=y/max(abs(y));
for t=1:length(z)
    if   z(t)==0
         en(t)=0;
         else en(t)=-z(t).^2.*log(z(t).^2);
    end
end

N=44;   %20ms内采样数
k = 1;
for j = 1:22:length(en)-44
    SUM=0;
    for i=j:j+N  
        if en(i) == 0
           en(i) = 1;
        else  SUM = SUM+en(i)^2*log(en(i)^2); 
        end
    end
    t=1/N;
    Es(k)=-t* SUM;
    k = k + 1;
end
M=mean(Es);
Std=std(Es);  
HeartSoundsAfterShannon=Es/Std;

[Pks ,loc] = findpeaks(HeartSoundsAfterShannon,'minpeakheight',0);
Pkm = HeartSoundsAfterShannon(find(diff(sign(diff(HeartSoundsAfterShannon)))==2)+1);
locPkm = find(diff(sign(diff(HeartSoundsAfterShannon)))==2)+1;
locPkm2 = locPkm;
%=======================================================================
%分裂数
numCanyonMin3 = 0;%小间断点数
numCanyonMax3 = 0;%大间断点数
CanyonMax = max(HeartSoundsAfterShannon)*0.4;
CanyonMin = max(HeartSoundsAfterShannon)*0.15;
locEqual = 1;

for i = 1:1:length(locPkm2)-1
    for j = locEqual:1:length(loc)-1
        if (locPkm2(i)>loc(j))&&(locPkm2(i)<loc(j+1))
             locEqual = j; 
            if (locPkm2(i)-loc(j))<(loc(j+1)-locPkm2(i))
                if Pks(j)-Pkm(i)>CanyonMax
                    numCanyonMax3 = numCanyonMax3+1;
                else if Pks(j)-Pkm(i)>CanyonMin%设置分裂基准点
                        numCanyonMin3 = numCanyonMin3+1;
                    end
                end       
            else if (locPkm2(i)-loc(j))>(loc(j+1)-locPkm2(i))
                    if Pks(j+1)-Pkm(i)>CanyonMax
                        numCanyonMax3 = numCanyonMax3+1;
                    else if Pks(j+1)-Pkm(i)>CanyonMin%设置分裂基准点
                        numCanyonMin3 = numCanyonMin3+1;
                        end
                    end            
                else if min(Pks(j+1)-Pkm(i) ,Pks(j)-Pkm(i))>CanyonMax
                        numCanyonMax3 = numCanyonMax3+1;
                    else if min(Pks(j+1)-Pkm(i) ,Pks(j)-Pkm(i))>CanyonMin
                            numCanyonMin3 = numCanyonMin3+1;
                        end
                    end 
                end         
            end
        end
    end
end


handles.numCanyonMax3=numCanyonMax3;
handles.numCanyonMin3=numCanyonMin3;


%=======================db6小波5层分解，提取集中能量========================%
[c,l]=wavedec(HeartSoundsFreDiv,5,wavename);
cd1 = detcoef(c,l,1);
cd2 = detcoef(c,l,2);
cd3 = detcoef(c,l,3);
cd4 = detcoef(c,l,4);
cd5 = detcoef(c,l,5);
ca5 = appcoef(c,l,wavename,5);
 
%对 cd2(200～400Hz),cd3(100～200 Hz),d4(50～100 Hz),d5 (25～50 Hz)信号进行重构%
%1.强制消噪
ad5=zeros(1,length(ca5));dd1=zeros(1,length(cd1));
c1 = [ad5 cd5' cd4' cd3' cd2' dd1];
HeartSoundsNoiseDown = waverec(c1' , l , wavename);
HeartSoundsNoiseDownT = (1:1:length(HeartSoundsNoiseDown))/handles.fs;

handles.HeartSoundsNoiseDown = HeartSoundsNoiseDown;
handles.HeartSoundsNoiseDownT = HeartSoundsNoiseDownT;

z=HeartSoundsNoiseDown /max(abs(HeartSoundsNoiseDown ));
for t=1:length(z)
    if   z(t)==0
         en(t)=0;
         else en(t)=-z(t).^2.*log(z(t).^2);
    end
end

N=44;   %20ms内采样数
k = 1;
for j = 1:22:length(en)-44
    SUM=0;
    for i=j:j+N  
        if en(i) == 0
           en(i) = 1;
        else  SUM= SUM+en(i)^2*log(en(i)^2); 
        end
    end
    t=1/N;
    Es(k)=-t* SUM;
    k = k + 1;
end
M=mean(Es);
Std=std(Es);  
HeartSoundsAfterShan=Es/Std;

handles.HeartSoundsAfterShanT=(1:1:length(HeartSoundsAfterShan)).*22/handles.fs;
handles.HeartSoundsAfterShan = HeartSoundsAfterShan;


[Pks ,loc] = findpeaks(HeartSoundsAfterShan,'minpeakheight',0);
Pkm = HeartSoundsAfterShan(find(diff(sign(diff(HeartSoundsAfterShan)))==2)+1);
locPkm = find(diff(sign(diff(HeartSoundsAfterShan)))==2)+1;
locPkm2 = locPkm;
%=======================================================================
%分裂数

numCanyonMin5 = 0;%小间断点数
numCanyonMax5 = 0;%大间断点数
CanyonMax = max(HeartSoundsAfterShan)*0.35;
CanyonMin = max(HeartSoundsAfterShan)*0.15;
locEqual = 1;

for i = 1:1:length(locPkm2)-1
    for j = locEqual:1:length(loc)-1
        if (locPkm2(i)>loc(j))&&(locPkm2(i)<loc(j+1))
             locEqual = j; 
            if (locPkm2(i)-loc(j))<(loc(j+1)-locPkm2(i))
                if Pks(j)-Pkm(i)>CanyonMax
                    numCanyonMax5 = numCanyonMax5+1;
                else if Pks(j)-Pkm(i)>CanyonMin%设置分裂基准点
                        numCanyonMin5 = numCanyonMin5+1;
                    end
                end       
            else if (locPkm2(i)-loc(j))>(loc(j+1)-locPkm2(i))
                    if Pks(j+1)-Pkm(i)>CanyonMax
                        numCanyonMax5 = numCanyonMax5+1;
                    else if Pks(j+1)-Pkm(i)>CanyonMin%设置分裂基准点
                        numCanyonMin5 = numCanyonMin5+1;
                        end
                    end            
                else if min(Pks(j+1)-Pkm(i) ,Pks(j)-Pkm(i))>CanyonMax
                        numCanyonMax5 = numCanyonMax5+1;
                    else if min(Pks(j+1)-Pkm(i) ,Pks(j)-Pkm(i))>CanyonMin
                            numCanyonMin5 = numCanyonMin5+1;
                        end
                    end 
                end         
            end
        end
    end
end

handles.numCanyonMax5 = numCanyonMax5;
handles.numCanyonMin5 = numCanyonMin5;


%==========================================================================
%心音特征值的提取
%
%============================标记第一，二心音位置===========================%
[Pks ,loc] = findpeaks(HeartSoundsAfterShannon,'minpeakheight',2);
long = length(loc);
n = 0;
for i = 2:1:long
    if loc(i-n) - loc(i-1-n)<length(HeartSoundsAfterShan)/(0.2*length(HeartSoundsAfterShan)/(length(c1)/2205))
        if Pks(i-n)>Pks(i-1-n);
            Pks(i-1-n) = [];
            loc(i-1-n) = [];
            n = n+1;
        else 
            Pks(i-n) = [];
            loc(i-n) = [];
            n = n+1;
        end
    end
end
%=========================================================================%
%
%============================提取第一，二心音峰值===========================%
if mod(length(Pks),2) ==0

    HeartS1 = Pks(1:2:length(Pks)-1);
    HeartS2 = Pks(2:2:length(Pks));
else
    HeartS1 = Pks(1:2:length(Pks)-2);
    HeartS2 = Pks(2:2:length(Pks)-1);
end
 
S1Average = (sum(HeartS1) - max(HeartS1)-min(HeartS1))/(length(HeartS1)-2);
S2Average = (sum(HeartS2) - max(HeartS2)-min(HeartS2))/(length(HeartS2)-2);

handles.S1Average = S1Average;
handles.S2Average = S2Average;

%=========================================================================%
%
%=============================提取第一，二心音时间门限======================%
SThHigh = (S1Average+S2Average)/2*0.4;%根据包络幅值设置2 个软阈值,大阈
SThLow = 0.05;%SThHigh 和小阈值SThLow , 其中SThHigh用于抑制噪声和杂音对搜索边界的影响, SThLow 用于确定S1和S2 的起止点

DoorPa = HeartSoundsAfterShan;

DoorPa(HeartSoundsAfterShan>=SThHigh)=1;
DoorPa(HeartSoundsAfterShan<=SThLow)=0;
DoorPa(DoorPa~=0&DoorPa~=1)=0;

DoorPaRangeSpot = find(sign(diff(DoorPa))~=0);

n = 1:1:length(DoorPaRangeSpot)/2-1;
S1ToS2DoorPaRange(n) = DoorPaRangeSpot(2*n+1)-DoorPaRangeSpot(2*n);
S1ToS2DoorPaRangeAverHigh = mean(S1ToS2DoorPaRange);

CanyonLoc = find(S1ToS2DoorPaRange<=(S1ToS2DoorPaRangeAverHigh/4.5)); 
for i = 1:1:length(CanyonLoc)
    if (S1ToS2DoorPaRange.*22/2205)<0.05
        DoorPa(DoorPaRangeSpot(2*CanyonLoc(i)) : DoorPaRangeSpot(2*CanyonLoc(i)+1))=1;%合并分裂
    else
        DoorPa(DoorPaRangeSpot(2*CanyonLoc(i)-1) : DoorPaRangeSpot(2*CanyonLoc(i)))=0;%去除杂音
    end
end

DoorPaRangeSpot = find(sign(diff(DoorPa))~=0);
n = 1:1:length(DoorPaRangeSpot)/2;
S1OrS2DoorPaRange(n) = DoorPaRangeSpot(2*n) - DoorPaRangeSpot(2*n-1);

NoiseLoc = find(S1OrS2DoorPaRange<3);
 for i = 1:1:length(NoiseLoc)
     DoorPa(DoorPaRangeSpot(2*NoiseLoc(i)-1):DoorPaRangeSpot(2*NoiseLoc(i))) = 0;
 end

%============================提取时间门限==================================%
for n = 1:1:length(DoorPaRangeSpot)/2;
    S1OrS2DoorPaRange(n) = DoorPaRangeSpot(2*n)-DoorPaRangeSpot(2*n-1);
end
try  
    if S1ToS2DoorPaRange(1)>S1ToS2DoorPaRange(2)
        S1OrS2DoorPaRange(1) = [];
        S1ToS2DoorPaRange(1) =[];
    end
catch
    
end
   
if mod(length(S1OrS2DoorPaRange),2) ==0                                
    n =1:1:length(S1OrS2DoorPaRange)/2;
    S1DoorPaRange = S1OrS2DoorPaRange(2*n-1).*22/2205;
    S2DoorPaRange = S1OrS2DoorPaRange(2*n).*22/2205;
    S1AndS2DoorRange = (S1ToS2DoorPaRange(n)+S1OrS2DoorPaRange(2*n-1)+S1OrS2DoorPaRange(2*n)).*22/2205;
else 
    n =1:1:(length(S1OrS2DoorPaRange)-1)/2;
    S1DoorPaRange = S1OrS2DoorPaRange(2*n-1).*22/2205;
    S2DoorPaRange = S1OrS2DoorPaRange(2*n).*22/2005;
    S1AndS2DoorRange =(S1ToS2DoorPaRange(n)+S1DoorPaRange(n)+S2DoorPaRange(n)).*22/2205;
end
try
    n =1:1:floor(length( S1ToS2DoorPaRange)./2);
    S1ToS1DoorRange = (S1DoorPaRange(n)+S2DoorPaRange(n)+S1ToS2DoorPaRange(2*n-1)+S1ToS2DoorPaRange(2*n)).*22/2205;
catch
    n =1:1:floor(length( S1ToS2DoorPaRange)./2-4);
    S1ToS1DoorRange = (S1DoorPaRange(n)+S2DoorPaRange(n)+S1ToS2DoorPaRange(2*n-1)+S1ToS2DoorPaRange(2*n)).*22/2205;
end

handles.S1ToS1DoorRange  = mean(S1ToS1DoorRange );
handles.S1AndS2DoorRange = mean(S1AndS2DoorRange);
handles.S1RangeAverage = mean(S1DoorPaRange);
handles.S2RangeAverage = mean(S2DoorPaRange);

set(handles.S1Range , 'string' ,num2str(handles.S1RangeAverage));
set(handles.S2Range , 'string' , num2str(handles.S2RangeAverage));
set(handles.S1AndS2Range , 'string' , num2str(handles.S1AndS2DoorRange));
set(handles.S1ToS1Range , 'string' , num2str(handles.S1ToS1DoorRange));

%=========================================================================%
%
%==========================求心率==========================================%
try
    if mod(length(DoorPaRangeSpot),4)==0
        HeartRate =60/((DoorPaRangeSpot(length(DoorPaRangeSpot)-3)-DoorPaRangeSpot(1)).*22/2205/((length(DoorPaRangeSpot)-4)/4));
    else
        HeartRate =60/((DoorPaRangeSpot(length(DoorPaRangeSpot)-1)-DoorPaRangeSpot(1)).*22/2205/((length(DoorPaRangeSpot)-2)/4));
    end
    
    handles.HeartRate = HeartRate;
    set(handles.HeartRateNum , 'string' , num2str(handles.HeartRate));
    if handles.HeartRate<50
        handles.NumSick = handles.NumSick+1;
        handles.SickDescribe(handles.NumSick,1:9) = '心率过慢     ';
    else if  handles.HeartRate>90
         handles.NumSick = handles.NumSick+1;
         handles.SickDescribe(handles.NumSick,1:9) = '心率过快     ';
    end
end
catch
   errordlg('There will be no heart rate!!!' , 'Analyse wrong');  
end
    


%==========================================================================%
handles.DoorHeartSoundsAfterShann = DoorPa;
handles.DoorHeartSoundsAfterShannT = (1:1:length(DoorPa)).*22/2205;

handles.NumSick = 0;

if (handles.numCanyonMax3 >2 ||handles.numCanyonMin3 >3)||((handles.numCanyonMax3 ==1) && (handles.numCanyonMax3+handles.numCanyonMin3)>4) %设置分裂基准数
    handles.NumSick = handles.NumSick+1;
    handles.SickDescribe(handles.NumSick,1:9) = '心音存在分裂   ';
end

if (handles.numCanyonMax5 >1 ||handles.numCanyonMin5 >3)||((handles.numCanyonMax5 ==1) && (numCanyonMax5+numCanyonMin5)>3) %设置分裂基准数
    handles.NumSick = handles.NumSick+1;
    handles.SickDescribe(handles.NumSick,1:9) ='心音存在严重分裂 ';
end

if handles.S1RangeAverage<0.08
    handles.NumSick = handles.NumSick+1;
    handles.SickDescribe(handles.NumSick,1:9) ='第一心音狭窄   ';
else if handles.S1RangeAverage>0.12
         handles.NumSick = handles.NumSick+1;
         handles.SickDescribe(handles.NumSick,1:9) ='第一心音肥厚   ';
    end
end

if handles.S2RangeAverage<0.08
    handles.NumSick = handles.NumSick+1;
     handles.SickDescribe(handles.NumSick,1:9) = '第二心音狭窄   ';
else if handles.S2RangeAverage>0.12
         handles.NumSick = handles.NumSick+1;
         handles.SickDescribe(handles.NumSick,1:9) ='第二心音肥厚   ';
    end
end

if (handles.S1AndS2DoorRange<0.3)||(handles.S1AndS2DoorRange>0.5)
     handles.NumSick = handles.NumSick+1;   
     handles.SickDescribe(handles.NumSick,1:9) ='第一二心音间隔异常';
end
    
if (handles.S1ToS1DoorRange<0.7)||(handles.S1AndS2DoorRange>0.9)
     handles.NumSick = handles.NumSick+1;   
     handles.SickDescribe(handles.NumSick,1:9) ='心动周期间隔异常 ';
end
      set(handles.describe, 'string' , handles.SickDescribe);

   
if handles.NumSick>2
    set(handles.result, 'string' , '心音异常--仅供参考');
    set(handles.advise, 'string' , '请根据自身情况尽早去医院检查--仅供参考');
else
    set(handles.result, 'string' , '心音正常--仅供参考');
    set(handles.advise, 'string' , '您很健康，祝您身体健康！--仅供参考');
end


guidata(hObject , handles);

%=========================================================================%


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Shannon.
function Shannon_Callback(hObject, eventdata, handles)
% hObject    handle to Shannon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(hObject,'Value')==get(hObject,'Max')) %被选中了的操作
    set(findobj('Tag','Threshold'),'enable','off');
    set(findobj('Tag','DownThreshold'),'enable','off');
    set(findobj('Tag','ChangeThreshold'),'enable','off');
    hold off;
    plot(handles.axes1,handles.HeartSoundsAfterShanT,handles.HeartSoundsAfterShan);
    title('香农能量分布');
else
    set(findobj('Tag','Threshold'),'enable','on');
    set(findobj('Tag','DownThreshold'),'enable','on');
    set(findobj('Tag','ChangeThreshold'),'enable','on');
end
    
% Hint: get(hObject,'Value') returns toggle state of Shannon


% --- Executes on button press in S1OrS2Door.
function S1OrS2Door_Callback(hObject, eventdata, handles)
% hObject    handle to S1OrS2Door (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(hObject,'Value')==get(hObject,'Max')) %被选中了的操作
    set(findobj('Tag','Threshold'),'enable','on');
    set(findobj('Tag','DownThreshold'),'enable','on');
    set(findobj('Tag','ChangeThreshold'),'enable','on');
    hold off;
    plot(handles.axes1,handles.DoorHeartSoundsAfterShannT,handles.DoorHeartSoundsAfterShann);
    axis([0 , max(handles.DoorHeartSoundsAfterShannT),-0.2 ,1.2]);title('S1，S2时间门');
else
    set(findobj('Tag','Threshold'),'enable','of');
    set(findobj('Tag','DownThreshold'),'enable','of');
    set(findobj('Tag','ChangeThreshold'),'enable','of');
end
% Hint: get(hObject,'Value') returns toggle state of S1OrS2Door


% --- Executes on button press in NoiseDown.
function NoiseDown_Callback(hObject, eventdata, handles)
% hObject    handle to NoiseDown (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(hObject,'Value')==get(hObject,'Max')) %被选中了的操作
  set(findobj('Tag','Threshold'),'enable','off');
  set(findobj('Tag','DownThreshold'),'enable','off');
  set(findobj('Tag','ChangeThreshold'),'enable','off');
  hold off;
  plot(handles.axes1,handles.HeartSoundsNoiseDownT,handles.HeartSoundsNoiseDown);title('强制降噪后');
else
     set(findobj('Tag','Threshold'),'enable','on');
     set(findobj('Tag','DownThreshold'),'enable','on');
     set(findobj('Tag','ChangeThreshold'),'enable','on');
end


% Hint: get(hObject,'Value') returns toggle state of NoiseDown



function DownThreshold_Callback(hObject, eventdata, handles)
% hObject    handle to DownThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DownThreshold as text
%        str2double(get(hObject,'String')) returns contents of DownThreshold as a double


% --- Executes during object creation, after setting all properties.
function DownThreshold_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DownThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ViewTogetherNoiseAndOriganl.
function ViewTogetherNoiseAndOriganl_Callback(hObject, eventdata, handles)
% hObject    handle to ViewTogetherNoiseAndOriganl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold off;
    plot(handles.axes1,handles.HeartSoundsOriginalCutT ,handles.HeartSoundsOriginalCut,'r--');
    axis([0,max(handles.HeartSoundsOriginalCutT) ,min(handles.HeartSoundsOriginalCut)*1.1, max(handles.HeartSoundsOriginalCut)*1.1]);
    hold on;
plot(handles.axes1,handles.HeartSoundsNoiseDownT,handles.HeartSoundsNoiseDown);

% --- Executes on button press in ViewTogetherShanAndDoor.
function ViewTogetherShanAndDoor_Callback(hObject, eventdata, handles)
% hObject    handle to ViewTogetherShanAndDoor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold off;
plot(handles.axes1,handles.HeartSoundsAfterShanT,handles.HeartSoundsAfterShan);hold on;
plot(handles.axes1,handles.DoorHeartSoundsAfterShannT,handles.DoorHeartSoundsAfterShann,'g--');
axis([0 , max(handles.DoorHeartSoundsAfterShannT),min(handles.HeartSoundsAfterShan) ,max(handles.HeartSoundsAfterShan)]);title('S1，S2时间门');


% --- Executes on button press in Db6Division.
function Db6Division_Callback(hObject, eventdata, handles)
% hObject    handle to Db6Division (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure(2),subplot(221),plot(handles.td1,handles.cd1) ,axis([0,max(handles.td1) ,-handles.cmax , handles.cmax]),...
    title('cd1:551--1102Hz'),subplot(222 ) , plot(handles.td2 ,handles.cd2), axis([0,max(handles.td1) ,-handles.cmax , handles.cmax]),...
    title('cd2:275--551Hz'),subplot(223),plot(handles.td3,handles.cd3),axis([0,max(handles.td1) ,-handles.cmax , handles.cmax]),title('cd3:138--275Hz'),...
subplot(224),plot(handles.ta3,handles.ca3),axis([0,max(handles.td1) ,-handles.cmax , handles.cmax]),title('ca3:0--138Hz');


% --- Executes during object creation, after setting all properties.
function uipanel5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Creates and returns a handle to the GUI figure. 
function h1 = xingyingzhengduan_export_LayoutFcn(policy)
% policy - create a new figure or use a singleton. 'new' or 'reuse'.

persistent hsingleton;
if strcmpi(policy, 'reuse') & ishandle(hsingleton)
    h1 = hsingleton;
    return;
end
load xingyingzhengduan_export.mat


appdata = [];
appdata.GUIDEOptions = mat{1};
appdata.lastValidTag = 'figure1';
appdata.GUIDELayoutEditor = [];
appdata.initTags = struct(...
    'handle', [], ...
    'tag', 'figure1');

h1 = figure(...
'Units','characters',...
'PaperUnits',get(0,'defaultfigurePaperUnits'),...
'Color',[0.8 1 1],...
'Colormap',[0 0 0.5625;0 0 0.625;0 0 0.6875;0 0 0.75;0 0 0.8125;0 0 0.875;0 0 0.9375;0 0 1;0 0.0625 1;0 0.125 1;0 0.1875 1;0 0.25 1;0 0.3125 1;0 0.375 1;0 0.4375 1;0 0.5 1;0 0.5625 1;0 0.625 1;0 0.6875 1;0 0.75 1;0 0.8125 1;0 0.875 1;0 0.9375 1;0 1 1;0.0625 1 1;0.125 1 0.9375;0.1875 1 0.875;0.25 1 0.8125;0.3125 1 0.75;0.375 1 0.6875;0.4375 1 0.625;0.5 1 0.5625;0.5625 1 0.5;0.625 1 0.4375;0.6875 1 0.375;0.75 1 0.3125;0.8125 1 0.25;0.875 1 0.1875;0.9375 1 0.125;1 1 0.0625;1 1 0;1 0.9375 0;1 0.875 0;1 0.8125 0;1 0.75 0;1 0.6875 0;1 0.625 0;1 0.5625 0;1 0.5 0;1 0.4375 0;1 0.375 0;1 0.3125 0;1 0.25 0;1 0.1875 0;1 0.125 0;1 0.0625 0;1 0 0;0.9375 0 0;0.875 0 0;0.8125 0 0;0.75 0 0;0.6875 0 0;0.625 0 0;0.5625 0 0],...
'IntegerHandle','off',...
'InvertHardcopy',get(0,'defaultfigureInvertHardcopy'),...
'MenuBar','none',...
'Name','xingyingzhengduan',...
'NumberTitle','off',...
'PaperPosition',get(0,'defaultfigurePaperPosition'),...
'PaperSize',get(0,'defaultfigurePaperSize'),...
'PaperType',get(0,'defaultfigurePaperType'),...
'Position',[103.8 12.6923076923077 255.6 46.6923076923077],...
'Resize','off',...
'HandleVisibility','callback',...
'UserData',[],...
'Tag','figure1',...
'Visible','on',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'axes1';

h2 = axes(...
'Parent',h1,...
'Units','characters',...
'Position',[7.8 15.7692307692308 142.2 23.1538461538462],...
'AmbientLightColor',[0 0 0],...
'CameraPosition',[0.5 0.5 9.16025403784439],...
'CameraPositionMode',get(0,'defaultaxesCameraPositionMode'),...
'Color',[0.8 1 1],...
'ColorOrder',[0 0.447 0.741;0.85 0.325 0.098;0.929 0.694 0.125;0.494 0.184 0.556;0.466 0.674 0.188;0.301 0.745 0.933;0.635 0.078 0.184],...
'LooseInset',[14.56 3.52846153846154 10.64 2.40576923076923],...
'XColor',get(0,'defaultaxesXColor'),...
'YColor',get(0,'defaultaxesYColor'),...
'ZColor',get(0,'defaultaxesZColor'),...
'Tag','axes1',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

h3 = get(h2,'title');

set(h3,...
'Parent',h2,...
'Units','data',...
'FontUnits','points',...
'BackgroundColor','none',...
'Color',[0 0 0],...
'DisplayName',blanks(0),...
'EdgeColor','none',...
'EraseMode','normal',...
'DVIMode','auto',...
'FontAngle','normal',...
'FontName','Helvetica',...
'FontSize',10,...
'FontWeight','normal',...
'HorizontalAlignment','center',...
'LineStyle','-',...
'LineWidth',0.5,...
'Margin',2,...
'Position',[0.5 1.02159468438538 1.00005459937205],...
'Rotation',0,...
'String',blanks(0),...
'Interpreter','tex',...
'VerticalAlignment','bottom',...
'ButtonDownFcn',[],...
'CreateFcn', {@local_CreateFcn, [], ''} ,...
'DeleteFcn',[],...
'BusyAction','queue',...
'HandleVisibility','off',...
'HelpTopicKey',blanks(0),...
'HitTest','on',...
'Interruptible','on',...
'SelectionHighlight','on',...
'Serializable','on',...
'Tag',blanks(0),...
'UserData',[],...
'Visible','on',...
'XLimInclude','on',...
'YLimInclude','on',...
'ZLimInclude','on',...
'CLimInclude','on',...
'ALimInclude','on',...
'IncludeRenderer','on',...
'Clipping','off');

h4 = get(h2,'xlabel');

set(h4,...
'Parent',h2,...
'Units','data',...
'FontUnits','points',...
'BackgroundColor','none',...
'Color',[0 0 0],...
'DisplayName',blanks(0),...
'EdgeColor','none',...
'EraseMode','normal',...
'DVIMode','auto',...
'FontAngle','normal',...
'FontName','Helvetica',...
'FontSize',10,...
'FontWeight','normal',...
'HorizontalAlignment','center',...
'LineStyle','-',...
'LineWidth',0.5,...
'Margin',2,...
'Position',[0.4985935302391 -0.0780730897009969 1.00005459937205],...
'Rotation',0,...
'String',blanks(0),...
'Interpreter','tex',...
'VerticalAlignment','top',...
'ButtonDownFcn',[],...
'CreateFcn', {@local_CreateFcn, [], ''} ,...
'DeleteFcn',[],...
'BusyAction','queue',...
'HandleVisibility','off',...
'HelpTopicKey',blanks(0),...
'HitTest','on',...
'Interruptible','on',...
'SelectionHighlight','on',...
'Serializable','on',...
'Tag',blanks(0),...
'UserData',[],...
'Visible','on',...
'XLimInclude','on',...
'YLimInclude','on',...
'ZLimInclude','on',...
'CLimInclude','on',...
'ALimInclude','on',...
'IncludeRenderer','on',...
'Clipping','off');

h5 = get(h2,'ylabel');

set(h5,...
'Parent',h2,...
'Units','data',...
'FontUnits','points',...
'BackgroundColor','none',...
'Color',[0 0 0],...
'DisplayName',blanks(0),...
'EdgeColor','none',...
'EraseMode','normal',...
'DVIMode','auto',...
'FontAngle','normal',...
'FontName','Helvetica',...
'FontSize',10,...
'FontWeight','normal',...
'HorizontalAlignment','center',...
'LineStyle','-',...
'LineWidth',0.5,...
'Margin',2,...
'Position',[-0.040084388185654 0.496677740863787 1.00005459937205],...
'Rotation',90,...
'String',blanks(0),...
'Interpreter','tex',...
'VerticalAlignment','bottom',...
'ButtonDownFcn',[],...
'CreateFcn', {@local_CreateFcn, [], ''} ,...
'DeleteFcn',[],...
'BusyAction','queue',...
'HandleVisibility','off',...
'HelpTopicKey',blanks(0),...
'HitTest','on',...
'Interruptible','on',...
'SelectionHighlight','on',...
'Serializable','on',...
'Tag',blanks(0),...
'UserData',[],...
'Visible','on',...
'XLimInclude','on',...
'YLimInclude','on',...
'ZLimInclude','on',...
'CLimInclude','on',...
'ALimInclude','on',...
'IncludeRenderer','on',...
'Clipping','off');

h6 = get(h2,'zlabel');

set(h6,...
'Parent',h2,...
'Units','data',...
'FontUnits','points',...
'BackgroundColor','none',...
'Color',[0 0 0],...
'DisplayName',blanks(0),...
'EdgeColor','none',...
'EraseMode','normal',...
'DVIMode','auto',...
'FontAngle','normal',...
'FontName','Helvetica',...
'FontSize',10,...
'FontWeight','normal',...
'HorizontalAlignment','right',...
'LineStyle','-',...
'LineWidth',0.5,...
'Margin',2,...
'Position',[-0.0555555555555556 1.33056478405316 1.00005459937205],...
'Rotation',0,...
'String',blanks(0),...
'Interpreter','tex',...
'VerticalAlignment','middle',...
'ButtonDownFcn',[],...
'CreateFcn', {@local_CreateFcn, [], ''} ,...
'DeleteFcn',[],...
'BusyAction','queue',...
'HandleVisibility','off',...
'HelpTopicKey',blanks(0),...
'HitTest','on',...
'Interruptible','on',...
'SelectionHighlight','on',...
'Serializable','on',...
'Tag',blanks(0),...
'UserData',[],...
'Visible','off',...
'XLimInclude','on',...
'YLimInclude','on',...
'ZLimInclude','on',...
'CLimInclude','on',...
'ALimInclude','on',...
'IncludeRenderer','on',...
'Clipping','off');

appdata = [];
appdata.lastValidTag = 'File';

h7 = uimenu(...
'Parent',h1,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('File_Callback',hObject,eventdata,guidata(hObject)),...
'Label','文件',...
'Tag','File',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'New';

h8 = uimenu(...
'Parent',h7,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('New_Callback',hObject,eventdata,guidata(hObject)),...
'Label','新建',...
'Tag','New',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Open';

h9 = uimenu(...
'Parent',h7,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('Open_Callback',hObject,eventdata,guidata(hObject)),...
'Label','打开',...
'Tag','Open',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Save';

h10 = uimenu(...
'Parent',h7,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('Save_Callback',hObject,eventdata,guidata(hObject)),...
'Label','保存',...
'Tag','Save',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'SaveAs';

h11 = uimenu(...
'Parent',h7,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('SaveAs_Callback',hObject,eventdata,guidata(hObject)),...
'Label','另存为',...
'Tag','SaveAs',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Exit';

h12 = uimenu(...
'Parent',h7,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('Exit_Callback',hObject,eventdata,guidata(hObject)),...
'Label','退出',...
'Tag','Exit',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Help';

h13 = uimenu(...
'Parent',h1,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('Help_Callback',hObject,eventdata,guidata(hObject)),...
'Label','帮助',...
'Tag','Help',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Guide';

h14 = uimenu(...
'Parent',h13,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('Guide_Callback',hObject,eventdata,guidata(hObject)),...
'Label','操作指导',...
'Tag','Guide',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'About';

h15 = uimenu(...
'Parent',h13,...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('About_Callback',hObject,eventdata,guidata(hObject)),...
'Label','关于我们',...
'Tag','About',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'uitoolbar2';

h16 = uitoolbar(...
'Parent',h1,...
'Tag','uitoolbar2',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.toolid = 'Standard.NewFigure';
appdata.CallbackInUse = struct(...
    'ClickedCallback', 'xingyingzhengduan(''uipushtool5_ClickedCallback'',gcbo,[],guidata(gcbo))');
appdata.lastValidTag = 'uipushtool5';

h17 = uipushtool(...
'Parent',h16,...
'ClickedCallback',@(hObject,eventdata)xingyingzhengduan_export('uipushtool5_ClickedCallback',hObject,eventdata,guidata(hObject)),...
'CData',mat{2},...
'TooltipString','New Figure',...
'Tag','uipushtool5',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.toolid = 'Standard.FileOpen';
appdata.CallbackInUse = struct(...
    'ClickedCallback', 'xingyingzhengduan(''uipushtool6_ClickedCallback'',gcbo,[],guidata(gcbo))');
appdata.lastValidTag = 'uipushtool6';

h18 = uipushtool(...
'Parent',h16,...
'ClickedCallback',@(hObject,eventdata)xingyingzhengduan_export('uipushtool6_ClickedCallback',hObject,eventdata,guidata(hObject)),...
'CData',mat{3},...
'TooltipString','Open File',...
'BusyAction','cancel',...
'Interruptible','off',...
'Tag','uipushtool6',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.toolid = 'Standard.SaveFigure';
appdata.CallbackInUse = struct(...
    'ClickedCallback', '%default');
appdata.lastValidTag = 'uipushtool7';

h19 = uipushtool(...
'Parent',h16,...
'ClickedCallback','%default',...
'CData',mat{4},...
'TooltipString','Save Figure',...
'BusyAction','cancel',...
'Interruptible','off',...
'Tag','uipushtool7',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'uipanel3';

h20 = uipanel(...
'Parent',h1,...
'Units','characters',...
'FontSize',10,...
'Title','输入操作区',...
'Tag','uipanel3',...
'Clipping','on',...
'BackgroundColor',[0.8 0.8 0.8],...
'Position',[2.2 0.461538461538462 85.6 13.6923076923077],...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Luyingshijian';

h21 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',11,...
'Position',[19 9.61538461538462 16.2 1.69230769230769],...
'String','录音时间',...
'Style','text',...
'Tag','Luyingshijian',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'recordtime';

h22 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('recordtime_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',10,...
'Position',[37.4 9.69230769230769 23.4 1.76923076923077],...
'String','30',...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('recordtime_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','recordtime');

appdata = [];
appdata.lastValidTag = 'startrecord';

h23 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('startrecord_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',11,...
'Position',[68.6 9.69230769230769 13.8 1.76923076923077],...
'String','开始录音',...
'Tag','startrecord',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'filename';

h24 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('filename_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',10,...
'Position',[29.4 6.84615384615385 31.6 1.84615384615385],...
'String','*.wav',...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('filename_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'DeleteFcn',@(hObject,eventdata)xingyingzhengduan_export('filename_DeleteFcn',hObject,eventdata,guidata(hObject)),...
'Tag','filename');

appdata = [];
appdata.lastValidTag = 'fileopen';

h25 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('fileopen_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',11,...
'Position',[68.6 6.84615384615385 13.8 1.76923076923077],...
'String','读入文件',...
'ButtonDownFcn',@(hObject,eventdata)xingyingzhengduan_export('fileopen_ButtonDownFcn',hObject,eventdata,guidata(hObject)),...
'Tag','fileopen',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Wenjian';

h26 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',11,...
'Position',[18.6 7.46153846153846 10.4 1.15384615384615],...
'String','文件',...
'Style','text',...
'Tag','Wenjian',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'caiyangpinlv';

h27 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',11,...
'Position',[0.800000000000001 3.61538461538462 14.4 1.15384615384615],...
'String','采样频率',...
'Style','text',...
'Tag','caiyangpinlv',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'samplerate';

h28 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('samplerate_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[17.4 3 28 1.76923076923077],...
'String','11025',...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('samplerate_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','samplerate');

appdata = [];
appdata.lastValidTag = 'caiyangdianshu';

h29 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',11,...
'Position',[0.400000000000003 1.61538461538462 14.4 1.15384615384615],...
'String','采样点数',...
'Style','text',...
'UserData',[],...
'Tag','caiyangdianshu',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'samplenum';

h30 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('samplenum_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[17.6 0.923076923076923 27.8 1.76923076923077],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('samplenum_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','samplenum');

appdata = [];
appdata.lastValidTag = 'replaybefore';

h31 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('replaybefore_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[48.0000000000001 0.76923076923077 15.8 2.38461538461538],...
'String','回放音频',...
'Tag','replaybefore',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'soundcard';

h32 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('soundcard_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',11,...
'Position',[1.2 9.76923076923077 17.4 1.76923076923077],...
'String','声卡录音',...
'Style','radiobutton',...
'Tag','soundcard',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'WAVfile';

h33 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('WAVfile_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',11,...
'Position',[1.2 6.84615384615385 17.4 1.76923076923077],...
'String','WAV文件',...
'Style','radiobutton',...
'Tag','WAVfile',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'START';

h34 = uicontrol(...
'Parent',h20,...
'Units','characters',...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('START_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Max',8,...
'Position',[67.4 0.615384615384615 16.6 3.92307692307692],...
'String','开始分析',...
'Tag','START',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'uipanel5';

h35 = uipanel(...
'Parent',h1,...
'Units','characters',...
'FontSize',10,...
'Title','诊断操作区',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('uipanel5_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','uipanel5',...
'Clipping','on',...
'BackgroundColor',[0.8 0.8 0.8],...
'Position',[89.8 0.461538461538462 65.6 13.6923076923077]);

appdata = [];
appdata.lastValidTag = 'uipanel7';

h36 = uipanel(...
'Parent',h35,...
'Units','characters',...
'FontSize',10,...
'Title','按钮区',...
'Tag','uipanel7',...
'Clipping','on',...
'BackgroundColor',[0.8 0.8 0.8],...
'Position',[1.2 0.692307692307692 26.8 10.7692307692308],...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'OriginalWave';

h37 = uicontrol(...
'Parent',h36,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('OriginalWave_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[1 6.84615384615385 17.4 1.76923076923077],...
'String','原始波形',...
'Style','radiobutton',...
'Tag','OriginalWave',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Shannon';

h38 = uicontrol(...
'Parent',h36,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('Shannon_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[1 3.15384615384615 17.4 1.76923076923077],...
'String','香农能量',...
'Style','radiobutton',...
'Tag','Shannon',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'S1OrS2Door';

h39 = uicontrol(...
'Parent',h36,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('S1OrS2Door_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[1 1.23076923076923 17.4 1.76923076923077],...
'String','时间门图',...
'Style','radiobutton',...
'Tag','S1OrS2Door',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'NoiseDown';

h40 = uicontrol(...
'Parent',h36,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('NoiseDown_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[1 5.07692307692308 17.4 1.76923076923077],...
'String','小波降噪',...
'Style','radiobutton',...
'Tag','NoiseDown',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'ViewTogetherNoiseAndOriganl';

h41 = uicontrol(...
'Parent',h35,...
'Units','characters',...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('ViewTogetherNoiseAndOriganl_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',10,...
'Position',[29.8 7.61538461538462 34.6 2.61538461538462],...
'String','同时显示原波形与降噪后波形',...
'Tag','ViewTogetherNoiseAndOriganl',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'ViewTogetherShanAndDoor';

h42 = uicontrol(...
'Parent',h35,...
'Units','characters',...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('ViewTogetherShanAndDoor_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',10,...
'Position',[29.8 4.61538461538462 35 2.46153846153846],...
'String','同时显示香农能量与门分段',...
'Tag','ViewTogetherShanAndDoor',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'Db6Division';

h43 = uicontrol(...
'Parent',h35,...
'Units','characters',...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('Db6Division_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',10,...
'Position',[29.8 1.69230769230769 34.6 2.30769230769231],...
'String','四层db6小波分解图',...
'Tag','Db6Division',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text6';

h44 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[0.8 1 1],...
'FontSize',30,...
'ForegroundColor',[0.0392156862745098 0.141176470588235 0.415686274509804],...
'Position',[72.4 42.3076923076923 85.6 4.30769230769231],...
'String','心音诊断系统',...
'Style','text',...
'Tag','text6',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'uipanel10';

h45 = uipanel(...
'Parent',h1,...
'Units','characters',...
'FontSize',12,...
'Title','诊断结果',...
'Tag','uipanel10',...
'Clipping','on',...
'BackgroundColor',[0.8 0.8 0.8],...
'Position',[155.8 0.461538461538462 94.2 38.4615384615385],...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'uipanel11';

h46 = uipanel(...
'Parent',h45,...
'Units','characters',...
'FontSize',11,...
'Title','结果数据',...
'Tag','uipanel11',...
'Clipping','on',...
'BackgroundColor',[0.8 0.8 0.8],...
'Position',[3.8 20.6923076923077 34.8 15.3076923076923],...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text13';

h47 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 11.3076923076923 10.4 1.76923076923077],...
'String','心率',...
'Style','text',...
'Tag','text13',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text12';

h48 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 1.23076923076923 11 1.69230769230769],...
'String','T12',...
'Style','text',...
'Tag','text12',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text11';

h49 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 4 11 1.69230769230769],...
'String','T11',...
'Style','text',...
'Tag','text11',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text10';

h50 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 6.46153846153846 11 1.69230769230769],...
'String','T2',...
'Style','text',...
'Tag','text10',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text9';

h51 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 8.92307692307692 11 1.69230769230769],...
'String','T1',...
'Style','text',...
'Tag','text9',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'HeartRateNum';

h52 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('HeartRateNum_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[11.8 11.3076923076923 20.2 2.07692307692308],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('HeartRateNum_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','HeartRateNum');

appdata = [];
appdata.lastValidTag = 'S1Range';

h53 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('S1Range_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[11.8 8.69230769230769 20.2 2.07692307692308],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('S1Range_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','S1Range');

appdata = [];
appdata.lastValidTag = 'S2Range';

h54 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('S2Range_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[11.8 6.07692307692308 20.2 2.07692307692308],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('S2Range_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','S2Range');

appdata = [];
appdata.lastValidTag = 'S1AndS2Range';

h55 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('S1AndS2Range_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[11.8 3.46153846153846 20.2 2.07692307692308],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('S1AndS2Range_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','S1AndS2Range');

appdata = [];
appdata.lastValidTag = 'S1ToS1Range';

h56 = uicontrol(...
'Parent',h46,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('S1ToS1Range_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[11.8 0.846153846153846 20.2 2.07692307692308],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('S1ToS1Range_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','S1ToS1Range');

appdata = [];
appdata.lastValidTag = 'uipanel13';

h57 = uipanel(...
'Parent',h45,...
'Units','characters',...
'FontSize',11,...
'Title','参考值',...
'Tag','uipanel13',...
'Clipping','on',...
'BackgroundColor',[0.8 0.8 0.8],...
'Position',[43.8 21 38.8 15.1538461538462],...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text14';

h58 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 11.1538461538461 10.4 1.76923076923077],...
'String','心率',...
'Style','text',...
'Tag','text14',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text15';

h59 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 1.07692307692304 11 1.69230769230769],...
'String','T12',...
'Style','text',...
'Tag','text15',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text16';

h60 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 3.84615384615381 11 1.69230769230769],...
'String','T11',...
'Style','text',...
'Tag','text16',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text17';

h61 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 6.30769230769227 11 1.69230769230769],...
'String','T2',...
'Style','text',...
'Tag','text17',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text18';

h62 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[0.8 8.76923076923074 11 1.69230769230769],...
'String','T1',...
'Style','text',...
'Tag','text18',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text26';

h63 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'FontSize',11,...
'Position',[13.8 11 18.4 1.76923076923077],...
'String','50~~90',...
'Style','text',...
'Tag','text26',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text27';

h64 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'FontSize',11,...
'Position',[13.8 8.53846153846154 18.4 1.76923076923077],...
'String','0.08~~0.12',...
'Style','text',...
'Tag','text27',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text28';

h65 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'FontSize',11,...
'Position',[13.8 6.07692307692308 18.4 1.76923076923077],...
'String','0.08~~0.12',...
'Style','text',...
'Tag','text28',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text29';

h66 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'FontSize',11,...
'Position',[13.8 3.69230769230769 18.4 1.76923076923077],...
'String','0.3~~0.5',...
'Style','text',...
'Tag','text29',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text30';

h67 = uicontrol(...
'Parent',h57,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'FontSize',11,...
'Position',[13.8 1.15384615384615 18.4 1.76923076923077],...
'String','0.7~~0.9',...
'Style','text',...
'Tag','text30',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'uipanel14';

h68 = uipanel(...
'Parent',h45,...
'Units','characters',...
'FontSize',12,...
'Title','结论',...
'Tag','uipanel14',...
'Clipping','on',...
'BackgroundColor',[0.8 0.8 0.8],...
'Position',[5.4 2.61538461538462 76.4 17.3076923076923],...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'describe';

h69 = uicontrol(...
'Parent',h68,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('describe_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',10,...
'Max',16,...
'Position',[20.6 7.23076923076923 50.2 8.61538461538462],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('describe_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','describe');

appdata = [];
appdata.lastValidTag = 'result';

h70 = uicontrol(...
'Parent',h68,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('result_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',12,...
'Position',[20.4 4.38461538461538 50.2 2.23076923076923],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('result_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','result');

appdata = [];
appdata.lastValidTag = 'text19';

h71 = uicontrol(...
'Parent',h68,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[2.6 10.6923076923077 16 1.92307692307692],...
'String','诊断描述',...
'Style','text',...
'Tag','text19',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text20';

h72 = uicontrol(...
'Parent',h68,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[2.4 4.46153846153846 16 1.92307692307692],...
'String','诊断结论',...
'Style','text',...
'Tag','text20',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'text21';

h73 = uicontrol(...
'Parent',h68,...
'Units','characters',...
'BackgroundColor',[0.8 0.8 0.8],...
'FontSize',12,...
'Position',[2.4 1.15384615384615 16 1.92307692307692],...
'String','诊断意见',...
'Style','text',...
'Tag','text21',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );

appdata = [];
appdata.lastValidTag = 'advise';

h74 = uicontrol(...
'Parent',h68,...
'Units','characters',...
'BackgroundColor',[1 1 1],...
'Callback',@(hObject,eventdata)xingyingzhengduan_export('advise_Callback',hObject,eventdata,guidata(hObject)),...
'FontSize',10,...
'Position',[20.6 0.461538461538455 50.2 3.38461538461539],...
'String',blanks(0),...
'Style','edit',...
'CreateFcn', {@local_CreateFcn, @(hObject,eventdata)xingyingzhengduan_export('advise_CreateFcn',hObject,eventdata,guidata(hObject)), appdata} ,...
'Tag','advise');

appdata = [];
appdata.lastValidTag = 'text23';

h75 = uicontrol(...
'Parent',h1,...
'Units','characters',...
'BackgroundColor',[0.8 1 1],...
'FontSize',11,...
'Position',[217.8 41.6153846153846 17.4 1.15384615384615],...
'String','2020年2月',...
'Style','text',...
'Tag','text23',...
'CreateFcn', {@local_CreateFcn, blanks(0), appdata} );


hsingleton = h1;


% --- Set application data first then calling the CreateFcn. 
function local_CreateFcn(hObject, eventdata, createfcn, appdata)

if ~isempty(appdata)
   names = fieldnames(appdata);
   for i=1:length(names)
       name = char(names(i));
       setappdata(hObject, name, getfield(appdata,name));
   end
end

if ~isempty(createfcn)
   if isa(createfcn,'function_handle')
       createfcn(hObject, eventdata);
   else
       eval(createfcn);
   end
end


% --- Handles default GUIDE GUI creation and callback dispatch
function varargout = gui_mainfcn(gui_State, varargin)

gui_StateFields =  {'gui_Name'
    'gui_Singleton'
    'gui_OpeningFcn'
    'gui_OutputFcn'
    'gui_LayoutFcn'
    'gui_Callback'};
gui_Mfile = '';
for i=1:length(gui_StateFields)
    if ~isfield(gui_State, gui_StateFields{i})
        error('MATLAB:gui_mainfcn:FieldNotFound', 'Could not find field %s in the gui_State struct in GUI M-file %s', gui_StateFields{i}, gui_Mfile);
    elseif isequal(gui_StateFields{i}, 'gui_Name')
        gui_Mfile = [gui_State.(gui_StateFields{i}), '.m'];
    end
end

numargin = length(varargin);

if numargin == 0
    % XINGYINGZHENGDUAN_EXPORT
    % create the GUI only if we are not in the process of loading it
    % already
    gui_Create = true;
elseif local_isInvokeActiveXCallback(gui_State, varargin{:})
    % XINGYINGZHENGDUAN_EXPORT(ACTIVEX,...)
    vin{1} = gui_State.gui_Name;
    vin{2} = [get(varargin{1}.Peer, 'Tag'), '_', varargin{end}];
    vin{3} = varargin{1};
    vin{4} = varargin{end-1};
    vin{5} = guidata(varargin{1}.Peer);
    feval(vin{:});
    return;
elseif local_isInvokeHGCallback(gui_State, varargin{:})
    % XINGYINGZHENGDUAN_EXPORT('CALLBACK',hObject,eventData,handles,...)
    gui_Create = false;
else
    % XINGYINGZHENGDUAN_EXPORT(...)
    % create the GUI and hand varargin to the openingfcn
    gui_Create = true;
end

if ~gui_Create
    % In design time, we need to mark all components possibly created in
    % the coming callback evaluation as non-serializable. This way, they
    % will not be brought into GUIDE and not be saved in the figure file
    % when running/saving the GUI from GUIDE.
    designEval = false;
    if (numargin>1 && ishghandle(varargin{2}))
        fig = varargin{2};
        while ~isempty(fig) && ~isa(handle(fig),'figure')
            fig = get(fig,'parent');
        end
        
        designEval = isappdata(0,'CreatingGUIDEFigure') || isprop(fig,'__GUIDEFigure');
    end
        
    if designEval
        beforeChildren = findall(fig);
    end
    
    % evaluate the callback now
    varargin{1} = gui_State.gui_Callback;
    if nargout
        [varargout{1:nargout}] = feval(varargin{:});
    else       
        feval(varargin{:});
    end
    
    % Set serializable of objects created in the above callback to off in
    % design time. Need to check whether figure handle is still valid in
    % case the figure is deleted during the callback dispatching.
    if designEval && ishandle(fig)
        set(setdiff(findall(fig),beforeChildren), 'Serializable','off');
    end
else
    if gui_State.gui_Singleton
        gui_SingletonOpt = 'reuse';
    else
        gui_SingletonOpt = 'new';
    end

    % Check user passing 'visible' P/V pair first so that its value can be
    % used by oepnfig to prevent flickering
    gui_Visible = 'auto';
    gui_VisibleInput = '';
    for index=1:2:length(varargin)
        if length(varargin) == index || ~ischar(varargin{index})
            break;
        end

        % Recognize 'visible' P/V pair
        len1 = min(length('visible'),length(varargin{index}));
        len2 = min(length('off'),length(varargin{index+1}));
        if ischar(varargin{index+1}) && strncmpi(varargin{index},'visible',len1) && len2 > 1
            if strncmpi(varargin{index+1},'off',len2)
                gui_Visible = 'invisible';
                gui_VisibleInput = 'off';
            elseif strncmpi(varargin{index+1},'on',len2)
                gui_Visible = 'visible';
                gui_VisibleInput = 'on';
            end
        end
    end
    
    % Open fig file with stored settings.  Note: This executes all component
    % specific CreateFunctions with an empty HANDLES structure.

    
    % Do feval on layout code in m-file if it exists
    gui_Exported = ~isempty(gui_State.gui_LayoutFcn);
    % this application data is used to indicate the running mode of a GUIDE
    % GUI to distinguish it from the design mode of the GUI in GUIDE. it is
    % only used by actxproxy at this time.   
    setappdata(0,genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]),1);
    if gui_Exported
        gui_hFigure = feval(gui_State.gui_LayoutFcn, gui_SingletonOpt);

        % make figure invisible here so that the visibility of figure is
        % consistent in OpeningFcn in the exported GUI case
        if isempty(gui_VisibleInput)
            gui_VisibleInput = get(gui_hFigure,'Visible');
        end
        set(gui_hFigure,'Visible','off')

        % openfig (called by local_openfig below) does this for guis without
        % the LayoutFcn. Be sure to do it here so guis show up on screen.
        movegui(gui_hFigure,'onscreen');
    else
        gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt, gui_Visible);
        % If the figure has InGUIInitialization it was not completely created
        % on the last pass.  Delete this handle and try again.
        if isappdata(gui_hFigure, 'InGUIInitialization')
            delete(gui_hFigure);
            gui_hFigure = local_openfig(gui_State.gui_Name, gui_SingletonOpt, gui_Visible);
        end
    end
    if isappdata(0, genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]))
        rmappdata(0,genvarname(['OpenGuiWhenRunning_', gui_State.gui_Name]));
    end

    % Set flag to indicate starting GUI initialization
    setappdata(gui_hFigure,'InGUIInitialization',1);

    % Fetch GUIDE Application options
    gui_Options = getappdata(gui_hFigure,'GUIDEOptions');
    % Singleton setting in the GUI M-file takes priority if different
    gui_Options.singleton = gui_State.gui_Singleton;

    if ~isappdata(gui_hFigure,'GUIOnScreen')
        % Adjust background color
        if gui_Options.syscolorfig
            set(gui_hFigure,'Color', get(0,'DefaultUicontrolBackgroundColor'));
        end

        % Generate HANDLES structure and store with GUIDATA. If there is
        % user set GUI data already, keep that also.
        data = guidata(gui_hFigure);
        handles = guihandles(gui_hFigure);
        if ~isempty(handles)
            if isempty(data)
                data = handles;
            else
                names = fieldnames(handles);
                for k=1:length(names)
                    data.(char(names(k)))=handles.(char(names(k)));
                end
            end
        end
        guidata(gui_hFigure, data);
    end

    % Apply input P/V pairs other than 'visible'
    for index=1:2:length(varargin)
        if length(varargin) == index || ~ischar(varargin{index})
            break;
        end

        len1 = min(length('visible'),length(varargin{index}));
        if ~strncmpi(varargin{index},'visible',len1)
            try set(gui_hFigure, varargin{index}, varargin{index+1}), catch break, end
        end
    end

    % If handle visibility is set to 'callback', turn it on until finished
    % with OpeningFcn
    gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
    if strcmp(gui_HandleVisibility, 'callback')
        set(gui_hFigure,'HandleVisibility', 'on');
    end

    feval(gui_State.gui_OpeningFcn, gui_hFigure, [], guidata(gui_hFigure), varargin{:});

    if isscalar(gui_hFigure) && ishandle(gui_hFigure)
        % Handle the default callbacks of predefined toolbar tools in this
        % GUI, if any
        guidemfile('restoreToolbarToolPredefinedCallback',gui_hFigure); 
        
        % Update handle visibility
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);

        % Call openfig again to pick up the saved visibility or apply the
        % one passed in from the P/V pairs
        if ~gui_Exported
            gui_hFigure = local_openfig(gui_State.gui_Name, 'reuse',gui_Visible);
        elseif ~isempty(gui_VisibleInput)
            set(gui_hFigure,'Visible',gui_VisibleInput);
        end
        if strcmpi(get(gui_hFigure, 'Visible'), 'on')
            figure(gui_hFigure);
            
            if gui_Options.singleton
                setappdata(gui_hFigure,'GUIOnScreen', 1);
            end
        end

        % Done with GUI initialization
        if isappdata(gui_hFigure,'InGUIInitialization')
            rmappdata(gui_hFigure,'InGUIInitialization');
        end

        % If handle visibility is set to 'callback', turn it on until
        % finished with OutputFcn
        gui_HandleVisibility = get(gui_hFigure,'HandleVisibility');
        if strcmp(gui_HandleVisibility, 'callback')
            set(gui_hFigure,'HandleVisibility', 'on');
        end
        gui_Handles = guidata(gui_hFigure);
    else
        gui_Handles = [];
    end

    if nargout
        [varargout{1:nargout}] = feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    else
        feval(gui_State.gui_OutputFcn, gui_hFigure, [], gui_Handles);
    end

    if isscalar(gui_hFigure) && ishandle(gui_hFigure)
        set(gui_hFigure,'HandleVisibility', gui_HandleVisibility);
    end
end

function gui_hFigure = local_openfig(name, singleton, visible)

% openfig with three arguments was new from R13. Try to call that first, if
% failed, try the old openfig.
if nargin('openfig') == 2
    % OPENFIG did not accept 3rd input argument until R13,
    % toggle default figure visible to prevent the figure
    % from showing up too soon.
    gui_OldDefaultVisible = get(0,'defaultFigureVisible');
    set(0,'defaultFigureVisible','off');
    gui_hFigure = openfig(name, singleton);
    set(0,'defaultFigureVisible',gui_OldDefaultVisible);
else
    gui_hFigure = openfig(name, singleton, visible);
end

function result = local_isInvokeActiveXCallback(gui_State, varargin)

try
    result = ispc && iscom(varargin{1}) ...
             && isequal(varargin{1},gcbo);
catch
    result = false;
end

function result = local_isInvokeHGCallback(gui_State, varargin)

try
    fhandle = functions(gui_State.gui_Callback);
    result = ~isempty(findstr(gui_State.gui_Name,fhandle.file)) || ...
             (ischar(varargin{1}) ...
             && isequal(ishandle(varargin{2}), 1) ...
             && (~isempty(strfind(varargin{1},[get(varargin{2}, 'Tag'), '_'])) || ...
                ~isempty(strfind(varargin{1}, '_CreateFcn'))) );
catch
    result = false;
end


