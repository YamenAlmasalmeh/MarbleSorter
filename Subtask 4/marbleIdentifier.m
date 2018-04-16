function [marbleType] = marbleIdentifier(rgb)

red = rgb(1);
green = rgb(2);
blue = rgb(3);

if red < 55
    if green < 20
        if blue < 13
            marbleType = 'Small Red';
        elseif blue < 25
            marbleType = 'Steel';
        else
            marbleType = 'Small Blue';
        end
    elseif green < 45
        if blue <13
            marbleType = 'Small Green: Trash';
        elseif blue < 40
            marbleType = 'Steel';
        else
            marbleType = 'Big Blue';
        end
    else
        if blue < 35
            marbleType = 'Big Green: Trash';
        else
            marbleType = 'HDPE';
        end
    end
elseif red < 100
    if green < 15
        marbleType = 'Big Red';
    elseif green < 70
        marbleType = 'Small Yellow: Trash';
    else
        marbleType = 'Small White';
    end
elseif red < 130
    marbleType = 'Big Red';
elseif red < 200
    marbleType = 'Big Yellow: Trash';
else
    marbleType = 'Big White';
end

end

