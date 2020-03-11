function varargout = xingyingzhengduan(varargin)
% XINGYINGZHENGDUAN M-file for xingyingzhengduan.fig
%      XINGYINGZHENGDUAN, by itself, creates a new XINGYINGZHENGDUAN or raises the existing
%      singleton*.
%
%      H = XINGYINGZHENGDUAN returns the handle to a new XINGYINGZHENGDUAN or the handle to
%      the existing singleton*.
%
%      XINGYINGZHENGDUAN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in XINGYINGZHENGDUAN.M with the given input arguments.
%
%      XINGYINGZHENGDUAN('Property','Value',...) creates a new XINGYINGZHENGDUAN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before xingyingzhengduan_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to xingyingzhengduan_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help xingyingzhengduan

% Last Modified by GUIDE v2.5 03-May-2011 02:33:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @xingyingzhengduan_OpeningFcn, ...
                   'gui_OutputFcn',  @xingyingzhengduan_OutputFcn, ...
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


% --- Executes just before xingyingzhengduan is made visible.
function xingyingzhengduan_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to xingyingzhengduan (see VARARGIN)

% Choose default command line output for xingyingzhengduan
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes xingyingzhengduan wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = xingyingzhengduan_OutputFcn(hObject, eventdata, handles) 
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
