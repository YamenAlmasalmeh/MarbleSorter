clear
lego = legoev3('usb');
motorA = motor(lego,'A');
sensor = colorSensor(lego,1);
resetRotation(motorA);
motorA.Speed = -20;
start(motorA);
past = 0;
colors = [];
while abs(readRotation(motorA)) < 10
while abs(readRotation(motorA)) - past < 91
end
stop(motorA)
pause(2);
colors = [colors, readLightIntensity(sensor)];
past = abs(readRotation(motorA));
start(motorA);
end
stop(motorA);
