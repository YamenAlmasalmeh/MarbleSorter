clc
clear
%lego = legoev3('usb')
%myColor = colorSensor(lego)

%write marble presence detection code

%rgb = readColorRGB(myColor)

marbleType = '';
colorVals = [76  0  2; %big red
             0 15 0; %big green
             17 21 78; %big blue
             115 32 0; %big yellow
             208 193 195; %big white
             21 0 0; %small red
             0 0 0; %small green
             0 0 0; %small blue
             99  97  114; %small white
             43  41  50; %HDPE
             73  71  45; %small yellow
             20  17  19;] %steel

rgb = [82 5 5]

%(redMin < rgb(1)) && (rgb(1) < redMax) && (greenMin < rgb(2)) && (rgb(2) < greenMax) && (blueMin < rgb(3)) && (rgb(3) < blueMax)
if (colorVals(1,2) < rgb(1)) && (rgb(1) < colorVals(1,1)) && (colorVals(1,4) < rgb(2)) && (rgb(2) < colorVals(1,3)) && (colorVals(1,6) < rgb(3)) && (rgb(3) < colorVals(1,5))
    marbleType = 'Big Red';
elseif (colorVals(2,2) < rgb(1)) && (rgb(1) < colorVals(2,1)) && (colorVals(2,4) < rgb(2)) && (rgb(2) < colorVals(2,3)) && (colorVals(2,6) < rgb(3)) && (rgb(3) < colorVals(2,5))
    marbleType = 'Big Green: Trash';
elseif (colorVals(3,2) < rgb(1)) && (rgb(1) < colorVals(3,1)) && (colorVals(3,4) < rgb(2)) && (rgb(2) < colorVals(3,3)) && (colorVals(3,6) < rgb(3)) && (rgb(3) < colorVals(3,5))
    marbleType = 'Big Blue';
elseif (colorVals(4,2) < rgb(1)) && (rgb(1) < colorVals(4,1)) && (colorVals(4,4) < rgb(2)) && (rgb(2) < colorVals(4,3)) && (colorVals(4,6) < rgb(3)) && (rgb(3) < colorVals(4,5))
    marbleType = 'Big Yellow: Trash';
elseif (colorVals(5,2) < rgb(1)) && (rgb(1) < colorVals(5,1)) && (colorVals(5,4) < rgb(2)) && (rgb(2) < colorVals(5,3)) && (colorVals(5,6) < rgb(3)) && (rgb(3) < colorVals(5,5))
    marbleType = 'Big White';
elseif (colorVals(6,2) < rgb(1)) && (rgb(1) < colorVals(6,1)) && (colorVals(6,4) < rgb(2)) && (rgb(2) < colorVals(6,3)) && (colorVals(6,6) < rgb(3)) && (rgb(3) < colorVals(6,5))
    marbleType = 'Small Red';
elseif (colorVals(7,2) < rgb(1)) && (rgb(1) < colorVals(7,1)) && (colorVals(7,4) < rgb(2)) && (rgb(2) < colorVals(7,3)) && (colorVals(7,6) < rgb(3)) && (rgb(3) < colorVals(7,5))
    marbleType = 'Small Green';
elseif (colorVals(8,2) < rgb(1)) && (rgb(1) < colorVals(8,1)) && (colorVals(8,4) < rgb(2)) && (rgb(2) < colorVals(8,3)) && (colorVals(8,6) < rgb(3)) && (rgb(3) < colorVals(8,5))
    marbleType = 'Small Blue';
elseif (colorVals(9,2) < rgb(1)) && (rgb(1) < colorVals(9,1)) && (colorVals(9,4) < rgb(2)) && (rgb(2) < colorVals(9,3)) && (colorVals(9,6) < rgb(3)) && (rgb(3) < colorVals(9,5))
    marbleType = 'Small White';
elseif (colorVals(10,2) < rgb(1)) && (rgb(1) < colorVals(10,1)) && (colorVals(10,4) < rgb(2)) && (rgb(2) < colorVals(10,3)) && (colorVals(10,6) < rgb(3)) && (rgb(3) < colorVals(10,5))
    marbleType = 'HDPE';
elseif (colorVals(11,2) < rgb(1)) && (rgb(1) < colorVals(11,1)) && (colorVals(11,4) < rgb(2)) && (rgb(2) < colorVals(11,3)) && (colorVals(11,6) < rgb(3)) && (rgb(3) < colorVals(11,5))
    marbleType = 'Small Yellow: Trash';
elseif (colorVals(12,2) < rgb(1)) && (rgb(1) < colorVals(12,1)) && (colorVals(12,4) < rgb(2)) && (rgb(2) < colorVals(12,3)) && (colorVals(12,6) < rgb(3)) && (rgb(3) < colorVals(12,5))
    marbleType = 'Steel';
else
    marbleType = 'Unknown: Trash';
end


    