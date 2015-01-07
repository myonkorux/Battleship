%Alg3Hit
%I was at a loss for how to minimize the amount of code, so I wrote all 50
%cases. Yeah, I think this is it for me.

function [i,j,newstepAlg3] = Alg3Hit(board,oldstepAlg3)

switch oldstepAlg3
    case 1
        i=7;
        j=6;
        newstepAlg3=oldstepAlg3+1;
    case 2
        i=6;
        j=7;
        newstepAlg3=oldstepAlg3+1;
    case 3
        i=8;
        j=5;
        newstepAlg3=oldstepAlg3+1;
    case 4
        i=5;
        j=8;
        newstepAlg3=oldstepAlg3+1;
    case 5
        i=9;
        j=4;
        newstepAlg3=oldstepAlg3+1;
    case 6
        i=4;
        j=9;
        newstepAlg3=oldstepAlg3+1;
    case 7
        i=10;
        j=3;
        newstepAlg3=oldstepAlg3+1;
    case 8
        i=3;
        j=10;
        newstepAlg3=oldstepAlg3+1;
    case 9
        i=11;
        j=2;
        newstepAlg3=oldstepAlg3+1;
    case 10
        i=2;
        j=11;
        newstepAlg3=oldstepAlg3+1;
    case 11
        i=5;
        j=4;
        newstepAlg3=oldstepAlg3+1;
    case 12
        i=4;
        j=5;
        newstepAlg3=oldstepAlg3+1;
    case 13
        i=6;
        j=3;
        newstepAlg3=oldstepAlg3+1;
    case 14
        i=3;
        j=6;
        newstepAlg3=oldstepAlg3+1;
    case 15
        i=7;
        j=2;
        newstepAlg3=oldstepAlg3+1;
    case 16
        i=2;
        j=7;
        newstepAlg3=oldstepAlg3+1;
    case 17
        i=9;
        j=8;
        newstepAlg3=oldstepAlg3+1;
    case 18
        i=8;
        j=9;
        newstepAlg3=oldstepAlg3+1;
    case 19
        i=10;
        j=7;
        newstepAlg3=oldstepAlg3+1;
    case 20
        i=7;
        j=10;
        newstepAlg3=oldstepAlg3+1;
    case 21
        i=11;
        j=6;
        newstepAlg3=oldstepAlg3+1;
    case 22
        i=6;
        j=11;
        newstepAlg3=oldstepAlg3+1;
    case 23
        i=3;
        j=2;
        newstepAlg3=oldstepAlg3+1;
    case 24
        i=2;
        j=3;
        newstepAlg3=oldstepAlg3+1;
    case 25
        i=11;
        j=10;
        newstepAlg3=oldstepAlg3+1;
    case 26
        i=10;
        j=11;
        newstepAlg3=oldstepAlg3+1;
    case 27
        i=6;
        j=5;
        newstepAlg3=oldstepAlg3+1;
    case 28
        i=5;
        j=6;
        newstepAlg3=oldstepAlg3+1;
    case 29
        i=7;
        j=4;
        newstepAlg3=oldstepAlg3+1;
    case 30
        i=4;
        j=7;
        newstepAlg3=oldstepAlg3+1;
    case 31
        i=8;
        j=3;
        newstepAlg3=oldstepAlg3+1;
    case 32
        i=3;
        j=8;
        newstepAlg3=oldstepAlg3+1;
    case 33
        i=9;
        j=2;
        newstepAlg3=oldstepAlg3+1;
    case 34
        i=2;
        j=9;
        newstepAlg3=oldstepAlg3+1;
    case 35
        i=8;
        j=7;
        newstepAlg3=oldstepAlg3+1;
    case 36
        i=7;
        j=8;
        newstepAlg3=oldstepAlg3+1;
    case 37
        i=9;
        j=6;
        newstepAlg3=oldstepAlg3+1;
    case 38
        i=6;
        j=9;
        newstepAlg3=oldstepAlg3+1;
    case 39
        i=10;
        j=5;
        newstepAlg3=oldstepAlg3+1;
    case 40
        i=5;
        j=10;
        newstepAlg3=oldstepAlg3+1;
    case 41
        i=11;
        j=4;
        newstepAlg3=oldstepAlg3+1;
    case 42
        i=4;
        j=11;
        newstepAlg3=oldstepAlg3+1;
    case 43
        i=4;
        j=3;
        newstepAlg3=oldstepAlg3+1;
    case 44
        i=3;
        j=4;
        newstepAlg3=oldstepAlg3+1;
    case 45
        i=5;
        j=2;
        newstepAlg3=oldstepAlg3+1;
    case 46
        i=2;
        j=5;
        newstepAlg3=oldstepAlg3+1;
    case 47
        i=10;
        j=9;
        newstepAlg3=oldstepAlg3+1;
    case 48
        i=9;
        j=10;
        newstepAlg3=oldstepAlg3+1;
    case 49
        i=11;
        j=8;
        newstepAlg3=oldstepAlg3+1;
    case 50
        i=8;
        j=11;
        newstepAlg3=oldstepAlg3+1;
end