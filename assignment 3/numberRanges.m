function ranges = numberRanges(a,b)
% This function takes two numbers and displays each value in its range from
% the lower number to the higher number
if b < a
    ranges = b:a
elseif a < b
    ranges = a:b
else
    ranges = [a b]
    disp('Input 2 numbers that are not equal')
end

