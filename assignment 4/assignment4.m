% Imports file and isolates SubjectID, Age, Gender, Weight, Day 1, Day 2,
% and Day 3 into seperate column vectors.
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv');

% Uses function genderIsoCalc to determine and store the individual and
% group means for all three days for males and females. 
[maleIndIsoMean,femaleIndIsoMean,maleGroupIsoMean,femaleGroupIsoMean] = genderIsoCalc(Gender,Day1,Day2,Day3);

% Uses dayComparer function to isolate and store the participant number if
% they increased in strength from Day 1 to Day 2.
[day1toDay2] = dayComparer(SubjectID,Day1,Day2)

% Uses dayComparer function to isolate and store the participant number if
% they increased in strength from Day 2 to Day 3.
[day2toDay3] = dayComparer(SubjectID,Day2,Day3)

% Uses a for loop to normalize the strength data of Day 1 by the participants corresponding weight and
% stores it in a column vector, then calculates the group mean for Day 1. 
for d = 1:length(Day1)
    normDay1(d) = mean(Day1(d)/Weight(d))
end
normDay1Mean = mean(normDay1)
normDay1Mean = normDay1Mean';

% Uses a for loop to normalize the strength data of Day 2 by the participants corresponding weight and
% stores it in a column vector, then calculates the group mean for Day 2. 
for d = 1:length(Day2)
    normDay2(d) = mean(Day2(d)/Weight(d))
end
normDay2Mean = mean(normDay2)
normDay2Mean = normDay2Mean';

% Uses a for loop to normalize the strength data of Day 3 by the participants corresponding weight and
% stores it in a column vector, then calculates the group mean for Day 3. 
for d = 1:length(Day3)
    normDay3(d) = mean(Day3(d)/Weight(d))
end
normDay3Mean = mean(normDay3)
normDay3Mean = normDay3Mean';
% Exporting data to table

% For each of the 9 variables to be exported, pads the rest of the column with zeros
% to the length of the largest column (maleIndIsoMean) to make all columns
% the same size. Also transforms maleGroupIsoMean and femaleGroupIsoMean
% from row vector to column vector. 
femaleIndIsoMean(numel(maleIndIsoMean)) = 0;
maleGroupIsoMean(numel(maleIndIsoMean)) = 0;
maleGroupIsoMean = maleGroupIsoMean';
femaleGroupIsoMean(numel(maleIndIsoMean)) = 0;
femaleGroupIsoMean = femaleGroupIsoMean';
day1toDay2(numel(maleIndIsoMean)) = 0;
day2toDay3(numel(maleIndIsoMean)) = 0;
normDay1Mean(numel(maleIndIsoMean)) = 0;
normDay1Mean = normDay1Mean';
normDay2Mean(numel(maleIndIsoMean)) = 0;
normDay2Mean = normDay2Mean';
normDay3Mean(numel(maleIndIsoMean)) = 0;
normDay3Mean = normDay3Mean';

% Generates a table named isoResults to store the named variables. Zeros in
% table represent unavailable data, not a numerical value. 
isoResults = table(maleIndIsoMean,femaleIndIsoMean,maleGroupIsoMean,femaleGroupIsoMean,day1toDay2,day2toDay3,normDay1Mean,normDay2Mean,normDay3Mean);

% Rename column headers
isoResults.Properties.VariableNames = ["Male Individual Iso Means","Female Individual Iso Means",...
    "Male Group Iso Mean","Female Group Iso Mean","Day 1 to Day 2","Day 2 to Day 3",...
    "Normalized Day 1","Normalized Day 2","Normalized Day 3"];

% Exports table to .csv file
writetable(isoResults,'iso_results.csv')