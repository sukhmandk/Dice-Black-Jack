function [ ani ] = animationAndSound(diceVal)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
    ani = audioread('WAV.wav');
    [ySound, sampleFreq] = audioread('WAV.wav');
    sound(ySound(1:200000),sampleFreq);
    for i = 1:10
                Dice1 = imread('dice1.jpg');Dice2 = imread('dice2.jpg');
                Dice3 = imread('dice3.jpg');Dice4 = imread('dice4.jpg');
                Dice5 = imread('dice5.jpg');Dice6 = imread('dice6.jpg');

                if i == 1
                    imshow(Dice1);
                    ani = audioread('WAV.wav');
                    [ySound, sampleFreq] = audioread('WAV.wav');
                    sound(ySound(1:200000),sampleFreq);
                elseif i == 2
                    imshow(Dice2);
                elseif i == 3
                    imshow(Dice3);
                elseif i == 4
                    imshow(Dice4);
                elseif i == 5
                    imshow(Dice5);
                elseif i == 6
                    imshow(Dice6);
                elseif i == 7
                    imshow(Dice5);
                elseif i == 8
                    imshow(Dice4);
                elseif i == 9
                    imshow(Dice3);
                else
                    imshow(Dice1);
                    
                end
                pause(1-.9)
            end
            switch diceVal
                        case 1
                             image = imread('dice1.jpg'); imshow(image);
                        case 2
                             image = imread('dice2.jpg'); imshow(image);
                        case 3
                             image = imread('dice3.jpg'); imshow(image);
                        case 4
                             image = imread('dice4.jpg'); imshow(image);
                        case 5
                             image = imread('dice5.jpg'); imshow(image);
                        case 6
                             image = imread('dice6.jpg'); imshow(image);
                    end
            
end

