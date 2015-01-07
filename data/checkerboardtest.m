%checkerboardTest

board = zeros(12+1); %creating a boarder
board(:,12)=10;
board(12,:)=10;
board(1,:)=10;
board(:,1)=10;
for k = 1:5
    for i = 1:5
        board(i*2+1,k*2)=1;
    end
end

for k = 1:5
    for i = 1:5
        board(i*2,k*2+1)=8;
    end
end

board(3,2)=2;

result = checkerboard(board)