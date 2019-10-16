function twoPlayer()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
   sumArr = [];
    summ = 0;
    for i = 1:6
        
        summ = 0;
        for j = 1:3
            
            if rem(i,2) == 0
               if j <= 3
                    fprintf('\n')
                    disp('Player2''s turn');
                    diceValue = randi([1,6]); summ = summ + diceValue;
                    a = animationAndSound(diceValue);
                    fprintf('Dice Value = %d \n Sum for this round = %d\n', diceValue, summ);
                    
                    if j == 3
                        break
                    else 
                        choice = input('Roll(r) or Fold(f): ', 's');
                        if choice == 'f'
                            break 
                        elseif choice == 'r'
                        else
                            fprintf('Wrong response');
                            choice = input('Roll(r) or Fold(f): ', 's');
                        end
                    end
                end
                
            else
                if j <= 3
                   
                    fprintf('\n')
                    
                    disp('Player1''s turn');
                    diceValue = randi([1,6]); summ = summ + diceValue;
                    a = animationAndSound(diceValue);
                    fprintf('Dice Value = %d \n Sum for this round = %d\n', diceValue, summ);
                    
                    if j >= 3
                        break
                    else 
                        choice = input('Roll(r) or Fold(f): ', 's');
                        if choice == 'f'
                            break 
                        elseif choice == 'r'
                        else
                            fprintf('Wrong response');
                            choice = input('Roll(r) or Fold(f): ', 's');
                        end
                    end
                end
                
            end
        end
        sumArr = [sumArr summ];
    end 
    decision(sumArr,'2');
end
