% This is a random number guessing game created for fun.
% Coding is done in MATLAB
% Follow the instructions after running the game.
% Enjoy

clc
clear
while i~=0
    disp('                "WELCOME to the game of numbers"')
    disp('                        (INSTRUCTIONS)     ')
     disp('                        ..............    ')
    disp('1. You have to guess a number in between 1 to 100')
    disp('2. You  will have 5 chance to guess the right number')
    disp('3. ALL THE BEST')
    disp('.........................................................')
    disp('ENTER ANY KEY TO START THE GAME')
    pause
a=randi(100);

for i=1:5
b=input('Guess the lucky number:::');
if b<a
    disp('Wrong number....Your number is less than the actual number')
elseif b>a 
    disp('Wrong number.....Your number is greater than the actual number')
     elseif b==a
        disp('You got the right answer')
        break
end

if i==5 
    disp('You have used your all chance....TRY ANOTHER GAME')
    disp(a)
end
end
i=input('press 1 to continue or 0 to exit:::');
a=randi(100);
clc
if i==0
    disp('.......................................')
    disp('Thank you for playing with us')
     disp('.......................................')
end
end


    