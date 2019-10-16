function varargout = finalGUI(varargin)
% FINALGUI MATLAB code for finalGUI.fig
%      FINALGUI, by itself, creates a new FINALGUI or raises the existing
%      singleton*.
%
%      H = FINALGUI returns the handle to a new FINALGUI or the handle to
%      the existing singleton*.
%
%      FINALGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALGUI.M with the given input arguments.
%
%      FINALGUI('Property','Value',...) creates a new FINALGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalGUI

% Last Modified by GUIDE v2.5 15-Mar-2018 15:46:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @finalGUI_OutputFcn, ...
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


% --- Executes just before finalGUI is made visible.
function finalGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalGUI (see VARARGIN)

% Choose default command line output for finalGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finalGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function text18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player1
global player2
global player1Round
global player2Round
global num
sum1Player1 = player1(1) ;
set(handles.text14, 'String',sum1Player1);
sum2Player1 = player1(2) ;
set(handles.text18, 'String',sum2Player1);
sum3Player1 = player1(3) ;
set(handles.text22, 'String',sum3Player1);

sum1Player1 = player2(1) ;
set(handles.text16, 'String',sum1Player1);
sum2Player1 = player2(2) ;
set(handles.text20, 'String',sum2Player1);
sum3Player1 = player2(3) ;
set(handles.text24, 'String',sum3Player1);

round1Player1 = player1Round(1) ;
set(handles.text15, 'String',round1Player1);
round2Player1 = player1Round(2) ;
set(handles.text19, 'String',round2Player1);
round3Player1 = player1Round(3) ;
set(handles.text23, 'String',round3Player1);

round1Player2 = player2Round(1) ;
set(handles.text17, 'String',round1Player2);
round2Player2 = player2Round(2) ;
set(handles.text21, 'String',round2Player2);
round3Player2 = player2Round(3) ;
set(handles.text25, 'String',round3Player2);

Roboto = imread('Mr. Roboto.jpg');
Winner = imread('winner2.jpg');
playerOneFinalScore = sum(player1Round);
playerTwoFinalScore = sum(player2Round);

% victory = imread('Victory_Sound_Effect.wav');
if num == 1
    if playerOneFinalScore > playerTwoFinalScore
        %{
        audioread(victory);
        [ySound, sampleFreq] = audioread(victory);
        sound(ySound(1:400000),sampleFreq);
        %}
        imshow(Winner);
    else
        imshow(Roboto);
    end
else
    %{
        audioread(victory);
        [ySound, sampleFreq] = audioread(victory);
        sound(ySound(1:400000),sampleFreq);
        %}
    imshow(Winner);
end





% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
