%dont change this
clear
clc
lego = legoev3('usb')

%A denotes port
motorGate = motor(lego,'A')

%this is needed for every rotation
resetRotation(motorGate)
motorGate.Speed = 100

%this makes it rotate 90 degrees
while readRotation(motorGate) < 90
    readRotation(motorGate)
    %this is fraction of a second and its abitrary set it to whatever you
    %want
    pause(0.000001)
end

%this stops the motor
motorGate.Speed = 0;