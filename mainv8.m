%-----------%
%mainv8.m
%Tim Chang
%April 22, 2014
%-----------%

function mainv8(handles)
%values controlled by GUI
p1strat = get(handles.computer1Popup,'value');
p2strat = get(handles.computer2Popup,'value');
Ngames = str2double(get(handles.totalgameText,'string'));
xlabel(handles.movesAxes,'Average Number of Moves to Win');
ylabel(handles.movesAxes,'Number of Games Completed');
%setting wins axes to blank
wins = [0,0];
bar(handles.winsAxes,wins);
axis(handles.winsAxes, [0, 3, 0, Ngames]);
%setting moves axes to blank
plot(handles.movesAxes,0,0);
axis(handles.movesAxes, [0, 100, 0, Ngames]);
%setting games done text box to 0
gamesdone = 0;
gamesdones = num2str(gamesdone);
set(handles.gameCountText,'string',gamesdones);
movesy2 = 0;
movesy1 = 0;
oldi = 0;
oldj = 0;
oldi2 = 0;
oldj2 = 0;

for i=1:Ngames;
    availablehits1=17;
    availablehits2=17;
    p1board = drawboardFv2;
    p2board = p1board;
    p1moves = 0;
    p2moves = 0;
    stepnumin = 1;
    stepnumin2 = 1;
    firsti = 1;
    firstj = 1;
    firsti2 = 1;
    firstj2 = 1;
    shipval = 0;
    shipval2 = 0;
    stepAlg3 = 1;
    stepAlg32 = 1;
    
    
    while availablehits1>0 && availablehits2>0
        
        switch p1strat
            case 1
                [h,availablehits1]=randomHitv2(p2board,availablehits1);
                p2board = h;
                p1moves = p1moves+1;
                pcolor(handles.p2Axes,p2board);
                axis(handles.p2Axes,'off');
                drawnow;
                if availablehits1==0
                    break
                end
            case 2
                [h, availablehits1, stepnumout, newi, newj, newfirsti, newfirstj, shipval]= Algorithm1v8(p2board, availablehits1, stepnumin, oldi, oldj, firsti, firstj, shipval);
                p2board = h;
                p1moves = p1moves+1;
                pcolor(handles.p2Axes,p2board);
                axis(handles.p2Axes,'off');
                drawnow;
                stepnumin = stepnumout;
                firsti = newfirsti;
                firstj = newfirstj;
                oldi = newi;
                oldj = newj;
                if availablehits1==0
                    break
                end
            case 3
                [h, availablehits1, stepnumout, newi, newj, newfirsti, newfirstj,shipval]= Algorithm2v3(p2board, availablehits1, stepnumin, oldi, oldj, firsti, firstj,shipval);
                p2board = h;
                p1moves = p1moves+1;
                pcolor(handles.p2Axes,p2board);
                axis(handles.p2Axes,'off');
                drawnow;
                stepnumin = stepnumout;
                oldi = newi;
                oldj = newj;
                firsti = newfirsti;
                firstj = newfirstj;
                if availablehits1==0
                    break
                end
            case 4
                [h, availablehits1, stepnumout, newi, newj, newfirsti, newfirstj,stepAlg3]= Algorithm3v2(p2board, availablehits1, stepnumin, oldi, oldj, firsti, firstj,stepAlg3);
                p2board = h;
                p1moves = p1moves+1;
                pcolor(handles.p2Axes,p2board);
                axis(handles.p2Axes,'off');
                drawnow;
                stepnumin = stepnumout;
                oldi = newi;
                oldj = newj;
                firsti = newfirsti;
                firstj = newfirstj;
                if availablehits1==0
                    break
                end
        end
        
        switch p2strat
            case 1
                [h2,availablehits2]=randomHitv2(p1board,availablehits2);
                p1board = h2;
                p2moves = p2moves+1;
                pcolor(handles.p1Axes,p1board);
                axis(handles.p1Axes,'off');
                drawnow;
            case 2
                [h2, availablehits2, stepnumout2, newi2, newj2, newfirsti2, newfirstj2, shipval2]= Algorithm1v8(p1board, availablehits2, stepnumin2, oldi2, oldj2, firsti2, firstj2, shipval2);
                p1board = h2;
                p2moves = p2moves+1;
                pcolor(handles.p1Axes,p1board);
                axis(handles.p1Axes,'off');
                drawnow;
                stepnumin2 = stepnumout2;
                firsti2 = newfirsti2;
                firstj2 = newfirstj2;
                oldi2 = newi2;
                oldj2 = newj2;
            case 3
                [h2, availablehits2, stepnumout2, newi2, newj2, newfirsti2, newfirstj2,shipval]= Algorithm2v3(p1board, availablehits2, stepnumin2, oldi2, oldj2, firsti2, firstj2,shipval);
                p1board = h2;
                p2moves = p2moves+1;
                pcolor(handles.p1Axes,p1board);
                axis(handles.p1Axes,'off');
                drawnow;
                stepnumin2 = stepnumout2;
                oldi2 = newi2;
                oldj2 = newj2;
                firsti2 = newfirsti2;
                firstj2 = newfirstj2;
            case 4
                [h2, availablehits2, stepnumout2, newi2, newj2, newfirsti2, newfirstj2,stepAlg32]= Algorithm3v2(p1board, availablehits2, stepnumin2, oldi2, oldj2, firsti2, firstj2,stepAlg32);
                p1board = h2;
                p2moves = p2moves+1;
                pcolor(handles.p1Axes,p1board);
                axis(handles.p1Axes,'off');
                drawnow;
                stepnumin2 = stepnumout2;
                oldi2 = newi2;
                oldj2 = newj2;
                firsti2 = newfirsti2;
                firstj2 = newfirstj2;
        end
        
    end
    if availablehits1>0
        wins(2)=wins(2)+1;
        %movesy2(i)=p2moves;
        movesy2(wins(2))=p2moves;
        a2= mean(movesy2);
        a1= mean(movesy1);
        bar(handles.movesAxes,a2,wins(2),'r');
        hold(handles.movesAxes,'on');
        xlabel(handles.movesAxes,'Average Number of Moves to Win');
        ylabel(handles.movesAxes,'Number of Games Completed');
        bar(handles.movesAxes,a1,wins(1));
        axis(handles.movesAxes, [0, 100, 0, Ngames]);
        
        hold(handles.movesAxes, 'off');
    else
        wins(1)=wins(1)+1;
        %movesy1(i)=p1moves;
        movesy1(wins(1))=p1moves;
        a2= mean(movesy2);
        a1= mean(movesy1);
        bar(handles.movesAxes,a1,wins(1));
        hold(handles.movesAxes,'on');
        xlabel(handles.movesAxes,'Average Number of Moves to Win');
        ylabel(handles.movesAxes,'Number of Games Completed');
        bar(handles.movesAxes,a2,wins(2),'r');
        axis(handles.movesAxes, [0, 100, 0, Ngames]);
        hold(handles.movesAxes, 'off');
        
    end
    
    bar(handles.winsAxes,wins);
    axis(handles.winsAxes, [0, 3, 0, Ngames]);
    gamesdone = gamesdone+1;
    gamesdones = num2str(gamesdone);
    set(handles.gameCountText,'string',gamesdones);
    
end

end

