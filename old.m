function [winner] = diceBlackJack(name1,name2) 
            for j = 1:3
                
                diceValue = randi([1,6]); sum2 = sum2 + diceValue
                
                a = animationAndSound(diceValue);
                %gui update diceValue and sum
                if j < 3
                    choice = input('Roll(r) or Fold(f): ', 's');
                    if sum <= 6
                        choice = fprintf('r');
                    else
                        choice = fprintf('f');
                    end
                        
                    if choice == 'f'
                        break 
                    elseif choice == 'r'
                    else
                        fprintf('Wrong response');
                        choice = input('Roll(r) or Fold(f): ', 's');
                    end
                end
            end
      
                diceValue = randi([1,6]); sum1 = sum1 + diceValue
                a = animationAndSound(diceValue);
                %gui update diceValue and sum
                if j < 3
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
    winner = 'Player1 won';
end