function [ color ] = MarbleIdentifier( rgb )

r = rgb(1);
g = rgb(2);
b = rgb(3);

if 70 < r < 80 && 5 < g < 10 && 10 < b < 15
    color = 'Big Red Marble';
    return;
else if 80 < r < 90 && 0 < g < 8 && 0 < b < 8
    color = 'Small Red Marble';
    return;
else if 15 < r < 25 && 27 < g < 37 && 88 < b < 98
    color = 'Big Blue Marble';
    return;
else if 11 < r < 21 && 23 < g < 33 && 62 < b < 72
    color = 'Small Blue Marble';
    return;
else if 80 < r < 90 && 0 < g < 8 && 0 < b < 8
end

