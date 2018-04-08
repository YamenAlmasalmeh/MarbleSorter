clc
clear
lego = legoev3('usb')
myColor = colorSensor(lego)

%replace with count < N if you want to run continuously
run = true;

%number of samples per marble
N = 100;

%intialization dont change please
count = 1;
red = [];
blue = [];
green = [];
contin = true;

while contin
    while count < N
        %dont change these
        count = count+1;
        colors = readColorRGB(myColor);
        red = [red colors(1)];
        green = [green colors(2)];
        blue = [blue colors(3)];
    end
    contin = input('intput 1 if you want to continue measurements otherwise input 0: ')
end

%dont touch this
redAvg = mean(red)
greenAvg = mean(green)
blueAvg = mean(blue)
redMinMax = [min(red) max(red)]
greenMinMax = [min(green) max(green)]
blueMinMax = [min(blue) max(blue)]

