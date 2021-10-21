function [sumNum,prodNum,diffNum,maxNum] = numberOperations(inputNumOne,inputNumTwo)
% Finds sum, product, difference, and max of two numbers.
sumNum = (inputNumOne + inputNumTwo)
prodNum = (inputNumOne * inputNumTwo)
diffNum = (inputNumTwo - inputNumTwo)
if inputNumOne >= inputNumTwo
    maxNum = inputNumOne;
else inputNumTwo > inputNumOne;
    maxNum = inputNumTwo;
end

