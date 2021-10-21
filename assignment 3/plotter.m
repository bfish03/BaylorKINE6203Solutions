function [graph] = plotter(vecX,vecY)
% This function takes two vectors and plots them with a title, axis labels,
% and a legend.
X = vecX;
Y = vecY;
graph = plot(X,Y);
title('Vector Plot')
xlabel('X')
ylabel('Y')
grid('on')
legend('Vector X','Vector Y')
end

