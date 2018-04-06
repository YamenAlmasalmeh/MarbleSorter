clear
lego = legoev3('usb');
motorA = motor(lego,'A');

resetRotation(motorA);

motorA.Speed = 20;

start(motorA);
past = 0;
while 1
start(motorA);
while readRotation(motorA) - past < 350
end
stop(motorA);
past = readRotation(motorA);
pause(1);
end
% motor.Speed = -20;
% pause(0.05);
motor.Speed = 0;
stop(motorA);