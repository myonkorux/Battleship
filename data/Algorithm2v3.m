
function [board, newhits, stepnumout, newi, newj, newfirsti, newfirstj, shipval]= Algorithm2v3(board, availablehits, stepnumin, oldi, oldj, firsti, firstj, shipval)

%% initialize variables

done = false;
newhits = availablehits;
m = 2;

%% Algorithm Code

while ~done
    switch stepnumin
        case 1 % check up
            if ~checkerboard(board)
                %pick a random (i,j)
                newfirsti = randi(10)+1;
                newfirstj = randi(10)+1;
                %since technically the points we want will be odd(they have the extra 10 column to its left and bottom, we want the
                %points that have a modulus of 1. We don't want when both ponts
                %are "even" or "odd"
                while mod(newfirsti, m) < 1 && mod(newfirstj,m)<1 || mod(newfirsti, m) == 1 && mod(newfirstj,m)==1
                    newfirsti = randi(10)+1;
                    newfirstj = randi(10)+1;
                end
            else
                newfirsti = randi(10)+1;
                newfirstj = randi(10)+1;
            end

            oldi = newfirsti;% adjusted for new board function
            oldj = newfirstj;
            
            initialx = oldi;
            initialy = oldj;
            
            %the rest of case one is basically the same as the other cases
            if board(initialx,initialy)==0
                % if you hit a spot that is not a ship (0), make 1 (miss)
                board(initialx,initialy)=1;
                newi = oldi;
                newj = oldj;
                stepnumout = 1; % stay in case
                done = true;
            elseif board(initialx,initialy)==1
                % if hit an already missed hit (1), repeat process
                stepnumin = 1; % stay in case
            elseif board(initialx,initialy)==8
                % if you hit a ship already, repeat process
                stepnumin = 1; % stay in case
            elseif board(initialx,initialy)== 10
                stepnumin = 1; % stay in case
            else
                % if you hit a ship, turn to 8
                shipval = board(initialx,initialy);
                board(initialx,initialy)=8;
                newhits=newhits-1;
                newi = oldi;
                newj = oldj;
                stepnumout = 2; % go to next case
                done = true;
            end
            
        case 2
            rightx = oldi;
            righty = oldj;
            
            righty = righty + 1; % check point above intially chosen point
            
            if board(rightx,righty)==0
                if board(rightx, righty-1)== 8
                    board(rightx,righty)=1;
                    newi = firsti;
                    newj = firstj;
                else
                    % if you hit a spot that is not a ship (0), make 1 (miss)
                    board(rightx,righty)=1;
                    newi = oldi;
                    newj = oldj;
                end
                stepnumout = 3;
                newfirsti = firsti;
                newfirstj = firstj;
                done = true;
            elseif board(rightx,righty)==1
                % if hit an already missed hit (1), repeat process
                stepnumin = 3;
            elseif board(rightx,righty)==8
                % if you hit a ship already, repeat process
                stepnumin = 3;
            elseif board(rightx,righty)==10
                stepnumin = 3;
            else
%                 if board(upx,upy) == shipval
                % if you hit a ship, turn to 8
                shipval = board(rightx,righty);
                board(rightx,righty)=8;
                newhits=newhits-1;
                newi = rightx;
                newj = righty;
                stepnumout = 2;
                newfirsti = firsti;
                newfirstj = firstj;
                done = true;
%             else
%                 stepnumout = 3;
            end
    
        case 3
            leftx = firsti;
            lefty = firstj;
            
            lefty = lefty-1; % check point below intially chosen point
            
            if board(leftx,lefty)==0
                if board(leftx, lefty+1)== 8
                    board(leftx, lefty)=1;
                    newi = firsti;
                    newj = firstj;
                    stepnumout = 3;
                else
                    % if you hit a spot that is not a ship (0), make 1 (miss)
                    board(leftx,lefty)=1;
                    newi = oldi;
                    newj = oldj;
                    stepnumout = 4;
                end
                %stepnumout = 4;
                newfirsti = firsti;
                newfirstj = firstj;
                done = true;
            elseif board(leftx,lefty)==1
                % if hit an already missed hit (1), repeat process
                stepnumin = 4;
            elseif board(leftx,lefty)==8
                % if you hit a ship already, repeat process
                stepnumin = 4;
            elseif board(leftx,lefty)==10
                stepnumin = 4;
            else
%                 if board(downx,downy) == shipval
                % if you hit a ship, turn to 8
                shipval = board(leftx,lefty);
                board(leftx,lefty)=8;
                newhits=newhits-1;
                newfirsti = leftx;
                newfirstj = lefty;
                newi = oldi;
                newj=oldj;
                stepnumout = 3;
                done = true;
%             else
%                 stepnumout = 4;
            end
            
        case 4
            upx = oldi;
            upy = oldj;
            
            upx = upx +1; % check point right of intitially chosen pt
            
            if board(upx,upy)==0
                if board(upx-1, upy)== 8
                    board(upx, upy)=1;
                    newi = firsti;
                    newj = firstj;
                else
                    % if you hit a spot that is not a ship (0), make 1 (miss)
                    board(upx,upy)=1;
                    newi = oldi;
                    newj = oldj;
                end
                stepnumout = 5;
                newfirsti = firsti;
                newfirstj = firstj;
                done = true;
            elseif board(upx,upy)==1
                % if hit an already missed hit (1), repeat process
                stepnumin = 5;
            elseif board(upx,upy)==8
                % if you hit a ship already, repeat process
                stepnumin = 5;
            elseif board(upx,upy)==10
                stepnumin = 5;
            else
%                 if board(upx,upy) == shipval
                % if you hit a ship, turn to 8
                shipval = board(upx,upy);
                board(upx,upy)=8;
                newhits=newhits-1;
                newi = upx;
                newj = upy;
                stepnumout = 4;
                newfirsti = firsti;
                newfirstj = firstj;
                done = true;
%             else
%                 stepnumin = 5;
            end
            
        case 5
            downx = firsti;
            downy = firstj;
            
            downx = downx - 1; % check point left of intially chosen pt
            
            if board(downx,downy)==0
                if board(downx+1, downy)== 8
                    board(downx, downy)=1;
                    newi = oldi;
                    newj = oldj;
                    stepnumout = 5;
                else
                    % if you hit a spot that is not a ship (0), make 1 (miss)
                    board(downx,downy)=1;
                    newi = oldi;
                    newj = oldj;
                    stepnumout = 1;
                end
                %stepnumout = 1;
                newfirsti = firsti;
                newfirstj = firstj;
                done = true;
            elseif board(downx,downy)==1
                % if hit an already missed hit (1), repeat process
                stepnumin = 1;
            elseif board(downx,downy)==8
                % if you hit a ship already, repeat process
                stepnumin = 1;
            elseif board(downx,downy)==10
                stepnumin = 1;
            else
%                 if board(downx,downy) == shipval
                % if you hit a ship, turn to 8
                shipval = board(downx,downy);
                board(downx,downy)=8;
                newhits=newhits-1;
                newfirsti = downx;
                newfirstj = downy;
                newi = oldi;
                newj=oldj;
                stepnumout = 5;
                done = true;
%             else
%                 stepnumin = 1;
            end
    end
end
end



