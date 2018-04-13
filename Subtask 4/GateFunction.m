function [] = GateFunction(motorA)
resetRotation(motorA);

motorA.Speed = -30;
start(motorA);

while readRotation(motorA) > -80
end

stop(motorA);
pause(0.5);

motorA.Speed = 30;
start(motorA);
while readRotation(motorA) < -15
end

stop(motorA)

end