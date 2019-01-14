function varargout = endscreen(varargin)
% ENDSCREEN MATLAB code for endscreen.fig
%      ENDSCREEN, by itself, creates a new ENDSCREEN or raises the existing
%      singleton*.
%
%      H = ENDSCREEN returns the handle to a new ENDSCREEN or the handle to
%      the existing singleton*.
%
%      ENDSCREEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENDSCREEN.M with the given input arguments.
%
%      ENDSCREEN('Property','Value',...) creates a new ENDSCREEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before endscreen_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to endscreen_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help endscreen

% Last Modified by GUIDE v2.5 11-Jan-2019 17:12:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @endscreen_OpeningFcn, ...
                   'gui_OutputFcn',  @endscreen_OutputFcn, ...
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


% --- Executes just before endscreen is made visible.
function endscreen_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to endscreen (see VARARGIN)

% Choose default command line output for endscreen
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes endscreen wait for user response (see UIRESUME)
% uiwait(handles.figure1);

global winnings;
if winnings == 100 
   fprintf('Value is %f \n' , winnings); 
   else 
   fprintf('Value is NOT %f \n' , winnings);
   end 
set(handles.winnings,'String',num2str(winnings));
guidata(hObject,handles);


% --- Outputs from this function are returned to the command line.
function varargout = endscreen_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function winnings_CreateFcn(hObject, eventdata, handles)
% hObject    handle to winnings (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
start;
