function [primeDetermine] = primeNumb(inputNumb)
% This function takes one input number and determines if it is prime.
primeDetermine = isprime(inputNumb);
if primeDetermine == 1
    disp('This number is prime')
else
    disp('This number is not prime')
end

