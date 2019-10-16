classdef dice
    
    properties
        diceVal;
    end
    
    methods
        
        function [winner] = dice(name1,name2)
            diceValue = randi([1,6]); 
            sum2 = 0;
            sum2 = sum2 + diceValue;
            
            if nargin == 0
                winner.diceVal = diceValue;
            else 
                winner.diceVal = [];
            end 
        if j == 1
                    choice = input('Roll(r) or Fold(f): ', 's');
                    if sum2 <= 6
                        choice = fprintf('r');
                    else
                        choice = fprintf('f');
                    end
                        
                    if choice == 'f'
                        return  
                    elseif choice == 'r'
                    else
                        fprintf('Wrong response');
                        choice = input('Roll(r) or Fold(f): ', 's');
                    end
                end
            sum1 = [];
                sum1 = sum1 + winner.diceVal;
                a = animationAndSound(diceValue);
                %gui update diceValue and sum
                if j == 1
                    choice = input('Roll(r) or Fold(f): ', 's');
                    if choice == 'f'
                        return
                    elseif choice == 'r'
                    else
                        fprintf('Wrong response');
                        choice = input('Roll(r) or Fold(f): ', 's');
                    end
                end
            end
 
        end
end 