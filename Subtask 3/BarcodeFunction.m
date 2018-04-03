function [ colors ] = BarcodeFunction(motorA, sensor )
motorA.Speed = -30;
resetRotation(motorA);
start(motorA);
past = 0;
colors = [];
while abs(readRotation(motorA)) < 840
    while abs(readRotation(motorA)) - past < 89
    end
    stop(motorA)
    colors = [colors, readLightIntensity(sensor, 'reflected')];
    past = abs(readRotation(motorA));
    start(motorA);
end
colors = colors <= 50;

end

