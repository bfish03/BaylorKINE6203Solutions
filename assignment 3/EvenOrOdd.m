function [output] = EvenOrOdd(numb1, numb2)
% Determine whether input is even or odd.
numb = numb1 + numb2
if rem(numb,2)== 0
    output = 'Woo'
else
    output = 'Hah'
end

