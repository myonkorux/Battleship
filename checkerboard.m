%checkerboard.m
%Function that checks to see if all the "even" spaces have been hit. To be
%used in Alg2 and 3
%4/18/14
%Tim Chang

function result = checkerboard(board)

counter = 0;

for k = 1:5
    for i = 1:5
        if board(i*2+1,k*2)==1 || board(i*2+1,k*2)==8
            counter = counter+1;
        end
    end
end

for k = 1:5
    for i = 1:5
        if board(i*2,k*2+1)==1 || board(i*2,k*2+1)==8
            counter = counter+1;
        end
    end
end
if counter==50
    result = true;
else
    result = false;
end

