function varargout = game(varargin)
% GAME MATLAB code for game.fig
%      GAME, by itself, creates a new GAME or raises the existing
%      singleton*.
%
%      H = GAME returns the handle to a new GAME or the handle to
%      the existing singleton*.
%
%      GAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAME.M with the given input arguments.
%
%      GAME('Property','Value',...) creates a new GAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before game_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to game_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help game

% Last Modified by GUIDE v2.5 11-Jan-2019 15:15:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @game_OpeningFcn, ...
                   'gui_OutputFcn',  @game_OutputFcn, ...
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


% --- Executes just before game is made visible.
function game_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to game (see VARARGIN)

% Choose default command line output for game
handles.output = hObject;


% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = game_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

ListofquestionsMatlab1

Round1questions = {Q1R1,Q2R1,Q3R1,Q4R1,Q5R1,Q6R1,Q7R1,Q8R1,Q9R1,Q10R1,Q11R1,Q12R1,Q13R1,Q14R1,Q15R1,Q16R1,Q17R1,Q18R1,Q19R1,Q20R1,Q21R1,Q22R1,Q23R1,Q24R1,Q25R1};
chosenquestionR1 = Round1questions{randi(length(Round1questions))};

Q1=chosenquestionR1(1,1);
A1=chosenquestionR1(1,2);
B1=chosenquestionR1(1,3);
C1=chosenquestionR1(1,4);
D1=chosenquestionR1(1,5);
Ans1=chosenquestionR1(1,6);

global winnings;
winnings = 1000000;
global answer
global round

guidata(hObject, handles);

answer = Ans1;
set(handles.Q_bar,'String',Q1);%displays Q in Q_bar
set(handles.OptionA,'String',A1);
set(handles.OptionB,'String',B1);
set(handles.OptionC,'String',C1);
set(handles.OptionD,'String',D1);
set(handles.Winnings,'String',num2str(winnings));
round = 1
set(handles.round,'String',num2str(round));


% Store bids

B1 = str2num(char(get(handles.bidA,'String')));
B2 = str2num(char(get(handles.bidB,'String')));
B3 = str2num(char(get(handles.bidC,'String')));
B4 = str2num(char(get(handles.bidD,'String')));

guidata(hObject,handles);
if isempty(B1)
    B1 = 0;
end
if isempty(B2)
    B2 = 0;
end
if isempty(B3)
    B3 = 0;
end
if isempty(B4)
    B4 = 0;
end
guidata(hObject,handles);
% UIWAIT makes game wait for user response (see UIRESUME)
% uiwait(handles.figure1);




% --- Executes during object creation, after setting all properties.
function background_CreateFcn(hObject, eventdata, handles)
% hObject    handle to background (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate background
axes(hObject)
imshow('QuestionScreen.png')


% --- Executes during object creation, after setting all properties.
function Q_bar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Q_bar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function OptionA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OptionA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes during object creation, after setting all properties.
function OptionB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OptionB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function OptionC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OptionC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function OptionD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OptionD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes on button press in on.
function on_Callback(hObject, eventdata, handles)
% hObject    handle to on (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[y,Fs]=audioread('Countdown.mp3');
sound(y,Fs,16);

% --- Executes on button press in off.
function off_Callback(hObject, eventdata, handles)
% hObject    handle to off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear sound

% --- Executes during object creation, after setting all properties.
function on_CreateFcn(hObject, eventdata, handles)
% hObject    handle to on (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% --- Plays music
[y,Fs]=audioread('Countdown.mp3');
sound(y,Fs,16);


% --- Executes during object creation, after setting all properties.
function round_CreateFcn(hObject, eventdata, handles)
% hObject    handle to round (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes on button press in dropbutton.
function dropbutton_Callback(hObject, eventdata, handles)
% hObject    handle to dropbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;
global winnings;
% Store bids

B1 = str2num(char(get(handles.bidA,'String')));
B2 = str2num(char(get(handles.bidB,'String')));
B3 = str2num(char(get(handles.bidC,'String')));
B4 = str2num(char(get(handles.bidD,'String')));

if isempty(B1)
    B1 = 0;
end
if isempty(B2)
    B2 = 0;
end
if isempty(B3)
    B3 = 0;
end
if isempty(B4)
    B4 = 0;
end
guidata(hObject,handles);
global answer;
if strcmp(answer, 'A')    
    winnings=B1;

elseif strcmp(answer, 'B')
    winnings=B2
   
elseif strcmp(answer, 'C')
    winnings=B3
   
elseif strcmp(answer, 'D')
    winnings=B4
   
end
set(handles.Winnings,'String',num2str(winnings));
set(handles.bidA,'String',B1);
set(handles.bidB,'String',B2);
set(handles.bidC,'String',B3);
set(handles.bidD,'String',B4);

guidata(hObject,handles);

if winnings<=0
    endscreen;
end


function bidA_Callback(hObject, eventdata, handles)
% hObject    handle to bidA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidA as text
%        str2double(get(hObject,'String')) returns contents of bidA as a double


% --- Executes during object creation, after setting all properties.
function bidA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bidB_Callback(hObject, eventdata, handles)
% hObject    handle to bidB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidB as text
%        str2double(get(hObject,'String')) returns contents of bidB as a double


% --- Executes during object creation, after setting all properties.
function bidB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bidC_Callback(hObject, eventdata, handles)
% hObject    handle to bidC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidC as text
%        str2double(get(hObject,'String')) returns contents of bidC as a double


% --- Executes during object creation, after setting all properties.
function bidC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bidD_Callback(hObject, eventdata, handles)
% hObject    handle to bidD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bidD as text
%        str2double(get(hObject,'String')) returns contents of bidD as a double


% --- Executes during object creation, after setting all properties.
function bidD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bidD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function Winnings_CreateFcn(hObject, eventdata, handles)
% hObject    handle to winnings (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes on button press in next.
function next_Callback(hObject, eventdata, handles)
% hObject    handle to next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global round
global answer

ListofquestionsMatlab1

if round==4
    endscreen;

elseif round==3
    Round4questions = {Q1R4,Q2R4,Q3R4,Q4R4,Q5R4,Q6R4,Q7R4,Q8R4,Q9R4,Q10R4,Q11R4,Q12R4,Q13R4,Q14R4,Q15R4,Q16R4,Q17R4,Q18R4,Q19R4,Q20R4,Q21R4,Q22R4,Q23R4,Q24R4,Q25R4};
    chosenquestionR4 = Round4questions{randi(length(Round4questions))};

    Q4=chosenquestionR4(1,1)
    A4=chosenquestionR4(1,2);
    B4=chosenquestionR4(1,3);
    C4=chosenquestionR4(1,4);
    D4=chosenquestionR4(1,5);
    Ans4=chosenquestionR4(1,6);
    
    answer = Ans4; 
    set(handles.Q_bar,'String',Q4);%displays Q in Q_bar 
    set(handles.OptionA,'String',A4); 
    set(handles.OptionB,'String',B4); 
    set(handles.OptionC,'String',C4); 
    set(handles.OptionD,'String',D4);
    round = 4
    set(handles.round,'String',num2str(round));
    
elseif round==2
    Round3questions = {Q1R3,Q2R3,Q3R3,Q4R3,Q5R3,Q6R3,Q7R3,Q8R3,Q9R3,Q10R3,Q11R3,Q12R3,Q13R3,Q14R3,Q15R3,Q16R3,Q17R3,Q18R3,Q19R3,Q20R3,Q21R3,Q22R3,Q23R3,Q24R3,Q25R3};
    chosenquestionR3 = Round3questions{randi(length(Round3questions))};

    Q3=chosenquestionR3(1,1);
    A3=chosenquestionR3(1,2);
    B3=chosenquestionR3(1,3);
    C3=chosenquestionR3(1,4);
    D3=chosenquestionR3(1,5);
    Ans3=chosenquestionR3(1,6);
    
    answer = Ans3; 
    set(handles.Q_bar,'String',Q3);%displays Q in Q_bar 
    set(handles.OptionA,'String',A3); 
    set(handles.OptionB,'String',B3); 
    set(handles.OptionC,'String',C3); 
    set(handles.OptionD,'String',D3); 
    round = 3
    set(handles.round,'String',num2str(round));
    
elseif round==1
    Round2questions = {Q1R2,Q2R2,Q3R2,Q4R2,Q5R2,Q6R2,Q7R2,Q8R2,Q9R2,Q10R2,Q11R2,Q12R2,Q13R2,Q14R2,Q15R2,Q16R2,Q17R2,Q18R2,Q19R2,Q20R2,Q21R2,Q22R2,Q23R2,Q24R2,Q25R2};
    chosenquestionR2 = Round2questions{randi(length(Round2questions))};

    Q2=chosenquestionR2(1,1);
    A2=chosenquestionR2(1,2);
    B2=chosenquestionR2(1,3);
    C2=chosenquestionR2(1,4);
    D2=chosenquestionR2(1,5);
    Ans2=chosenquestionR2(1,6);
    
    answer = Ans2; 
    set(handles.Q_bar,'String',Q2);%displays Q in Q_bar 
    set(handles.OptionA,'String',A2); 
    set(handles.OptionB,'String',B2); 
    set(handles.OptionC,'String',C2); 
    set(handles.OptionD,'String',D2); 
    round = 2
    set(handles.round,'String',num2str(round));
    
end

set(handles.bidA,'String','');
set(handles.bidB,'String','');
set(handles.bidC,'String','');
set(handles.bidD,'String','');

guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function over_CreateFcn(hObject, eventdata, handles)
% hObject    handle to over (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
start;
