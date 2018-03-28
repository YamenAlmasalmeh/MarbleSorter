function [ colors ] = BarcodeFunction(motorA, sensor )
motorA.Speed = -20;
start(motorA);
past = 0;
colors = [];
while abs(readRotation(motorA)) < 840
    while abs(readRotation(motorA)) - past < 91
    end
    stop(motorA)
    pause(1);
    colors = [colors, readLightIntensity(sensor)];
    past = abs(readRotation(motorA));
    start(motorA);
end
stop(motorA);
colors = colors <= 2;

end

