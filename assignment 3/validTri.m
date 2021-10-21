function [validity] = validTri(triArray)
%Input a 1x3 array of magnitudes of sides of triangle. Function displays a
%1 for valid triangle or a 0 for a invalid triangle.
triArray = sort(triArray);
triArray(1,1) = x;
triArray(1,2) = y;
triArray(1,3) = z;
if x+y>=z
    validity = '1';
elseif x+y<=z
    validity = '0';
end

