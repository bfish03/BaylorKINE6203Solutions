function [wordLength,firstChar,lastChar] = wordInput(word)
% This function displays the charcter length, first character, and last
% character of any word.
wordLength = strlength(word)
firstChar = word(1)
lastChar = word(end);
end

