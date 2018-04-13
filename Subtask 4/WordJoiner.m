function [ word ] = WordJoiner(marbType, typeNums )
word = '';
space = [' '; ' '];

for i = 1:length(marbType)
    cur = marbType{i};
    x = [num2str(typeNums(2*i - 1)) ',' num2str(typeNums(2*i))];
    cur2 = [cur ': ' x];
    word = [word '; ' cur2];
end
word = word(3:length(word));
end

