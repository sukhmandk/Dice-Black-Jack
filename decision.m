function decision( summArray, s )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
global player1; global player2;  global player1Round ; global player2Round;
global num;
if strcmp(s,'1')
    num = 1;
    player1 = summArray([1,3,5]);
    player2 = summArray([2,4,6]);
    player1Round = [0 0 0];
    player2Round = [0 0 0];
    for i = 1:3
        if player1(i) >= 9
            player2Round(i) = 1;
        elseif player2(i) >= 9
            player1Round(i) = 1;
        elseif player1(i) > player2(i)
            player1Round(i) = 1;
        elseif player2(i) > player1(i)
            player2Round(i) = 1;
        else
        end
    end
    
else
    num = 2;
    player1 = summArray([1,3,5]);
    player2 = summArray([2,4,6]);
    player1Round = [0 0 0];
    player2Round = [0 0 0];
    for i = 1:3
        if player1(i) >= 9
            player2Round(i) = 1;
        elseif player2(i) >= 9
            player1Round(i) = 1;
        elseif player1(i) > player2(i)
            player1Round(i) = 1;
        elseif player2(i) > player1(i)
            player2Round(i) = 1;
        else
        end
    end
end
  
    finalGUI(player1, player2, player1Round, player2Round,num);
end

