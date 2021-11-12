function [maleIndIsoMean,femaleIndIsoMean,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3)
% This function will calculate the individual and group means for both
% females and males from the isokinetic data. 
for i = 1:length(Gender) % Allows for loop to run for all 25 participants
    if Gender(i) == 'M'
        % Calculates mean of isokinetic strength data for all three trial days of each male.
        maleIndIsoMean(i) = (Day1(i)+Day2(i)+Day3(i)/3)
        % Calculates mean of isokinetic strength data of all males and uses nonzeros function to eliminate zeros from calculation.
        maleGroupIsoMean = mean(nonzeros(maleIndIsoMean)); 
    elseif Gender(i) == 'F'
        % Calculates mean of isokinetic strength data for all three trial days of each female.
        femaleIndIsoMean(i) = (Day1(i)+Day2(i)+Day3(i)/3)
        % Calculates mean of isokinetic strength data of all females and uses nonzeros function to eliminate zeros from calculation.
        femaleGroupIsoMean = mean(nonzeros(femaleIndIsoMean));
    end
end
% Surpresses the 0 values and stores individual means in column vector.
maleIndIsoMean(maleIndIsoMean==0) = [];
maleIndIsoMean = maleIndIsoMean';
femaleIndIsoMean(femaleIndIsoMean==0) = [];
femaleIndIsoMean = femaleIndIsoMean';
