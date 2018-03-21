%This script is for subtask 1, dispensing marbles

clear
clc


lego = legoev3('usb');
beep(lego);
clearLCD(lego);

motor = motor(lego, 'A');
motor.Speed = -20;

start(motor);

while true
    center = readButton(lego,'center');
    left = readButton(lego, 'left');
    right = readButton(lego, 'right');
    up = readButton(lego, 'up');
    down = readButton(lego, 'down');
    if(left)
        motor.Speed = motor.Speed +5;
        disp(motor.Speed);
        clearLCD(lego);
    elseif(right)
        motor.Speed = motor.Speed - 5;
        disp(motor.Speed);
        clearLCD(lego);
    elseif(center)
        stop(motor);
        disp('Stopped');
        clearLCD(lego);
        writeLCD(lego, 'Stopped');
    elseif(up || down)
        start(motor)
        disp('Started');
        clearLCD(lego);
        writeLCD(lego, 'Started');
    end

end

