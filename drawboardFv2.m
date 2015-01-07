%% drawboardV7
% What's different:
% no axis numbers, cleans up GUI design
% red boarder around ships, allows for a boarder "check" in algorithm 1
% board is now a 13 by 13 matrix
% blue game board is 10 by 10
% Changes by Katie Quinn

function board = drawboardFv2
%%Initialize board
size = 12;


overlap = true; %set boolean val for while loop
while overlap == true
    
    board = zeros(size+1); %creating a boarder
    board(:,12)=10;
    board(12,:)=10;
    board(1,:)=10;
    board(:,1)=10;
    
    %Determine Initial Positions
    [iCruiser, jCruiser] = initialposF(size); % get start coordinates
    sizeCruiser = 5;  % Cruiser length
    dxc=0;  % initial values of directions
    dyc=0;  %dx and dy describe whether or not the ship will be layed out
    %upwards/downwards or sideways from the initial position
    
    [iDestroyer, jDestroyer] = initialposF(size);
    sizeDestroyer = 3;
    dxd=0;
    dyd=0;
    
    %makes sure the initial position of the destroyer doesn't overlap with the
    %cruiser
    done = 0;
    while ~done
        if iDestroyer==iCruiser && jDestroyer==jCruiser
            [iDestroyer, jDestroyer] = initialposF(size);
            %if the positions are the same, done is false and the loop will try
            %again
            done=0;
        else
            done=1;
        end
    end
    
    dxb=0;
    dyb=0;
    sizeBattleship= 4;
    [iBattleship,jBattleship] = initialposF(size);
    done = 0;
    while ~done
        if iBattleship==iCruiser && jBattleship==jCruiser || iBattleship==iDestroyer && jBattleship==jDestroyer
            [iBattleship,jBattleship] = initialposF(size);
            %if the positions are the same, done is false and the loop will try
            %again
            done=0;
        else
            done=1;
        end
    end
    
    dxs=0;
    dys=0;
    sizeSub= 3;
    [iSub,jSub] = initialposF(size);
    done = 0;
    while ~done
        if iSub==iCruiser && jSub==jCruiser || iSub==iDestroyer && jSub==jDestroyer || iSub==iBattleship && jSub == jBattleship
            [iSub,jSub] = initialposF(size);
            %if the positions are the same, done is false and the loop will try
            %again
            done=0;
        else
            done=1;
        end
    end
    
    dxp=0;
    dyp=0;
    sizePatrol= 2;
    [iPatrol,jPatrol] = initialposF(size);
    done = 0;
    while ~done
        if iPatrol==iCruiser && jPatrol==jCruiser || iPatrol==iDestroyer && jPatrol==jDestroyer || iPatrol==iBattleship && jPatrol==jBattleship || iPatrol==iSub && jPatrol==jSub
            [iPatrol,jPatrol] = initialposF(size);
            %if the positions are the same, done is false and the loop will try
            %again
            done=0;
        else
            done=1;
        end
    end
    
    %array
    %we need the array to reduce the lines of redundant code; allows us to
    %initialize multiple ships without redundancy
    %all important info for each ship is written down the column
    ships = ...
        [iCruiser, iDestroyer, iBattleship,iSub, iPatrol;
        jCruiser, jDestroyer, jBattleship, jSub, jPatrol;
        sizeCruiser, sizeDestroyer, sizeBattleship, sizeSub, sizePatrol;
        dxc, dxd, dxb, dxs, dxp;
        dyc, dyd, dyb, dys, dyp];
    
    %%decide direction
    %Both Ships
    for k = 1:5
        done=0;
        while ~done
            %this random number will decide whether or not the ship will be
            %layed out vertically(2) or horizontally(1)
            direction = randi(2);
            
            switch direction;
                case 1
                    %when k=1 ships(2,k)=jCruiser (column index of Cruiser)
                    %when k=1 ships(3,k) = sizeCruiser (5)
                    %if the column index of the cruiser is greater than 5, we
                    %can't lay the ship horizontally to the right.
                    %so, ships(4,1)(dxc) is -1, which means we will lay the
                    %ships to the left
                    if ships(2,k)>ships(3,k)
                        ships(4,k) = -1;
                        done = 1;
                    else
                        %if the column index is not greater than 5, the ship
                        %will be layed out to the right
                        ships(4,k) = 1;
                        done = 1;
                    end
                case 2
                    %if ships(1,k) (iCruiser) is greater than 5, a.k.a the row
                    %index is greater than 5, ships(5,k) (dyc) will be layed
                    %downwards
                    %else it will be layed down vertically upwards.
                    if ships(1,k)>ships(3,k)
                        ships(5,k) = -1;
                        done = 1;
                    else
                        ships(5,k) = 1;
                        done = 1;
                    end
            end
            %if, for some reason neither dxc or dyc have been changed into
            %something else, a.k.a we haven't decided what direction the ship
            %will be layed, the computer will try again.
            if ships(4,k)==0 && ships(5,k)==0
                done = 0;
            end
        end
    end
    
    %%fill ship(s)
    
    leave= false;
    for r = 1:5
        for k = 0:ships(3,r)-1
            % as mentioned above, this is the new part. See above for deets
            if board(ships(2,r)+k*ships(4,r),ships(1,r)+k*ships(5,r))~=0
                overlap = true;
                leave=true;
                break
            else
                board(ships(2,r)+k*ships(4,r),ships(1,r)+k*ships(5,r))=ships(3,r);
                overlap = false;
            end
            
        end
        if leave== true
            break
        else
        end
    end
end
end

%%display board.`
%{
%pcolor draws stuff.
figure(1);
pcolor(0:size,0:size,board);
axis off
axis square
%colorbar
%}

