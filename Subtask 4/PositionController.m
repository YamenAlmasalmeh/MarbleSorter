function [] = PositionController(motorA, pos)
resetRotation(motorA);
neg = 1;
if pos == 0
    return
elseif pos < 0
    motorA.Speed = -20;
    neg = -1;
else
    motorA.Speed = 20;
end

pos = abs(pos);
start(motorA);

while pos-abs(readRotation(motorA)) > pos/15 + pos/15
end
motorA.Speed = -10 * neg;
pause(0.01);
stop(motorA);

end