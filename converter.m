% This program converts the one unit into another
% Code is created in MATLAB

disp('1. Length conversion (m to cm)')
disp('2. mass conversion (kg to gm)')
disp('3. temperature conversion (celcius to farhen.)')
disp('4. Program will EXIT')
a=input('Enter any of the four otion-(1,2,3,4) = ');
while a<=20
    switch a
        case 1
            clc
            disp('length conversion has started')
            A=input('Enter any number to check the length conversion');
            B=A*100;
            disp([num2str(A),' m = ',num2str(B),' cm '])
            disp('............................................')
            disp('1. Length conversion (m to cm)')
            disp('2. mass conversion (kg to gm)')
            disp('3. temperature conversion (celcius to farhen.)')
            disp('4. Program will EXIT')
            a=5;
        case 2
            clc
            disp('mass conversion has started')
            A=input('Enter any number to check the mass conversion');
            B=A*1000;
            disp([num2str(A),' kg = ',num2str(B),' gm '])
            disp('............................................')
            disp('1. Length conversion (m to cm)')
            disp('2. mass conversion (kg to gm)')
            disp('3. temperature conversion (celcius to farhen.)')
            disp('4. Program will EXIT')
            a=5;
        case 3
            clc
            disp('temperature conversion has started')
            A=input('Enter any number to check the temperature conversion');
            B=((9/5)*A)+32;
            disp([num2str(A),' degree celcius = ',num2str(B),' degree farehn. '])
            disp('............................................')
            disp('1. Length conversion (m to cm)')
            disp('2. mass conversion (kg to gm)')
            disp('3. temperature conversion (celcius to farhen.)')
            disp('4. Program will EXIT')
            a=5;
        case 4
            clc
            disp('THE PROGRAM WILL EXIT NOW......THANK YOU FOR USING OUR CONVERTER...')
            break
        case 5
            a=input('Enter any of the four otion-(1,2,3,4) = ');
    end
end