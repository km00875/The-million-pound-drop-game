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

% Last Modified by GUIDE v2.5 17-Dec-2018 06:54:25

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

Q={'How many Wimbledon titles has Roger Federer won?', 'What is the capital city of Australia?', 'What is the fastest time taken to run 100m?', 'According to forbes who was the highest paid actor as of 2018?', 'In what year did World War II end?', 'On a standard Monopoly board, what is the highest valued square?', 'How many cards in a standard deck of playing cards?', 'In what year did Elvis Presley die?', 'Who scored the goal to win Manchester City the Premier League in 2012?', 'Who is the founder of Facebook?', 'Who is Kanye West married to?', 'Who scored the last ever goal at Upton Park for West Ham?', 'In the show Friends, which character drinks the most cups of coffee?', 'What is the eighth planet from the sun?', 'Who plays the character Howard Wolowitz in The Big Bang Theory?', 'In which year did the Great Depression start?', 'Who was the first prime minister of the United Kingdom?', 'How many golden tickets were there in Charlie and the Chocolate Factory?', 'How many Marvel universe film cameos did Stan Lee make?', 'Which of these Disney films were released earliest?', 'How many medals did Great Britain win at the 2012 Summer Olympics?', 'Which of these twins starred in the show The Suite Life of Zack and Cody?', 'Which of these elements have an Atomic number of 1?', 'What is the home state of Tony Soprano in the show The Sopranos?', 'Who won the first ever edition of Britains Got Talent?'};
%cell for questions
A={'A:11', 'A:Perth', 'A:9.58 seconds', 'A:Dwayne Johnson', 'A:1945', 'A:Park Lane', 'A:52', 'A:1979', 'A:Edin Dzeko', 'A:Bill Gates', 'A:Kim Kardashian', 'A:Winston Reid', 'A:Ross', 'A:Neptune', 'A:Kevin Sussman ', 'A:1943', 'A:Henry Palham', 'A:5', 'A:22', 'A:Aladdin', 'A:72', 'A:Dolan twins', 'A:Gold', 'A:New York', 'A:George Sampson'};
%cell for option A
B={'B:8', 'B:Brisbane', 'B:9.69 seconds', 'B:Salman Khan', 'B:1943', 'B:Mayfair', 'B:48', 'B:1977', 'B:Sergio Aguero', 'B:Elon Musk', 'B:Khloe Kardashian', 'B:Dimitri Payet', 'B:Pheobe', 'B:Jupiter', 'B:Jim Parsons', 'B:1970', 'B:Margeret Thatcher', 'B:6', 'B:57', 'B:Tarzan', 'B:55', 'B:Spouse twins', 'B:Platinum', 'B:Ohio', 'B:Paul Potts'};
%cell for option B
C={'C:9', 'C:Canberra', 'C:9.55 seconds', 'C:Robert Downey Jr', 'C:1939', 'C:Trafalgar Square', 'C:50', 'C:1969', 'C:David Silva', 'C:Mark Zuckerburg', 'C:Kylie Jenner', 'C:Mark Noble', 'C:Monica', 'C:Saturn', 'C:Kunal Nayyar', 'C:1929', 'C:Spencer Compton', 'C:7', 'C:39', 'C:Sleeping Beauty', 'C:42', 'C:Olsen twins', 'C:Hydrogen', 'C:Illinois', 'C:Damon Scott'};
%cell for option c
D={'D:7', 'D:Sydney', 'D:9.71 seconds', 'D:George Clooney', 'D:1947', 'D:Oxford Street', 'D:54', 'D:1974', 'D:Carlos Tevez', 'D:Hugh Heffner', 'D:Kourtney Kardashian', 'D:Manuel Lanzini', 'D:Racheal', 'D:Mars', 'D:Simon Helberg', 'D:2007', 'D:Robert Wadpole', 'D:8', 'D:73', 'D:Mulan', 'D:65', 'D:Bella twins', 'D:Helium', 'D:New Jersey', 'D:Diversity'};
%cell for option D
Ans={'B','C','A','D','A','B','A','B','B','C','A','A','B','A','D','C','D','A','B','C','D','B','C','D','B'};
R='R';%round

textcell =strcat(A,',',B,',',C,',',D,',',Ans);
n = length(textcell);
O =strsplit( textcell{randi(n)},',');

set(handles.Q_bar,'String',Q);%displays Q in Q_bar
set(handles.rounds,'String',R);
set(handles.OptionA,'String',O(1,1));
set(handles.OptionB,'String',O(1,2));
set(handles.OptionC,'String',O(1,3));
set(handles.OptionD,'String',O(1,4));

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes game wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = game_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


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


% --- Executes on button press in dropbutton.
function dropbutton_Callback(hObject, eventdata, handles)
% hObject    handle to dropbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.output = hObject;
set(handles.Answer,'String',O(1,5));



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
function rounds_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rounds (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
