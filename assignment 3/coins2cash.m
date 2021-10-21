function [totalcash] = coins2cash(quarters, nickels, dimes, pennies)
% Calculates total amount of money from input of change.
quarters = quarters*.25;
nickels = nickels*.05;
dimes = dimes*.1;
pennies = pennies*.01;
totalcash = quarters+nickels+dimes+pennies;
end