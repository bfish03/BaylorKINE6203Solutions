function [Improvements] = dayComparer(SubjectID,DayA,DayB)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
for i = 1:length(SubjectID)
    if DayB(i) > DayA(i)
      Improvements(i) = SubjectID(i)
      Improvements = nonzeros(Improvements')
    end
end

