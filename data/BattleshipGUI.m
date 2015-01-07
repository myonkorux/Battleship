function varargout = BattleshipGUI(varargin)
% BATTLESHIPGUI MATLAB code for BattleshipGUI.fig
%      BATTLESHIPGUI, by itself, creates a new BATTLESHIPGUI or raises the existing
%      singleton*.
%
%      H = BATTLESHIPGUI returns the handle to a new BATTLESHIPGUI or the handle to
%      the existing singleton*.
%
%      BATTLESHIPGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BATTLESHIPGUI.M with the given input arguments.
%
%      BATTLESHIPGUI('Property','Value',...) creates a new BATTLESHIPGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BattleshipGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BattleshipGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BattleshipGUI

% Last Modified by GUIDE v2.5 22-Apr-2014 02:08:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BattleshipGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @BattleshipGUI_OutputFcn, ...
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


% --- Executes just before BattleshipGUI is made visible.
function BattleshipGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BattleshipGUI (see VARARGIN)

% Choose default command line output for BattleshipGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
%main(handles);

% UIWAIT makes BattleshipGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BattleshipGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2



function totalgameText_Callback(hObject, eventdata, handles)
% hObject    handle to totalgameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of totalgameText as text
%        str2double(get(hObject,'String')) returns contents of totalgameText as a double


% --- Executes during object creation, after setting all properties.
function totalgameText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to totalgameText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in P1Q1.
function P1Q1_Callback(hObject, eventdata, handles)
% hObject    handle to P1Q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in P2Q1.
function P2Q1_Callback(hObject, eventdata, handles)
% hObject    handle to P2Q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in P2Q2.
function P2Q2_Callback(hObject, eventdata, handles)
% hObject    handle to P2Q2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in P1Q2.
function P1Q2_Callback(hObject, eventdata, handles)
% hObject    handle to P1Q2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in P1Q3.
function P1Q3_Callback(hObject, eventdata, handles)
% hObject    handle to P1Q3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in P1A1.
function P1A1_Callback(hObject, eventdata, handles)
% hObject    handle to P1A1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of P1A1


% --- Executes on button press in P1A2.
function P1A2_Callback(hObject, eventdata, handles)
% hObject    handle to P1A2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of P1A2


% --- Executes on button press in P1A3.
function P1A3_Callback(hObject, eventdata, handles)
% hObject    handle to P1A3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of P1A3


% --- Executes on button press in P1A4.
function P1A4_Callback(hObject, eventdata, handles)
% hObject    handle to P1A4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of P1A4


% --- Executes on button press in P2A1.
function P2A1_Callback(hObject, eventdata, handles)
% hObject    handle to P2A1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of P2A1


% --- Executes on button press in P2A2.
function P2A2_Callback(hObject, eventdata, handles)
% hObject    handle to P2A2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of P2A2


% --- Executes on button press in P2A3.
function P2A3_Callback(hObject, eventdata, handles)
% hObject    handle to P2A3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of P2A3


% --- Executes on button press in P2A4.
function P2A4_Callback(hObject, eventdata, handles)
% hObject    handle to P2A4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of P2A4


% --- Executes on button press in P2Q3.
function P2Q3_Callback(hObject, eventdata, handles)
% hObject    handle to P2Q3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in goButton.
function goButton_Callback(hObject, eventdata, handles)
% hObject    handle to goButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
mainv8(handles);


function gameCountText_Callback(hObject, eventdata, handles)
% hObject    handle to gameCountText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gameCountText as text
%        str2double(get(hObject,'String')) returns contents of gameCountText as a double


% --- Executes during object creation, after setting all properties.
function gameCountText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gameCountText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in stopButton.
function stopButton_Callback(hObject, eventdata, handles)
% hObject    handle to stopButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);



% --- Executes on selection change in computer1Popup.
function computer1Popup_Callback(hObject, eventdata, handles)
% hObject    handle to computer1Popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns computer1Popup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from computer1Popup


% --- Executes during object creation, after setting all properties.
function computer1Popup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to computer1Popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in computer2Popup.
function computer2Popup_Callback(hObject, eventdata, handles)
% hObject    handle to computer2Popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns computer2Popup contents as cell array
%        contents{get(hObject,'Value')} returns selected item from computer2Popup


% --- Executes during object creation, after setting all properties.
function computer2Popup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to computer2Popup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



