    

function [h,hitsLeft]=randomHitv2(board,readyhits)

done = false;

while ~done
    i = randi(10)+1;
    j = randi(10)+1;
    if board(i,j)==0
        board(i,j)=1;
        hitsLeft= readyhits;
        h=board;
        done = true;
    elseif board(i,j)==1
        
    elseif board(i,j)==8
        
    else
        board(i,j)=8;
        readyhits=readyhits-1;
        hitsLeft= readyhits;
        h=board;
        done = true;
    end
end
    
end
